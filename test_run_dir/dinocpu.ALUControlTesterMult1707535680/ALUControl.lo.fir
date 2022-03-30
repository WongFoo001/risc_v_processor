circuit ALUControl :
  module ALUControl :
    input clock : Clock
    input reset : UInt<1>
    input io_add : UInt<1>
    input io_immediate : UInt<1>
    input io_funct7 : UInt<7>
    input io_funct3 : UInt<3>
    input io_opcode : UInt<7>
    output io_startMult : UInt<1>
    output io_multHold : UInt<1>
    output io_multFinished : UInt<1>
    output io_operation : UInt<4>
  
    reg mCount : UInt<4>, clock with :
      reset => (UInt<1>("h0"), mCount) @[alucontrol.scala 34:23]
    node _T = eq(UInt<1>("h0"), io_funct3) @[Conditional.scala 37:30]
    node _T_1 = eq(io_funct7, UInt<1>("h0")) @[alucontrol.scala 47:41]
    node _T_2 = or(io_immediate, _T_1) @[alucontrol.scala 47:28]
    node _T_3 = eq(io_funct7, UInt<1>("h1")) @[alucontrol.scala 49:32]
    node _T_4 = eq(io_opcode, UInt<6>("h33")) @[alucontrol.scala 49:62]
    node _T_5 = and(_T_3, _T_4) @[alucontrol.scala 49:49]
    node _T_6 = eq(mCount, UInt<1>("h0")) @[alucontrol.scala 54:24]
    node _T_7 = add(mCount, UInt<1>("h1")) @[alucontrol.scala 56:36]
    node _T_8 = tail(_T_7, 1) @[alucontrol.scala 56:36]
    node _T_9 = eq(mCount, UInt<3>("h7")) @[alucontrol.scala 59:29]
    node _T_10 = add(mCount, UInt<1>("h1")) @[alucontrol.scala 66:30]
    node _T_11 = tail(_T_10, 1) @[alucontrol.scala 66:30]
    node _GEN_0 = mux(_T_9, UInt<1>("h0"), UInt<1>("h1")) @[alucontrol.scala 59:38]
    node _GEN_1 = mux(_T_9, UInt<1>("h1"), UInt<1>("h0")) @[alucontrol.scala 59:38]
    node _GEN_2 = mux(_T_9, UInt<1>("h0"), _T_11) @[alucontrol.scala 59:38]
    node _GEN_3 = mux(_T_6, UInt<1>("h1"), UInt<1>("h0")) @[alucontrol.scala 54:33]
    node _GEN_4 = mux(_T_6, _T_8, _GEN_2) @[alucontrol.scala 54:33]
    node _GEN_5 = mux(_T_6, UInt<1>("h1"), _GEN_0) @[alucontrol.scala 54:33]
    node _GEN_6 = mux(_T_6, UInt<1>("h0"), _GEN_1) @[alucontrol.scala 54:33]
    node _GEN_7 = mux(_T_5, UInt<4>("hf"), UInt<2>("h3")) @[alucontrol.scala 49:80]
    node _GEN_8 = mux(_T_5, _GEN_5, UInt<1>("h0")) @[alucontrol.scala 49:80]
    node _GEN_9 = mux(_T_5, _GEN_3, UInt<1>("h0")) @[alucontrol.scala 49:80]
    node _GEN_10 = mux(_T_5, _GEN_4, mCount) @[alucontrol.scala 49:80]
    node _GEN_11 = mux(_T_5, _GEN_6, UInt<1>("h0")) @[alucontrol.scala 49:80]
    node _GEN_12 = mux(_T_2, UInt<2>("h2"), _GEN_7) @[alucontrol.scala 47:59]
    node _GEN_13 = mux(_T_2, UInt<1>("h0"), _GEN_8) @[alucontrol.scala 47:59]
    node _GEN_14 = mux(_T_2, UInt<1>("h0"), _GEN_9) @[alucontrol.scala 47:59]
    node _GEN_15 = mux(_T_2, mCount, _GEN_10) @[alucontrol.scala 47:59]
    node _GEN_16 = mux(_T_2, UInt<1>("h0"), _GEN_11) @[alucontrol.scala 47:59]
    node _T_12 = eq(UInt<1>("h1"), io_funct3) @[Conditional.scala 37:30]
    node _T_13 = eq(UInt<2>("h2"), io_funct3) @[Conditional.scala 37:30]
    node _T_14 = eq(UInt<2>("h3"), io_funct3) @[Conditional.scala 37:30]
    node _T_15 = eq(UInt<3>("h4"), io_funct3) @[Conditional.scala 37:30]
    node _T_16 = eq(UInt<3>("h5"), io_funct3) @[Conditional.scala 37:30]
    node _T_17 = eq(io_funct7, UInt<1>("h0")) @[alucontrol.scala 78:25]
    node _GEN_17 = mux(_T_17, UInt<3>("h7"), UInt<4>("h8")) @[alucontrol.scala 78:43]
    node _T_18 = eq(UInt<3>("h6"), io_funct3) @[Conditional.scala 37:30]
    node _T_19 = eq(UInt<3>("h7"), io_funct3) @[Conditional.scala 37:30]
    node _GEN_18 = mux(_T_19, UInt<1>("h0"), UInt<4>("hf")) @[Conditional.scala 39:67]
    node _GEN_19 = mux(_T_18, UInt<1>("h1"), _GEN_18) @[Conditional.scala 39:67]
    node _GEN_20 = mux(_T_16, _GEN_17, _GEN_19) @[Conditional.scala 39:67]
    node _GEN_21 = mux(_T_15, UInt<4>("h9"), _GEN_20) @[Conditional.scala 39:67]
    node _GEN_22 = mux(_T_14, UInt<3>("h5"), _GEN_21) @[Conditional.scala 39:67]
    node _GEN_23 = mux(_T_13, UInt<3>("h4"), _GEN_22) @[Conditional.scala 39:67]
    node _GEN_24 = mux(_T_12, UInt<3>("h6"), _GEN_23) @[Conditional.scala 39:67]
    node _GEN_25 = mux(_T, _GEN_12, _GEN_24) @[Conditional.scala 40:58]
    node _GEN_26 = mux(_T, _GEN_13, UInt<1>("h0")) @[Conditional.scala 40:58]
    node _GEN_27 = mux(_T, _GEN_14, UInt<1>("h0")) @[Conditional.scala 40:58]
    node _GEN_28 = mux(_T, _GEN_15, mCount) @[Conditional.scala 40:58]
    node _GEN_29 = mux(_T, _GEN_16, UInt<1>("h0")) @[Conditional.scala 40:58]
    node _GEN_30 = mux(io_add, UInt<2>("h2"), _GEN_25) @[alucontrol.scala 42:17]
    node _GEN_31 = mux(io_add, UInt<1>("h0"), _GEN_26) @[alucontrol.scala 42:17]
    node _GEN_32 = mux(io_add, UInt<1>("h0"), _GEN_27) @[alucontrol.scala 42:17]
    node _GEN_33 = mux(io_add, mCount, _GEN_28) @[alucontrol.scala 42:17]
    node _GEN_34 = mux(io_add, UInt<1>("h0"), _GEN_29) @[alucontrol.scala 42:17]
    io_startMult <= _GEN_32 @[alucontrol.scala 38:19 alucontrol.scala 53:24 alucontrol.scala 55:26]
    io_multHold <= _GEN_31 @[alucontrol.scala 40:19 alucontrol.scala 52:24 alucontrol.scala 60:29]
    io_multFinished <= _GEN_34 @[alucontrol.scala 39:19 alucontrol.scala 61:29]
    io_operation <= _GEN_30 @[alucontrol.scala 37:19 alucontrol.scala 43:18 alucontrol.scala 48:24 alucontrol.scala 51:24 alucontrol.scala 70:24 alucontrol.scala 73:36 alucontrol.scala 74:36 alucontrol.scala 75:36 alucontrol.scala 76:36 alucontrol.scala 79:24 alucontrol.scala 81:24 alucontrol.scala 84:36 alucontrol.scala 85:36]
    mCount <= mux(reset, UInt<4>("h0"), _GEN_33) @[alucontrol.scala 56:26 alucontrol.scala 62:29 alucontrol.scala 66:20]
