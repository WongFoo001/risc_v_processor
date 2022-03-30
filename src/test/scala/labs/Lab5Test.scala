// Tests for Lab 3. Feel free to modify and add more tests here.
// If you name your test class something that ends with "TesterLab3" it will
// automatically be run when you use `Lab3 / test` at the sbt prompt.


package dinocpu

import chisel3._

import chisel3.iotesters.{ChiselFlatSpec, Driver, PeekPokeTester}

/**
  * This is a trivial example of how to run this Specification
  * From within sbt use:
  * {{{
  * testOnly dinocpu.RTypeTesterLab5
  * }}}
  * From a terminal shell use:
  * {{{
  * sbt 'testOnly dinocpu.RTypeTesterLab5'
  * }}}
  */
class RTypeTesterLab5 extends CPUFlatSpec {
  behavior of "Pipelined CPU"
  for (test <- InstTests.rtype) {
    it should s"run R-type instruction ${test.binary}${test.extraName}" in {
      CPUTesterDriver(test, "pipelined") should be(true)
    }
  }
}

class ITypeTesterLab5 extends CPUFlatSpec {
  behavior of "Pipelined CPU"
  for (test <- InstTests.itype) {
    it should s"run I-type instruction ${test.binary}${test.extraName}" in {
      CPUTesterDriver(test, "pipelined") should be(true)
    }
  }
}

class UTypeTesterLab5 extends CPUFlatSpec {
  behavior of "Pipelined CPU"
  for (test <- InstTests.utype) {
    it should s"run U-type instruction ${test.binary}${test.extraName}" in {
      CPUTesterDriver(test, "pipelined") should be(true)
    }
  }
}

class MemoryTesterLab5 extends CPUFlatSpec {
  behavior of "Pipelined CPU"
  for (test <- InstTests.memory) {
    it should s"run memory-type instruction ${test.binary}${test.extraName}" in {
      CPUTesterDriver(test, "pipelined") should be(true)
    }
  }
}

class RTypeMultiCycleTesterLab5 extends CPUFlatSpec {
  behavior of "Pipelined CPU"
  for (test <- InstTests.rtypeMultiCycle) {
    it should s"run multi cycle R-type instruction ${test.binary}${test.extraName}" in {
      CPUTesterDriver(test, "pipelined") should be(true)
    }
  }
}

class ITypeMultiCycleTesterLab5 extends CPUFlatSpec {
  behavior of "Pipelined CPU"
  for (test <- InstTests.itypeMultiCycle) {
    it should s"run multi cycle I-type instruction ${test.binary}${test.extraName}" in {
      CPUTesterDriver(test, "pipelined") should be(true)
    }
  }
}

class BranchTesterLab5 extends CPUFlatSpec {
  behavior of "Pipelined CPU"
  for (test <- InstTests.branch) {
    it should s"run branch instruction ${test.binary}${test.extraName}" in {
      CPUTesterDriver(test, "pipelined") should be(true)
    }
  }
}

class JumpTesterLab5 extends CPUFlatSpec {
  behavior of "Pipelined CPU"
  for (test <- InstTests.jump) {
    it should s"run jump instruction ${test.binary}${test.extraName}" in {
      CPUTesterDriver(test, "pipelined") should be(true)
    }
  }
}

class MemoryMultiCycleTesterLab5 extends CPUFlatSpec {
  behavior of "Pipelined CPU"
  for (test <- InstTests.memoryMultiCycle) {
    it should s"run multi cycle memory instruction ${test.binary}${test.extraName}" in {
      CPUTesterDriver(test, "pipelined") should be(true)
    }
  }
}

class ApplicationsTesterLab5 extends CPUFlatSpec {
  behavior of "Pipelined CPU"
  for (test <- InstTests.smallApplications) {
    it should s"run application ${test.binary}${test.extraName}" in {
      CPUTesterDriver(test, "pipelined") should be(true)
    }
  }
}

class ALUControlUnitMultTester(c: ALUControl) extends PeekPokeTester(c) {
  private val ctl = c

  // Copied from Patterson and Waterman Figure 2.3
  val tests = List(
    // add,   imm,      Funct7,       Func3,    Control,   nput
    ( false.B, false.B, "b0000000".U, "b000".U, "b0010".U, "add"),
    ( false.B, false.B, "b0100000".U, "b000".U, "b0011".U, "sub"),
    ( false.B, false.B, "b0000000".U, "b001".U, "b0110".U, "sll"),
    ( false.B, false.B, "b0000000".U, "b010".U, "b0100".U, "slt"),
    ( false.B, false.B, "b0000000".U, "b011".U, "b0101".U, "sltu"),
    ( false.B, false.B, "b0000000".U, "b100".U, "b1001".U, "xor"),
    ( false.B, false.B, "b0000000".U, "b101".U, "b0111".U, "srl"),
    ( false.B, false.B, "b0100000".U, "b101".U, "b1000".U, "sra"),
    ( false.B, false.B, "b0000000".U, "b110".U, "b0001".U, "or"),
    ( false.B, false.B, "b0000000".U, "b111".U, "b0000".U, "and"),
    ( false.B, false.B, "b0000001".U, "b000".U, "b1111".U, "mult")
  )

  for (t <- tests) {
    poke(ctl.io.add, t._1)
    poke(ctl.io.immediate, t._2)
    poke(ctl.io.funct7, t._3)
    poke(ctl.io.funct3, t._4)
    step(1)
    expect(ctl.io.operation, t._5, s"${t._6} wrong")
  }
}

/**
  * This is a trivial example of how to run this Specification
  * From within sbt use:
  * {{{
  * Lab1 / testOnly dinocpu.ALUControlTesterLab1
  * }}}
  * From a terminal shell use:
  * {{{
  * sbt 'testOnly dinocpu.ALUControlTesterLab1'
  * }}}
  */
class ALUControlTesterLab5 extends ChiselFlatSpec {
  "ALUControl" should s"match expectations for each intruction type" in {
    Driver(() => new ALUControl) {
      c => new ALUControlUnitMultTester(c)
    } should be (true)
  }
}

