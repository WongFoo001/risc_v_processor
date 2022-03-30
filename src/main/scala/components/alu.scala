// This file contains the ALU logic and the ALU control logic.

package dinocpu

import chisel3._
import chisel3.util._

/**
 * The ALU
 *
 * Input:  operation, specifies which operation the ALU should perform
 * Input:  inputx, the first input (e.g., reg1)
 * Input:  inputy, the second input (e.g., reg2)
 * Output: the result of the compuation
 */
class ALU extends Module {
  val io = IO(new Bundle {
    val operation    = Input(UInt(4.W))
    val inputx       = Input(UInt(32.W))
    val inputy       = Input(UInt(32.W))
    val multStart    = Input(Bool())    // Control signal to start multiplication, comes from ALU Control
    val multFinished = Input(Bool()) // Control signal to end multiplication, comes from ALU Control

    val result    = Output(UInt(32.W))
  })

  val multUnit = Module(new Booth8Cycle()) // Instantiation of multiplier component
  // Connect multiplier component
  multUnit.io.multiplicand := io.inputx
  multUnit.io.multiplier   := io.inputy
  multUnit.io.start        := io.multStart
  multUnit.io.finished := io.multFinished

  val mstallReg = RegInit(0.U(1.W)) // Reg that holds the stall signal!

  // Default output assignments
  io.result    := 0.U

  switch (io.operation) {
    is ("b0000".U) {
      io.result := io.inputx & io.inputy
    }
    is ("b0001".U) {
      io.result := io.inputx | io.inputy
    }
    is ("b0010".U) {
      io.result := io.inputx + io.inputy
    }
    is ("b0011".U) {
      io.result := io.inputx - io.inputy
    }
    is ("b0100".U) {
      io.result := (io.inputx.asSInt < io.inputy.asSInt).asUInt // signed
    }
    is ("b0101".U) {
      io.result := (io.inputx < io.inputy)
    }
    is ("b0110".U) {
      io.result := io.inputx << io.inputy(4,0)
    }
    is ("b0111".U) {
      io.result := io.inputx >> io.inputy(4,0)
    }
    is ("b1000".U) {
      io.result := (io.inputx.asSInt >> io.inputy(4,0)).asUInt // arithmetic (signed)
    }
    is ("b1001".U) {
      io.result := io.inputx ^ io.inputy
    }
    is ("b1010".U) {
      io.result := ~(io.inputx | io.inputy)
    }
    is ("b1111".U) {
      io.result := multUnit.io.product // Pass product from multiplier to result
    }
  }
}
