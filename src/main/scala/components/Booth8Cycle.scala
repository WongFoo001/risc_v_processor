package dinocpu

import chisel3._
import chisel3.util._

class Booth8Cycle extends Module {
  val io = IO(new Bundle {
    val multiplicand = Input(UInt(16.W))
    val multiplier   = Input(UInt(16.W))
    val start        = Input(Bool())
    val finished     = Input(Bool())
 
    val product   = Output(UInt(32.W))
  })

  // Declare values to be registered
  val accUpper  = RegInit(0.U(16.W)) // Stores accumulator
  val accLower  = RegInit(0.U(16.W)) // Stores accumulator
  val mcd       = RegInit(0.U(16.W)) // Stores Multiplicand
  val mpl       = RegInit(0.U(17.W)) // Stores Multiplier + last bit
  val iter      = RegInit(0.U(5.W))  // iteration counter
 

  // Combinatorial Block  ************************************************ 
  val accCalc   = Wire(UInt(16.W)) // Top 16 bits of accumulator with iteration's operation
  val accShift  = Wire(UInt(32.W)) // Accumulator with 2-bit shift performed
  val operation = Wire(UInt(3.W))  // Last 3-bits of multiplier that determine operation to be performed
  val nextMPL   = Wire(UInt(17.W)) // Multiplier with 2-bit shift performed

  val accumulatorUpper  = Wire(UInt(16.W))
  val calcMultiplicand  = Wire(UInt(16.W))
  val first_upAcc       = Wire(UInt(16.W))
  val first_mcd         = Wire(UInt(16.W))
  val first_op          = Wire(UInt(3.W))

  // Default assignments
  accCalc   := DontCare
  accShift  := DontCare
  operation := DontCare
  nextMPL   := DontCare

  // Assign Initial iteration calculation values -- We know the accumulator is starting from zero!
  // This way we can calculate the first partial product on the first cycle 
  first_upAcc  := 0.U
  first_mcd    := io.multiplicand
  first_op     := Cat(io.multiplier(1,0), 0.U)

  // Calculation Mux
  when (io.start) {
    //printf("  USING ITER 0 OPERANDS...\n")
    operation        := first_op
    accumulatorUpper := first_upAcc
    calcMultiplicand := first_mcd
  }
  .otherwise {
    //printf("  USING NORM OPERANDS...\n")
    operation        := mpl(2,0)
    accumulatorUpper := accUpper
    calcMultiplicand := mcd
  } 

  switch (operation) {
    is(0.U) { // 000 -> Do Nothing
      // Nothing
      accCalc := accumulatorUpper
      //printf("    000: Do Nothing\n")
    }
    is(1.U) { // 001 -> Add Multiplicand
      accCalc := accumulatorUpper + calcMultiplicand
      //printf("    001: Add Multiplicand\n")
      //printf("     --> Adding %d to %d\n", calcMultiplicand, accumulatorUpper)
    }
    is(2.U) { // 010 -> Add Multiplicand
      accCalc := accumulatorUpper + calcMultiplicand
      //printf("    010: Add Multiplicand\n")
      //printf("     --> Adding %d to %d\n", calcMultiplicand, accumulatorUpper)
    }
    is(3.U) { // 011 -> Add 2 * Multiplicand
      accCalc := accumulatorUpper + (calcMultiplicand << 1.U)
      //printf("    011: Add 2 * Multiplicand\n")
      //printf("     --> Adding %d to %d\n", (calcMultiplicand << 1.U), accumulatorUpper)
    }
    is(4.U) { // 100 -> Subtract 2 * Multiplicand
      accCalc := accumulatorUpper - (calcMultiplicand << 1.U)
      //printf("    100: Subtract 2 * Multiplicand\n")
      //printf("     --> Subtracting %d from %d\n", (calcMultiplicand << 1.U), accumulatorUpper)
    }
    is(5.U) { // 101 -> Subtract Multiplicand
      accCalc := accumulatorUpper - calcMultiplicand
      //printf("    101: Subtract Multiplicand\n")
      //printf("     --> Subtracting %d from %d\n", calcMultiplicand, accumulatorUpper)
    }
    is(6.U) { // 110 -> Subtract Multiplicand
      accCalc := accumulatorUpper - calcMultiplicand
      //printf("    110: Subtract Multiplicand\n")
      //printf("     --> Subtracting %d from %d\n", calcMultiplicand, accumulatorUpper)
    }
    is(7.U) { // 111 -> Do Nothing
      // Nothing
      accCalc := accumulatorUpper
      //printf("    111: Do Nothing\n")
    }
  }

  when (io.start) {
    accShift := Cat(accCalc(15), accCalc(15), accCalc, 0.U, 0.U, 0.U, 0.U, 0.U, 0.U, 0.U, 0.U, 0.U, 0.U, 0.U, 0.U, 0.U, 0.U)
  }
  .otherwise {
    accShift := Cat(accCalc(15), accCalc(15), accCalc, accLower(15, 2))
  }

  // Shift Multiplier 
  nextMPL  := mpl >> 2.U
  // END Combinatorial Block  ************************************************ 



  // Processing Registers Block **********************************************
  // Default output assignment
  io.product  := DontCare

  when (io.start) { 
    // Debug prints
    //printf("REGISTERS INITIALIZED  -- %b %b  ||  mcd: %b  mpl: %b\n", accShift(31, 16), accShift(15, 0), io.multiplicand, io.multiplier) // What a wild print statement
    accUpper := accShift(31, 16)
    accLower := accShift(15, 0)
    mcd      := io.multiplicand
    mpl      := Cat(io.multiplier, 0.U) >> 2.U // Append last bit 
  }

  
  .otherwise {
    //printf("Operation Information: \n")
    when (~io.finished) { // Multiplier has iterated for less than 8 times
      // Debug Print Outs
      //printf("  Registered Values:\n")
      //printf("     * mpl: %b\n", mpl)
      //printf("     * AccUpper: %d | AccLower: %d \n", accUpper, accLower)

      mcd      := mcd
      mpl      := nextMPL
      accUpper := accShift(31, 16)
      accLower := accShift(15, 0)
    }

    .otherwise { // Essentially the last iteration of the multiplication! 
      io.product := accShift // Directly assign the product to the output to avoid extra cycle to clock in product!
    }
  }
}