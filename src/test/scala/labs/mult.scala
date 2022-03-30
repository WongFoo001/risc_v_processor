// Tests for Lab 1. Feel free to modify and add more tests here.
// If you name your test class something that ends with "TesterLab1" it will
// automatically be run when you use `Lab1 / test` at the sbt prompt.

package dinocpu

import chisel3._
import chisel3.iotesters.{ChiselFlatSpec, Driver, PeekPokeTester}

class ALUControlUnitTesterMult(c: ALUControl) extends PeekPokeTester(c) { // ALU Control Component level test to make sure it can product correct multiplication control signals
  private val ctl = c

  // Copied from Patterson and Waterman Figure 2.3                        6                       7                   8                    9                       10                       11             12      13
  val tests = List(                                      //  --> startMult/FirstCycle, startMult/OtherCycles, multHold/LastCycle, multHold/OtherCycles, multFinished/LastCycle, multFinished/OtherCycles, type,  opcode
    // add,   imm,      Funct7,       Func3,    Control Oper., ^     6         7         8        9        10      11         12           13
    (  true.B, false.B, "b0000000".U, "b000".U, "b0010".U,         false.B, false.B, false.B, false.B, false.B, false.B, "load/store", "b0000000".U), // NOTE: knowing the proper opcode only matters
    (  true.B, false.B, "b1111111".U, "b111".U, "b0010".U,         false.B, false.B, false.B, false.B, false.B, false.B, "load/store", "b0000000".U), // for correctly performing the mulitiplication
    (  true.B, false.B, "b0000000".U, "b000".U, "b0010".U,         false.B, false.B, false.B, false.B, false.B, false.B, "load/store", "b0000000".U), // operation!
    ( false.B, false.B, "b0000000".U, "b000".U, "b0010".U,         false.B, false.B, false.B, false.B, false.B, false.B, "add"       , "b0000000".U),
    ( false.B, false.B, "b0100000".U, "b000".U, "b0011".U,         false.B, false.B, false.B, false.B, false.B, false.B, "sub"       , "b0000000".U),
    ( false.B, false.B, "b0000000".U, "b001".U, "b0110".U,         false.B, false.B, false.B, false.B, false.B, false.B, "sll"       , "b0000000".U),
    ( false.B, false.B, "b0000000".U, "b010".U, "b0100".U,         false.B, false.B, false.B, false.B, false.B, false.B, "slt"       , "b0000000".U),
    ( false.B, false.B, "b0000000".U, "b011".U, "b0101".U,         false.B, false.B, false.B, false.B, false.B, false.B, "sltu"      , "b0000000".U),
    ( false.B, false.B, "b0000000".U, "b100".U, "b1001".U,         false.B, false.B, false.B, false.B, false.B, false.B, "xor"       , "b0000000".U),
    ( false.B, false.B, "b0000000".U, "b101".U, "b0111".U,         false.B, false.B, false.B, false.B, false.B, false.B, "srl"       , "b0000000".U),
    ( false.B, false.B, "b0100000".U, "b101".U, "b1000".U,         false.B, false.B, false.B, false.B, false.B, false.B, "sra"       , "b0000000".U),
    ( false.B, false.B, "b0000000".U, "b110".U, "b0001".U,         false.B, false.B, false.B, false.B, false.B, false.B, "or"        , "b0000000".U),
    ( false.B, false.B, "b0000000".U, "b111".U, "b0000".U,         false.B, false.B, false.B, false.B, false.B, false.B, "and"       , "b0000000".U),
    ( false.B, true.B,  "b0000000".U, "b000".U, "b0010".U,         false.B, false.B, false.B, false.B, false.B, false.B, "addi"      , "b0000000".U),
    ( false.B, true.B,  "b0000000".U, "b010".U, "b0100".U,         false.B, false.B, false.B, false.B, false.B, false.B, "sltiu"     , "b0000000".U),
    ( false.B, true.B,  "b0000000".U, "b100".U, "b1001".U,         false.B, false.B, false.B, false.B, false.B, false.B, "xori"      , "b0000000".U),
    ( false.B, true.B,  "b0000000".U, "b110".U, "b0001".U,         false.B, false.B, false.B, false.B, false.B, false.B, "ori"       , "b0000000".U),
    ( false.B, true.B,  "b0000000".U, "b111".U, "b0000".U,         false.B, false.B, false.B, false.B, false.B, false.B, "andi"      , "b0000000".U),
    ( false.B, true.B,  "b0000000".U, "b001".U, "b0110".U,         false.B, false.B, false.B, false.B, false.B, false.B, "slli"      , "b0000000".U),
    ( false.B, true.B,  "b0000000".U, "b101".U, "b0111".U,         false.B, false.B, false.B, false.B, false.B, false.B, "srli"      , "b0000000".U),
    ( false.B, true.B,  "b0100000".U, "b101".U, "b1000".U,         false.B, false.B, false.B, false.B, false.B, false.B, "srai"      , "b0000000".U),
    ( false.B, false.B, "b0000001".U, "b000".U, "b1111".U,         true.B,  false.B, false.B, true.B,  true.B,  false.B, "mul"       , "b0110011".U)  // Multiplication extension
  )

  for (t <- tests) {
    poke(ctl.io.add, t._1)
    poke(ctl.io.immediate, t._2)
    poke(ctl.io.funct7, t._3)
    poke(ctl.io.funct3, t._4)
    poke(ctl.io.opcode, t._13)
    // Check Control Signals on first iteration of multiplication
    expect(ctl.io.startMult, t._6, s"startMult/FirstCycle wrong")
    expect(ctl.io.multHold, t._9, s"multHold/OtherCycles wrong")
    expect(ctl.io.multFinished, t._11, s"multFinished/OtherCycles wrong")
    expect(ctl.io.operation, t._5, s"${t._12} wrong")
    step(6)
    // Check Control Signals on middle iterations of multiplication
    expect(ctl.io.startMult, t._7, s"startMult/OtherCycles wrong")
    expect(ctl.io.multHold, t._9, s"multHold/OtherCycles wrong")
    expect(ctl.io.multFinished, t._11, s"multFinished/OtherCycles wrong")
    expect(ctl.io.operation, t._5, s"${t._12} wrong")
    step(1)
    // Check Control Signals on last iteration of multiplication
    expect(ctl.io.startMult, t._7, s"startMult/OtherCycles wrong")
    expect(ctl.io.multHold, t._8, s"multHold/LastCycle wrong")
    expect(ctl.io.multFinished, t._10, s"multFinished/LastCycle wrong")
    expect(ctl.io.operation, t._5, s"${t._12} wrong")

  }
}

// Corresponding ALU Control Component Tester Driver
class ALUControlTesterMult extends ChiselFlatSpec {
  "ALUControl" should s"match expectations for each intruction type" in {
    Driver(() => new ALUControl) {
      c => new ALUControlUnitTesterMult(c)
    } should be (true)
  }
}

class MulEightCycleComponent(c: Booth8Cycle) extends PeekPokeTester(c){
  private val mul = c
    
  // code goes here
  val tests = List(
    // multiplicand,         multiplier,           product,                              name
    (  "b0000000000011101".U, "b0000000000001101".U, "b00000000000000000000000101111001".U, "Test Case 1"), // Test case 1: 29 * 13 = 377
    (  "b0000000010000000".U, "b1111110110001101".U, "b11111111111111101100011010000000".U, "Test Case 2"), // Test case 2: 128 * -627 = -80,256
    (  "b0000000001010011".U, "b0000000011011000".U, "b00000000000000000100011000001000".U, "Test Case 3"), // Test case 3: 83 * 216 = 17,928
    (  "b0000000110010010".U, "b0000000000100100".U, "b00000000000000000011100010001000".U, "Test Case 4"), // Test case 4: 402 * 36 = 14,472
    (  "b1111110011010100".U, "b1111111010111100".U, "b00000000000001000000001110110000".U, "Test Case 5")  // Test case 5: -812 * -324 = 263,088
  )

  for (t <- tests) {
    poke(mul.io.multiplicand, t._1)
    poke(mul.io.multiplier, t._2)
    poke(mul.io.start, true.B)
    poke(mul.io.finished, false.B)
    step(1)

    poke(mul.io.start, false.B)
    step(6)

    poke(mul.io.finished, true.B)
    step(1)


    expect(mul.io.product, t._3, s"${t._4} product wrong")
  }
}
class MulEightCycle(c: PipelinedCPU) extends PeekPokeTester(c) {

  val inst_mem = Map(
    0  -> "b00000000001000000000000010010011".U, // R1 <- 2
    4  -> "b00000000010000000000000100010011".U, // R2 <- 4
    8  -> "b00000010001000001000000110110011".U, // R3 <- R1 * R2 
    12 -> "b00000000001100011010000000100011".U, // Store R3 to expose it to cpu io
    16 -> "b00000000000000000000000000000000".U, 
    20 -> "b00000000000000000000000000000000".U,
  )

  private val cpu = c
  
  for (cycles <- 0 to 12){
    val instruction = inst_mem(peek(cpu.io.imem.address).toInt)
    poke(cpu.io.imem.instruction, instruction)
    step(1)
  }
  expect(cpu.io.dmem.writedata, "b00000000000000000000000000001000".U, s"$cpu.io.dmem.writedata wrong (is not 8)")
}
class MulSingleCycle(c: PipelinedCPU) extends PeekPokeTester(c) {
  private val cpu = c

  poke(cpu.io.imem.instruction, "b00000000001000000000000010010011".U)
  step(1)
  poke(cpu.io.imem.instruction, "b00000000010000000000000100010011".U)
  step(1)
  poke(cpu.io.imem.instruction, "b00000010001000001000000110110011".U)
  step(1)
  poke(cpu.io.imem.instruction, "b00000000001100011010000000100011".U)
  step(1)
  poke(cpu.io.imem.instruction, "b00000000000000000000000000000000".U)
  step(2)
  expect(cpu.io.dmem.writedata, "b00000000000000000000000000001000".U, s"$cpu.io.dmem.writedata wrong (is not 8)")
}

/**
  * This is a trivial example of how to run this Specification
  * From within sbt use:
  * {{{
  * Mult / testOnly dinocpu.ALUControlTesterLab1
  * }}}
  * From a terminal shell use:
  * {{{
  * sbt 'testOnly dinocpu.ALUControlTesterLab1'
  * }}}
  */
class MulEightCycleTesterMult extends ChiselFlatSpec {
  behavior of "Top"
  val conf = new CPUConfig()
  conf.cpuType = "pipelined"
  conf.debug = true // always run with debug print statements
  "MulEightCycle" should s"mult test" in {
    Driver(() => new PipelinedCPU()(conf)) {
      c => new MulEightCycle(c)
    } should be (true)
  }
}

class MulSingleCycleTesterMult extends ChiselFlatSpec {
  behavior of "Top"
  val conf = new CPUConfig()
  conf.cpuType = "pipelined"
  //conf.isMulTest = true
  //conf.memFile = "/home/jesse/chisel/CSE125-S20-MUL/src/test/resources/raw/zero.hex"
  conf.debug = true // always run with debug print statements
  "MulSingleCycle" should s"mult test" in {
    Driver(() => new PipelinedCPU()(conf)) {
      c => new MulSingleCycle(c)
    } should be (true)
  }
}

class MulEightCycleComponentTesterMult extends ChiselFlatSpec {
  "MulEightCycle" should s"match expectations" in {
    Driver(() => new Booth8Cycle) {
      c => new MulEightCycleComponent(c)
    } should be (true)
  }
}

class RTypeTesterMult extends CPUFlatSpec {
  behavior of "Pipelined CPU"
  for (test <- InstTests.rtype) {
    it should s"run R-type instruction ${test.binary}${test.extraName}" in {
      CPUTesterDriver(test, "pipelined") should be(true)
    }
  }
}

class ITypeTesterMult extends CPUFlatSpec {
  behavior of "Pipelined CPU"
  for (test <- InstTests.itype) {
    it should s"run I-type instruction ${test.binary}${test.extraName}" in {
      CPUTesterDriver(test, "pipelined") should be(true)
    }
  }
}

class UTypeTesterMult extends CPUFlatSpec {
  behavior of "Pipelined CPU"
  for (test <- InstTests.utype) {
    it should s"run U-type instruction ${test.binary}${test.extraName}" in {
      CPUTesterDriver(test, "pipelined") should be(true)
    }
  }
}

class MemoryTesterMult extends CPUFlatSpec {
  behavior of "Pipelined CPU"
  for (test <- InstTests.memory) {
    it should s"run memory-type instruction ${test.binary}${test.extraName}" in {
      CPUTesterDriver(test, "pipelined") should be(true)
    }
  }
}

class RTypeMultiCycleTesterMult extends CPUFlatSpec {
  behavior of "Pipelined CPU"
  for (test <- InstTests.rtypeMultiCycle) {
    it should s"run multi cycle R-type instruction ${test.binary}${test.extraName}" in {
      CPUTesterDriver(test, "pipelined") should be(true)
    }
  }
}

class ITypeMultiCycleTesterMult extends CPUFlatSpec {
  behavior of "Pipelined CPU"
  for (test <- InstTests.itypeMultiCycle) {
    it should s"run multi cycle I-type instruction ${test.binary}${test.extraName}" in {
      CPUTesterDriver(test, "pipelined") should be(true)
    }
  }
}

class BranchTesterMult extends CPUFlatSpec {
  behavior of "Pipelined CPU"
  for (test <- InstTests.branch) {
    it should s"run branch instruction ${test.binary}${test.extraName}" in {
      CPUTesterDriver(test, "pipelined") should be(true)
    }
  }
}

class JumpTesterMult extends CPUFlatSpec {
  behavior of "Pipelined CPU"
  for (test <- InstTests.jump) {
    it should s"run jump instruction ${test.binary}${test.extraName}" in {
      CPUTesterDriver(test, "pipelined") should be(true)
    }
  }
}

class MemoryMultiCycleTesterMult extends CPUFlatSpec {
  behavior of "Pipelined CPU"
  for (test <- InstTests.memoryMultiCycle) {
    it should s"run multi cycle memory instruction ${test.binary}${test.extraName}" in {
      CPUTesterDriver(test, "pipelined") should be(true)
    }
  }
}