circuit PipelinedCPU :
  module Control :
    input clock : Clock
    input reset : UInt<1>
    input io_opcode : UInt<7>
    output io_branch : UInt<1>
    output io_memread : UInt<1>
    output io_toreg : UInt<2>
    output io_add : UInt<1>
    output io_memwrite : UInt<1>
    output io_regwrite : UInt<1>
    output io_immediate : UInt<1>
    output io_alusrc1 : UInt<2>
    output io_jump : UInt<2>
  
    node _T = and(io_opcode, UInt<7>("h7f")) @[Lookup.scala 31:38]
    node _T_1 = eq(UInt<6>("h33"), _T) @[Lookup.scala 31:38]
    node _T_2 = and(io_opcode, UInt<7>("h7f")) @[Lookup.scala 31:38]
    node _T_3 = eq(UInt<5>("h13"), _T_2) @[Lookup.scala 31:38]
    node _T_4 = and(io_opcode, UInt<7>("h7f")) @[Lookup.scala 31:38]
    node _T_5 = eq(UInt<2>("h3"), _T_4) @[Lookup.scala 31:38]
    node _T_6 = and(io_opcode, UInt<7>("h7f")) @[Lookup.scala 31:38]
    node _T_7 = eq(UInt<6>("h23"), _T_6) @[Lookup.scala 31:38]
    node _T_8 = and(io_opcode, UInt<7>("h7f")) @[Lookup.scala 31:38]
    node _T_9 = eq(UInt<7>("h63"), _T_8) @[Lookup.scala 31:38]
    node _T_10 = and(io_opcode, UInt<7>("h7f")) @[Lookup.scala 31:38]
    node _T_11 = eq(UInt<6>("h37"), _T_10) @[Lookup.scala 31:38]
    node _T_12 = and(io_opcode, UInt<7>("h7f")) @[Lookup.scala 31:38]
    node _T_13 = eq(UInt<5>("h17"), _T_12) @[Lookup.scala 31:38]
    node _T_14 = and(io_opcode, UInt<7>("h7f")) @[Lookup.scala 31:38]
    node _T_15 = eq(UInt<7>("h6f"), _T_14) @[Lookup.scala 31:38]
    node _T_16 = and(io_opcode, UInt<7>("h7f")) @[Lookup.scala 31:38]
    node _T_17 = eq(UInt<7>("h67"), _T_16) @[Lookup.scala 31:38]
    node _T_18 = mux(_T_17, UInt<1>("h0"), UInt<1>("h0")) @[Lookup.scala 33:37]
    node _T_19 = mux(_T_15, UInt<1>("h0"), _T_18) @[Lookup.scala 33:37]
    node _T_20 = mux(_T_13, UInt<1>("h0"), _T_19) @[Lookup.scala 33:37]
    node _T_21 = mux(_T_11, UInt<1>("h0"), _T_20) @[Lookup.scala 33:37]
    node _T_22 = mux(_T_9, UInt<1>("h1"), _T_21) @[Lookup.scala 33:37]
    node _T_23 = mux(_T_7, UInt<1>("h0"), _T_22) @[Lookup.scala 33:37]
    node _T_24 = mux(_T_5, UInt<1>("h0"), _T_23) @[Lookup.scala 33:37]
    node _T_25 = mux(_T_3, UInt<1>("h0"), _T_24) @[Lookup.scala 33:37]
    node signals_0 = mux(_T_1, UInt<1>("h0"), _T_25) @[Lookup.scala 33:37]
    node _T_26 = mux(_T_17, UInt<1>("h0"), UInt<1>("h0")) @[Lookup.scala 33:37]
    node _T_27 = mux(_T_15, UInt<1>("h0"), _T_26) @[Lookup.scala 33:37]
    node _T_28 = mux(_T_13, UInt<1>("h0"), _T_27) @[Lookup.scala 33:37]
    node _T_29 = mux(_T_11, UInt<1>("h0"), _T_28) @[Lookup.scala 33:37]
    node _T_30 = mux(_T_9, UInt<1>("h0"), _T_29) @[Lookup.scala 33:37]
    node _T_31 = mux(_T_7, UInt<1>("h0"), _T_30) @[Lookup.scala 33:37]
    node _T_32 = mux(_T_5, UInt<1>("h1"), _T_31) @[Lookup.scala 33:37]
    node _T_33 = mux(_T_3, UInt<1>("h0"), _T_32) @[Lookup.scala 33:37]
    node signals_1 = mux(_T_1, UInt<1>("h0"), _T_33) @[Lookup.scala 33:37]
    node _T_34 = mux(_T_17, UInt<2>("h2"), UInt<2>("h3")) @[Lookup.scala 33:37]
    node _T_35 = mux(_T_15, UInt<2>("h2"), _T_34) @[Lookup.scala 33:37]
    node _T_36 = mux(_T_13, UInt<1>("h0"), _T_35) @[Lookup.scala 33:37]
    node _T_37 = mux(_T_11, UInt<1>("h0"), _T_36) @[Lookup.scala 33:37]
    node _T_38 = mux(_T_9, UInt<1>("h0"), _T_37) @[Lookup.scala 33:37]
    node _T_39 = mux(_T_7, UInt<1>("h0"), _T_38) @[Lookup.scala 33:37]
    node _T_40 = mux(_T_5, UInt<1>("h1"), _T_39) @[Lookup.scala 33:37]
    node _T_41 = mux(_T_3, UInt<1>("h0"), _T_40) @[Lookup.scala 33:37]
    node signals_2 = mux(_T_1, UInt<1>("h0"), _T_41) @[Lookup.scala 33:37]
    node _T_42 = mux(_T_17, UInt<1>("h0"), UInt<1>("h0")) @[Lookup.scala 33:37]
    node _T_43 = mux(_T_15, UInt<1>("h0"), _T_42) @[Lookup.scala 33:37]
    node _T_44 = mux(_T_13, UInt<1>("h1"), _T_43) @[Lookup.scala 33:37]
    node _T_45 = mux(_T_11, UInt<1>("h1"), _T_44) @[Lookup.scala 33:37]
    node _T_46 = mux(_T_9, UInt<1>("h0"), _T_45) @[Lookup.scala 33:37]
    node _T_47 = mux(_T_7, UInt<1>("h1"), _T_46) @[Lookup.scala 33:37]
    node _T_48 = mux(_T_5, UInt<1>("h1"), _T_47) @[Lookup.scala 33:37]
    node _T_49 = mux(_T_3, UInt<1>("h0"), _T_48) @[Lookup.scala 33:37]
    node signals_3 = mux(_T_1, UInt<1>("h0"), _T_49) @[Lookup.scala 33:37]
    node _T_50 = mux(_T_17, UInt<1>("h0"), UInt<1>("h0")) @[Lookup.scala 33:37]
    node _T_51 = mux(_T_15, UInt<1>("h0"), _T_50) @[Lookup.scala 33:37]
    node _T_52 = mux(_T_13, UInt<1>("h0"), _T_51) @[Lookup.scala 33:37]
    node _T_53 = mux(_T_11, UInt<1>("h0"), _T_52) @[Lookup.scala 33:37]
    node _T_54 = mux(_T_9, UInt<1>("h0"), _T_53) @[Lookup.scala 33:37]
    node _T_55 = mux(_T_7, UInt<1>("h1"), _T_54) @[Lookup.scala 33:37]
    node _T_56 = mux(_T_5, UInt<1>("h0"), _T_55) @[Lookup.scala 33:37]
    node _T_57 = mux(_T_3, UInt<1>("h0"), _T_56) @[Lookup.scala 33:37]
    node signals_4 = mux(_T_1, UInt<1>("h0"), _T_57) @[Lookup.scala 33:37]
    node _T_58 = mux(_T_17, UInt<1>("h1"), UInt<1>("h0")) @[Lookup.scala 33:37]
    node _T_59 = mux(_T_15, UInt<1>("h0"), _T_58) @[Lookup.scala 33:37]
    node _T_60 = mux(_T_13, UInt<1>("h1"), _T_59) @[Lookup.scala 33:37]
    node _T_61 = mux(_T_11, UInt<1>("h1"), _T_60) @[Lookup.scala 33:37]
    node _T_62 = mux(_T_9, UInt<1>("h0"), _T_61) @[Lookup.scala 33:37]
    node _T_63 = mux(_T_7, UInt<1>("h1"), _T_62) @[Lookup.scala 33:37]
    node _T_64 = mux(_T_5, UInt<1>("h1"), _T_63) @[Lookup.scala 33:37]
    node _T_65 = mux(_T_3, UInt<1>("h1"), _T_64) @[Lookup.scala 33:37]
    node signals_5 = mux(_T_1, UInt<1>("h0"), _T_65) @[Lookup.scala 33:37]
    node _T_66 = mux(_T_17, UInt<1>("h1"), UInt<1>("h0")) @[Lookup.scala 33:37]
    node _T_67 = mux(_T_15, UInt<1>("h1"), _T_66) @[Lookup.scala 33:37]
    node _T_68 = mux(_T_13, UInt<1>("h1"), _T_67) @[Lookup.scala 33:37]
    node _T_69 = mux(_T_11, UInt<1>("h1"), _T_68) @[Lookup.scala 33:37]
    node _T_70 = mux(_T_9, UInt<1>("h0"), _T_69) @[Lookup.scala 33:37]
    node _T_71 = mux(_T_7, UInt<1>("h0"), _T_70) @[Lookup.scala 33:37]
    node _T_72 = mux(_T_5, UInt<1>("h1"), _T_71) @[Lookup.scala 33:37]
    node _T_73 = mux(_T_3, UInt<1>("h1"), _T_72) @[Lookup.scala 33:37]
    node signals_6 = mux(_T_1, UInt<1>("h1"), _T_73) @[Lookup.scala 33:37]
    node _T_74 = mux(_T_17, UInt<1>("h0"), UInt<1>("h0")) @[Lookup.scala 33:37]
    node _T_75 = mux(_T_15, UInt<1>("h1"), _T_74) @[Lookup.scala 33:37]
    node _T_76 = mux(_T_13, UInt<2>("h2"), _T_75) @[Lookup.scala 33:37]
    node _T_77 = mux(_T_11, UInt<1>("h1"), _T_76) @[Lookup.scala 33:37]
    node _T_78 = mux(_T_9, UInt<1>("h0"), _T_77) @[Lookup.scala 33:37]
    node _T_79 = mux(_T_7, UInt<1>("h0"), _T_78) @[Lookup.scala 33:37]
    node _T_80 = mux(_T_5, UInt<1>("h0"), _T_79) @[Lookup.scala 33:37]
    node _T_81 = mux(_T_3, UInt<1>("h0"), _T_80) @[Lookup.scala 33:37]
    node signals_7 = mux(_T_1, UInt<1>("h0"), _T_81) @[Lookup.scala 33:37]
    node _T_82 = mux(_T_17, UInt<2>("h3"), UInt<1>("h0")) @[Lookup.scala 33:37]
    node _T_83 = mux(_T_15, UInt<2>("h2"), _T_82) @[Lookup.scala 33:37]
    node _T_84 = mux(_T_13, UInt<1>("h0"), _T_83) @[Lookup.scala 33:37]
    node _T_85 = mux(_T_11, UInt<1>("h0"), _T_84) @[Lookup.scala 33:37]
    node _T_86 = mux(_T_9, UInt<1>("h0"), _T_85) @[Lookup.scala 33:37]
    node _T_87 = mux(_T_7, UInt<1>("h0"), _T_86) @[Lookup.scala 33:37]
    node _T_88 = mux(_T_5, UInt<1>("h0"), _T_87) @[Lookup.scala 33:37]
    node _T_89 = mux(_T_3, UInt<1>("h0"), _T_88) @[Lookup.scala 33:37]
    node signals_8 = mux(_T_1, UInt<1>("h0"), _T_89) @[Lookup.scala 33:37]
    io_branch <= signals_0 @[control.scala 65:13]
    io_memread <= signals_1 @[control.scala 66:14]
    io_toreg <= signals_2 @[control.scala 67:12]
    io_add <= signals_3 @[control.scala 68:10]
    io_memwrite <= signals_4 @[control.scala 69:15]
    io_regwrite <= signals_6 @[control.scala 71:15]
    io_immediate <= signals_5 @[control.scala 70:16]
    io_alusrc1 <= signals_7 @[control.scala 72:14]
    io_jump <= signals_8 @[control.scala 73:11]

  module BranchControl :
    input clock : Clock
    input reset : UInt<1>
    input io_branch : UInt<1>
    input io_funct3 : UInt<3>
    input io_inputx : UInt<32>
    input io_inputy : UInt<32>
    output io_taken : UInt<1>
  
    node _T = eq(UInt<1>("h0"), io_funct3) @[Conditional.scala 37:30]
    node _T_1 = eq(io_inputx, io_inputy) @[branch-control.scala 33:40]
    node _T_2 = eq(UInt<1>("h1"), io_funct3) @[Conditional.scala 37:30]
    node _T_3 = neq(io_inputx, io_inputy) @[branch-control.scala 34:40]
    node _T_4 = eq(UInt<3>("h4"), io_funct3) @[Conditional.scala 37:30]
    node _T_5 = asSInt(io_inputx) @[branch-control.scala 35:40]
    node _T_6 = asSInt(io_inputy) @[branch-control.scala 35:59]
    node _T_7 = lt(_T_5, _T_6) @[branch-control.scala 35:47]
    node _T_8 = eq(UInt<3>("h5"), io_funct3) @[Conditional.scala 37:30]
    node _T_9 = asSInt(io_inputx) @[branch-control.scala 36:40]
    node _T_10 = asSInt(io_inputy) @[branch-control.scala 36:60]
    node _T_11 = geq(_T_9, _T_10) @[branch-control.scala 36:47]
    node _T_12 = eq(UInt<3>("h6"), io_funct3) @[Conditional.scala 37:30]
    node _T_13 = lt(io_inputx, io_inputy) @[branch-control.scala 37:40]
    node _T_14 = eq(UInt<3>("h7"), io_funct3) @[Conditional.scala 37:30]
    node _T_15 = geq(io_inputx, io_inputy) @[branch-control.scala 38:40]
    node _GEN_0 = validif(_T_14, _T_15) @[Conditional.scala 39:67]
    node _GEN_1 = mux(_T_12, _T_13, _GEN_0) @[Conditional.scala 39:67]
    node _GEN_2 = mux(_T_8, _T_11, _GEN_1) @[Conditional.scala 39:67]
    node _GEN_3 = mux(_T_4, _T_7, _GEN_2) @[Conditional.scala 39:67]
    node _GEN_4 = mux(_T_2, _T_3, _GEN_3) @[Conditional.scala 39:67]
    node _GEN_5 = mux(_T, _T_1, _GEN_4) @[Conditional.scala 40:58]
    node check = _GEN_5 @[branch-control.scala 29:19 branch-control.scala 33:26 branch-control.scala 34:26 branch-control.scala 35:26 branch-control.scala 36:26 branch-control.scala 37:26 branch-control.scala 38:26]
    node _T_16 = and(check, io_branch) @[branch-control.scala 41:21]
    io_taken <= _T_16 @[branch-control.scala 41:12]

  module RegisterFile :
    input clock : Clock
    input reset : UInt<1>
    input io_readreg1 : UInt<5>
    input io_readreg2 : UInt<5>
    input io_writereg : UInt<5>
    input io_writedata : UInt<32>
    input io_wen : UInt<1>
    output io_readdata1 : UInt<32>
    output io_readdata2 : UInt<32>
  
    reg regs_0 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_0) @[register-file.scala 50:21]
    reg regs_1 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_1) @[register-file.scala 50:21]
    reg regs_2 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_2) @[register-file.scala 50:21]
    reg regs_3 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_3) @[register-file.scala 50:21]
    reg regs_4 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_4) @[register-file.scala 50:21]
    reg regs_5 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_5) @[register-file.scala 50:21]
    reg regs_6 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_6) @[register-file.scala 50:21]
    reg regs_7 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_7) @[register-file.scala 50:21]
    reg regs_8 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_8) @[register-file.scala 50:21]
    reg regs_9 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_9) @[register-file.scala 50:21]
    reg regs_10 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_10) @[register-file.scala 50:21]
    reg regs_11 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_11) @[register-file.scala 50:21]
    reg regs_12 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_12) @[register-file.scala 50:21]
    reg regs_13 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_13) @[register-file.scala 50:21]
    reg regs_14 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_14) @[register-file.scala 50:21]
    reg regs_15 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_15) @[register-file.scala 50:21]
    reg regs_16 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_16) @[register-file.scala 50:21]
    reg regs_17 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_17) @[register-file.scala 50:21]
    reg regs_18 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_18) @[register-file.scala 50:21]
    reg regs_19 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_19) @[register-file.scala 50:21]
    reg regs_20 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_20) @[register-file.scala 50:21]
    reg regs_21 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_21) @[register-file.scala 50:21]
    reg regs_22 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_22) @[register-file.scala 50:21]
    reg regs_23 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_23) @[register-file.scala 50:21]
    reg regs_24 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_24) @[register-file.scala 50:21]
    reg regs_25 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_25) @[register-file.scala 50:21]
    reg regs_26 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_26) @[register-file.scala 50:21]
    reg regs_27 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_27) @[register-file.scala 50:21]
    reg regs_28 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_28) @[register-file.scala 50:21]
    reg regs_29 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_29) @[register-file.scala 50:21]
    reg regs_30 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_30) @[register-file.scala 50:21]
    reg regs_31 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_31) @[register-file.scala 50:21]
    node _regs_io_writereg = io_writedata @[register-file.scala 54:23 register-file.scala 54:23]
    node _GEN_0 = mux(eq(UInt<1>("h0"), io_writereg), _regs_io_writereg, regs_0) @[register-file.scala 54:23]
    node _GEN_1 = mux(eq(UInt<1>("h1"), io_writereg), _regs_io_writereg, regs_1) @[register-file.scala 54:23]
    node _GEN_2 = mux(eq(UInt<2>("h2"), io_writereg), _regs_io_writereg, regs_2) @[register-file.scala 54:23]
    node _GEN_3 = mux(eq(UInt<2>("h3"), io_writereg), _regs_io_writereg, regs_3) @[register-file.scala 54:23]
    node _GEN_4 = mux(eq(UInt<3>("h4"), io_writereg), _regs_io_writereg, regs_4) @[register-file.scala 54:23]
    node _GEN_5 = mux(eq(UInt<3>("h5"), io_writereg), _regs_io_writereg, regs_5) @[register-file.scala 54:23]
    node _GEN_6 = mux(eq(UInt<3>("h6"), io_writereg), _regs_io_writereg, regs_6) @[register-file.scala 54:23]
    node _GEN_7 = mux(eq(UInt<3>("h7"), io_writereg), _regs_io_writereg, regs_7) @[register-file.scala 54:23]
    node _GEN_8 = mux(eq(UInt<4>("h8"), io_writereg), _regs_io_writereg, regs_8) @[register-file.scala 54:23]
    node _GEN_9 = mux(eq(UInt<4>("h9"), io_writereg), _regs_io_writereg, regs_9) @[register-file.scala 54:23]
    node _GEN_10 = mux(eq(UInt<4>("ha"), io_writereg), _regs_io_writereg, regs_10) @[register-file.scala 54:23]
    node _GEN_11 = mux(eq(UInt<4>("hb"), io_writereg), _regs_io_writereg, regs_11) @[register-file.scala 54:23]
    node _GEN_12 = mux(eq(UInt<4>("hc"), io_writereg), _regs_io_writereg, regs_12) @[register-file.scala 54:23]
    node _GEN_13 = mux(eq(UInt<4>("hd"), io_writereg), _regs_io_writereg, regs_13) @[register-file.scala 54:23]
    node _GEN_14 = mux(eq(UInt<4>("he"), io_writereg), _regs_io_writereg, regs_14) @[register-file.scala 54:23]
    node _GEN_15 = mux(eq(UInt<4>("hf"), io_writereg), _regs_io_writereg, regs_15) @[register-file.scala 54:23]
    node _GEN_16 = mux(eq(UInt<5>("h10"), io_writereg), _regs_io_writereg, regs_16) @[register-file.scala 54:23]
    node _GEN_17 = mux(eq(UInt<5>("h11"), io_writereg), _regs_io_writereg, regs_17) @[register-file.scala 54:23]
    node _GEN_18 = mux(eq(UInt<5>("h12"), io_writereg), _regs_io_writereg, regs_18) @[register-file.scala 54:23]
    node _GEN_19 = mux(eq(UInt<5>("h13"), io_writereg), _regs_io_writereg, regs_19) @[register-file.scala 54:23]
    node _GEN_20 = mux(eq(UInt<5>("h14"), io_writereg), _regs_io_writereg, regs_20) @[register-file.scala 54:23]
    node _GEN_21 = mux(eq(UInt<5>("h15"), io_writereg), _regs_io_writereg, regs_21) @[register-file.scala 54:23]
    node _GEN_22 = mux(eq(UInt<5>("h16"), io_writereg), _regs_io_writereg, regs_22) @[register-file.scala 54:23]
    node _GEN_23 = mux(eq(UInt<5>("h17"), io_writereg), _regs_io_writereg, regs_23) @[register-file.scala 54:23]
    node _GEN_24 = mux(eq(UInt<5>("h18"), io_writereg), _regs_io_writereg, regs_24) @[register-file.scala 54:23]
    node _GEN_25 = mux(eq(UInt<5>("h19"), io_writereg), _regs_io_writereg, regs_25) @[register-file.scala 54:23]
    node _GEN_26 = mux(eq(UInt<5>("h1a"), io_writereg), _regs_io_writereg, regs_26) @[register-file.scala 54:23]
    node _GEN_27 = mux(eq(UInt<5>("h1b"), io_writereg), _regs_io_writereg, regs_27) @[register-file.scala 54:23]
    node _GEN_28 = mux(eq(UInt<5>("h1c"), io_writereg), _regs_io_writereg, regs_28) @[register-file.scala 54:23]
    node _GEN_29 = mux(eq(UInt<5>("h1d"), io_writereg), _regs_io_writereg, regs_29) @[register-file.scala 54:23]
    node _GEN_30 = mux(eq(UInt<5>("h1e"), io_writereg), _regs_io_writereg, regs_30) @[register-file.scala 54:23]
    node _GEN_31 = mux(eq(UInt<5>("h1f"), io_writereg), _regs_io_writereg, regs_31) @[register-file.scala 54:23]
    node _GEN_32 = mux(io_wen, _GEN_0, regs_0) @[register-file.scala 53:17]
    node _GEN_33 = mux(io_wen, _GEN_1, regs_1) @[register-file.scala 53:17]
    node _GEN_34 = mux(io_wen, _GEN_2, regs_2) @[register-file.scala 53:17]
    node _GEN_35 = mux(io_wen, _GEN_3, regs_3) @[register-file.scala 53:17]
    node _GEN_36 = mux(io_wen, _GEN_4, regs_4) @[register-file.scala 53:17]
    node _GEN_37 = mux(io_wen, _GEN_5, regs_5) @[register-file.scala 53:17]
    node _GEN_38 = mux(io_wen, _GEN_6, regs_6) @[register-file.scala 53:17]
    node _GEN_39 = mux(io_wen, _GEN_7, regs_7) @[register-file.scala 53:17]
    node _GEN_40 = mux(io_wen, _GEN_8, regs_8) @[register-file.scala 53:17]
    node _GEN_41 = mux(io_wen, _GEN_9, regs_9) @[register-file.scala 53:17]
    node _GEN_42 = mux(io_wen, _GEN_10, regs_10) @[register-file.scala 53:17]
    node _GEN_43 = mux(io_wen, _GEN_11, regs_11) @[register-file.scala 53:17]
    node _GEN_44 = mux(io_wen, _GEN_12, regs_12) @[register-file.scala 53:17]
    node _GEN_45 = mux(io_wen, _GEN_13, regs_13) @[register-file.scala 53:17]
    node _GEN_46 = mux(io_wen, _GEN_14, regs_14) @[register-file.scala 53:17]
    node _GEN_47 = mux(io_wen, _GEN_15, regs_15) @[register-file.scala 53:17]
    node _GEN_48 = mux(io_wen, _GEN_16, regs_16) @[register-file.scala 53:17]
    node _GEN_49 = mux(io_wen, _GEN_17, regs_17) @[register-file.scala 53:17]
    node _GEN_50 = mux(io_wen, _GEN_18, regs_18) @[register-file.scala 53:17]
    node _GEN_51 = mux(io_wen, _GEN_19, regs_19) @[register-file.scala 53:17]
    node _GEN_52 = mux(io_wen, _GEN_20, regs_20) @[register-file.scala 53:17]
    node _GEN_53 = mux(io_wen, _GEN_21, regs_21) @[register-file.scala 53:17]
    node _GEN_54 = mux(io_wen, _GEN_22, regs_22) @[register-file.scala 53:17]
    node _GEN_55 = mux(io_wen, _GEN_23, regs_23) @[register-file.scala 53:17]
    node _GEN_56 = mux(io_wen, _GEN_24, regs_24) @[register-file.scala 53:17]
    node _GEN_57 = mux(io_wen, _GEN_25, regs_25) @[register-file.scala 53:17]
    node _GEN_58 = mux(io_wen, _GEN_26, regs_26) @[register-file.scala 53:17]
    node _GEN_59 = mux(io_wen, _GEN_27, regs_27) @[register-file.scala 53:17]
    node _GEN_60 = mux(io_wen, _GEN_28, regs_28) @[register-file.scala 53:17]
    node _GEN_61 = mux(io_wen, _GEN_29, regs_29) @[register-file.scala 53:17]
    node _GEN_62 = mux(io_wen, _GEN_30, regs_30) @[register-file.scala 53:17]
    node _GEN_63 = mux(io_wen, _GEN_31, regs_31) @[register-file.scala 53:17]
    node _GEN_64 = validif(eq(UInt<1>("h0"), io_readreg1), regs_0) @[register-file.scala 59:16]
    node _GEN_65 = mux(eq(UInt<1>("h1"), io_readreg1), regs_1, _GEN_64) @[register-file.scala 59:16]
    node _GEN_66 = mux(eq(UInt<2>("h2"), io_readreg1), regs_2, _GEN_65) @[register-file.scala 59:16]
    node _GEN_67 = mux(eq(UInt<2>("h3"), io_readreg1), regs_3, _GEN_66) @[register-file.scala 59:16]
    node _GEN_68 = mux(eq(UInt<3>("h4"), io_readreg1), regs_4, _GEN_67) @[register-file.scala 59:16]
    node _GEN_69 = mux(eq(UInt<3>("h5"), io_readreg1), regs_5, _GEN_68) @[register-file.scala 59:16]
    node _GEN_70 = mux(eq(UInt<3>("h6"), io_readreg1), regs_6, _GEN_69) @[register-file.scala 59:16]
    node _GEN_71 = mux(eq(UInt<3>("h7"), io_readreg1), regs_7, _GEN_70) @[register-file.scala 59:16]
    node _GEN_72 = mux(eq(UInt<4>("h8"), io_readreg1), regs_8, _GEN_71) @[register-file.scala 59:16]
    node _GEN_73 = mux(eq(UInt<4>("h9"), io_readreg1), regs_9, _GEN_72) @[register-file.scala 59:16]
    node _GEN_74 = mux(eq(UInt<4>("ha"), io_readreg1), regs_10, _GEN_73) @[register-file.scala 59:16]
    node _GEN_75 = mux(eq(UInt<4>("hb"), io_readreg1), regs_11, _GEN_74) @[register-file.scala 59:16]
    node _GEN_76 = mux(eq(UInt<4>("hc"), io_readreg1), regs_12, _GEN_75) @[register-file.scala 59:16]
    node _GEN_77 = mux(eq(UInt<4>("hd"), io_readreg1), regs_13, _GEN_76) @[register-file.scala 59:16]
    node _GEN_78 = mux(eq(UInt<4>("he"), io_readreg1), regs_14, _GEN_77) @[register-file.scala 59:16]
    node _GEN_79 = mux(eq(UInt<4>("hf"), io_readreg1), regs_15, _GEN_78) @[register-file.scala 59:16]
    node _GEN_80 = mux(eq(UInt<5>("h10"), io_readreg1), regs_16, _GEN_79) @[register-file.scala 59:16]
    node _GEN_81 = mux(eq(UInt<5>("h11"), io_readreg1), regs_17, _GEN_80) @[register-file.scala 59:16]
    node _GEN_82 = mux(eq(UInt<5>("h12"), io_readreg1), regs_18, _GEN_81) @[register-file.scala 59:16]
    node _GEN_83 = mux(eq(UInt<5>("h13"), io_readreg1), regs_19, _GEN_82) @[register-file.scala 59:16]
    node _GEN_84 = mux(eq(UInt<5>("h14"), io_readreg1), regs_20, _GEN_83) @[register-file.scala 59:16]
    node _GEN_85 = mux(eq(UInt<5>("h15"), io_readreg1), regs_21, _GEN_84) @[register-file.scala 59:16]
    node _GEN_86 = mux(eq(UInt<5>("h16"), io_readreg1), regs_22, _GEN_85) @[register-file.scala 59:16]
    node _GEN_87 = mux(eq(UInt<5>("h17"), io_readreg1), regs_23, _GEN_86) @[register-file.scala 59:16]
    node _GEN_88 = mux(eq(UInt<5>("h18"), io_readreg1), regs_24, _GEN_87) @[register-file.scala 59:16]
    node _GEN_89 = mux(eq(UInt<5>("h19"), io_readreg1), regs_25, _GEN_88) @[register-file.scala 59:16]
    node _GEN_90 = mux(eq(UInt<5>("h1a"), io_readreg1), regs_26, _GEN_89) @[register-file.scala 59:16]
    node _GEN_91 = mux(eq(UInt<5>("h1b"), io_readreg1), regs_27, _GEN_90) @[register-file.scala 59:16]
    node _GEN_92 = mux(eq(UInt<5>("h1c"), io_readreg1), regs_28, _GEN_91) @[register-file.scala 59:16]
    node _GEN_93 = mux(eq(UInt<5>("h1d"), io_readreg1), regs_29, _GEN_92) @[register-file.scala 59:16]
    node _GEN_94 = mux(eq(UInt<5>("h1e"), io_readreg1), regs_30, _GEN_93) @[register-file.scala 59:16]
    node _GEN_95 = mux(eq(UInt<5>("h1f"), io_readreg1), regs_31, _GEN_94) @[register-file.scala 59:16]
    node _GEN_96 = validif(eq(UInt<1>("h0"), io_readreg2), regs_0) @[register-file.scala 60:16]
    node _GEN_97 = mux(eq(UInt<1>("h1"), io_readreg2), regs_1, _GEN_96) @[register-file.scala 60:16]
    node _GEN_98 = mux(eq(UInt<2>("h2"), io_readreg2), regs_2, _GEN_97) @[register-file.scala 60:16]
    node _GEN_99 = mux(eq(UInt<2>("h3"), io_readreg2), regs_3, _GEN_98) @[register-file.scala 60:16]
    node _GEN_100 = mux(eq(UInt<3>("h4"), io_readreg2), regs_4, _GEN_99) @[register-file.scala 60:16]
    node _GEN_101 = mux(eq(UInt<3>("h5"), io_readreg2), regs_5, _GEN_100) @[register-file.scala 60:16]
    node _GEN_102 = mux(eq(UInt<3>("h6"), io_readreg2), regs_6, _GEN_101) @[register-file.scala 60:16]
    node _GEN_103 = mux(eq(UInt<3>("h7"), io_readreg2), regs_7, _GEN_102) @[register-file.scala 60:16]
    node _GEN_104 = mux(eq(UInt<4>("h8"), io_readreg2), regs_8, _GEN_103) @[register-file.scala 60:16]
    node _GEN_105 = mux(eq(UInt<4>("h9"), io_readreg2), regs_9, _GEN_104) @[register-file.scala 60:16]
    node _GEN_106 = mux(eq(UInt<4>("ha"), io_readreg2), regs_10, _GEN_105) @[register-file.scala 60:16]
    node _GEN_107 = mux(eq(UInt<4>("hb"), io_readreg2), regs_11, _GEN_106) @[register-file.scala 60:16]
    node _GEN_108 = mux(eq(UInt<4>("hc"), io_readreg2), regs_12, _GEN_107) @[register-file.scala 60:16]
    node _GEN_109 = mux(eq(UInt<4>("hd"), io_readreg2), regs_13, _GEN_108) @[register-file.scala 60:16]
    node _GEN_110 = mux(eq(UInt<4>("he"), io_readreg2), regs_14, _GEN_109) @[register-file.scala 60:16]
    node _GEN_111 = mux(eq(UInt<4>("hf"), io_readreg2), regs_15, _GEN_110) @[register-file.scala 60:16]
    node _GEN_112 = mux(eq(UInt<5>("h10"), io_readreg2), regs_16, _GEN_111) @[register-file.scala 60:16]
    node _GEN_113 = mux(eq(UInt<5>("h11"), io_readreg2), regs_17, _GEN_112) @[register-file.scala 60:16]
    node _GEN_114 = mux(eq(UInt<5>("h12"), io_readreg2), regs_18, _GEN_113) @[register-file.scala 60:16]
    node _GEN_115 = mux(eq(UInt<5>("h13"), io_readreg2), regs_19, _GEN_114) @[register-file.scala 60:16]
    node _GEN_116 = mux(eq(UInt<5>("h14"), io_readreg2), regs_20, _GEN_115) @[register-file.scala 60:16]
    node _GEN_117 = mux(eq(UInt<5>("h15"), io_readreg2), regs_21, _GEN_116) @[register-file.scala 60:16]
    node _GEN_118 = mux(eq(UInt<5>("h16"), io_readreg2), regs_22, _GEN_117) @[register-file.scala 60:16]
    node _GEN_119 = mux(eq(UInt<5>("h17"), io_readreg2), regs_23, _GEN_118) @[register-file.scala 60:16]
    node _GEN_120 = mux(eq(UInt<5>("h18"), io_readreg2), regs_24, _GEN_119) @[register-file.scala 60:16]
    node _GEN_121 = mux(eq(UInt<5>("h19"), io_readreg2), regs_25, _GEN_120) @[register-file.scala 60:16]
    node _GEN_122 = mux(eq(UInt<5>("h1a"), io_readreg2), regs_26, _GEN_121) @[register-file.scala 60:16]
    node _GEN_123 = mux(eq(UInt<5>("h1b"), io_readreg2), regs_27, _GEN_122) @[register-file.scala 60:16]
    node _GEN_124 = mux(eq(UInt<5>("h1c"), io_readreg2), regs_28, _GEN_123) @[register-file.scala 60:16]
    node _GEN_125 = mux(eq(UInt<5>("h1d"), io_readreg2), regs_29, _GEN_124) @[register-file.scala 60:16]
    node _GEN_126 = mux(eq(UInt<5>("h1e"), io_readreg2), regs_30, _GEN_125) @[register-file.scala 60:16]
    node _GEN_127 = mux(eq(UInt<5>("h1f"), io_readreg2), regs_31, _GEN_126) @[register-file.scala 60:16]
    node _T_1 = eq(io_readreg1, io_writereg) @[register-file.scala 64:23]
    node _T_2 = and(_T_1, io_wen) @[register-file.scala 64:39]
    node _T_3 = eq(io_readreg2, io_writereg) @[register-file.scala 66:30]
    node _T_4 = and(_T_3, io_wen) @[register-file.scala 66:46]
    node _regs_io_readreg2 = _GEN_127 @[register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16]
    node _GEN_128 = mux(_T_4, io_writedata, _regs_io_readreg2) @[register-file.scala 66:57]
    node _regs_io_readreg1 = _GEN_95 @[register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16]
    node _GEN_129 = mux(_T_2, io_writedata, _regs_io_readreg1) @[register-file.scala 64:50]
    node _GEN_130 = mux(_T_2, _regs_io_readreg2, _GEN_128) @[register-file.scala 64:50]
    node _T__0 = UInt<32>("h0") @[register-file.scala 50:29 register-file.scala 50:29]
    node _T__1 = UInt<32>("h0") @[register-file.scala 50:29 register-file.scala 50:29]
    node _T__2 = UInt<32>("h0") @[register-file.scala 50:29 register-file.scala 50:29]
    node _T__3 = UInt<32>("h0") @[register-file.scala 50:29 register-file.scala 50:29]
    node _T__4 = UInt<32>("h0") @[register-file.scala 50:29 register-file.scala 50:29]
    node _T__5 = UInt<32>("h0") @[register-file.scala 50:29 register-file.scala 50:29]
    node _T__6 = UInt<32>("h0") @[register-file.scala 50:29 register-file.scala 50:29]
    node _T__7 = UInt<32>("h0") @[register-file.scala 50:29 register-file.scala 50:29]
    node _T__8 = UInt<32>("h0") @[register-file.scala 50:29 register-file.scala 50:29]
    node _T__9 = UInt<32>("h0") @[register-file.scala 50:29 register-file.scala 50:29]
    node _T__10 = UInt<32>("h0") @[register-file.scala 50:29 register-file.scala 50:29]
    node _T__11 = UInt<32>("h0") @[register-file.scala 50:29 register-file.scala 50:29]
    node _T__12 = UInt<32>("h0") @[register-file.scala 50:29 register-file.scala 50:29]
    node _T__13 = UInt<32>("h0") @[register-file.scala 50:29 register-file.scala 50:29]
    node _T__14 = UInt<32>("h0") @[register-file.scala 50:29 register-file.scala 50:29]
    node _T__15 = UInt<32>("h0") @[register-file.scala 50:29 register-file.scala 50:29]
    node _T__16 = UInt<32>("h0") @[register-file.scala 50:29 register-file.scala 50:29]
    node _T__17 = UInt<32>("h0") @[register-file.scala 50:29 register-file.scala 50:29]
    node _T__18 = UInt<32>("h0") @[register-file.scala 50:29 register-file.scala 50:29]
    node _T__19 = UInt<32>("h0") @[register-file.scala 50:29 register-file.scala 50:29]
    node _T__20 = UInt<32>("h0") @[register-file.scala 50:29 register-file.scala 50:29]
    node _T__21 = UInt<32>("h0") @[register-file.scala 50:29 register-file.scala 50:29]
    node _T__22 = UInt<32>("h0") @[register-file.scala 50:29 register-file.scala 50:29]
    node _T__23 = UInt<32>("h0") @[register-file.scala 50:29 register-file.scala 50:29]
    node _T__24 = UInt<32>("h0") @[register-file.scala 50:29 register-file.scala 50:29]
    node _T__25 = UInt<32>("h0") @[register-file.scala 50:29 register-file.scala 50:29]
    node _T__26 = UInt<32>("h0") @[register-file.scala 50:29 register-file.scala 50:29]
    node _T__27 = UInt<32>("h0") @[register-file.scala 50:29 register-file.scala 50:29]
    node _T__28 = UInt<32>("h0") @[register-file.scala 50:29 register-file.scala 50:29]
    node _T__29 = UInt<32>("h0") @[register-file.scala 50:29 register-file.scala 50:29]
    node _T__30 = UInt<32>("h0") @[register-file.scala 50:29 register-file.scala 50:29]
    node _T__31 = UInt<32>("h0") @[register-file.scala 50:29 register-file.scala 50:29]
    io_readdata1 <= _GEN_129 @[register-file.scala 59:16 register-file.scala 65:20]
    io_readdata2 <= _GEN_130 @[register-file.scala 60:16 register-file.scala 67:20]
    regs_0 <= mux(reset, _T__0, _GEN_32) @[register-file.scala 54:23]
    regs_1 <= mux(reset, _T__1, _GEN_33) @[register-file.scala 54:23]
    regs_2 <= mux(reset, _T__2, _GEN_34) @[register-file.scala 54:23]
    regs_3 <= mux(reset, _T__3, _GEN_35) @[register-file.scala 54:23]
    regs_4 <= mux(reset, _T__4, _GEN_36) @[register-file.scala 54:23]
    regs_5 <= mux(reset, _T__5, _GEN_37) @[register-file.scala 54:23]
    regs_6 <= mux(reset, _T__6, _GEN_38) @[register-file.scala 54:23]
    regs_7 <= mux(reset, _T__7, _GEN_39) @[register-file.scala 54:23]
    regs_8 <= mux(reset, _T__8, _GEN_40) @[register-file.scala 54:23]
    regs_9 <= mux(reset, _T__9, _GEN_41) @[register-file.scala 54:23]
    regs_10 <= mux(reset, _T__10, _GEN_42) @[register-file.scala 54:23]
    regs_11 <= mux(reset, _T__11, _GEN_43) @[register-file.scala 54:23]
    regs_12 <= mux(reset, _T__12, _GEN_44) @[register-file.scala 54:23]
    regs_13 <= mux(reset, _T__13, _GEN_45) @[register-file.scala 54:23]
    regs_14 <= mux(reset, _T__14, _GEN_46) @[register-file.scala 54:23]
    regs_15 <= mux(reset, _T__15, _GEN_47) @[register-file.scala 54:23]
    regs_16 <= mux(reset, _T__16, _GEN_48) @[register-file.scala 54:23]
    regs_17 <= mux(reset, _T__17, _GEN_49) @[register-file.scala 54:23]
    regs_18 <= mux(reset, _T__18, _GEN_50) @[register-file.scala 54:23]
    regs_19 <= mux(reset, _T__19, _GEN_51) @[register-file.scala 54:23]
    regs_20 <= mux(reset, _T__20, _GEN_52) @[register-file.scala 54:23]
    regs_21 <= mux(reset, _T__21, _GEN_53) @[register-file.scala 54:23]
    regs_22 <= mux(reset, _T__22, _GEN_54) @[register-file.scala 54:23]
    regs_23 <= mux(reset, _T__23, _GEN_55) @[register-file.scala 54:23]
    regs_24 <= mux(reset, _T__24, _GEN_56) @[register-file.scala 54:23]
    regs_25 <= mux(reset, _T__25, _GEN_57) @[register-file.scala 54:23]
    regs_26 <= mux(reset, _T__26, _GEN_58) @[register-file.scala 54:23]
    regs_27 <= mux(reset, _T__27, _GEN_59) @[register-file.scala 54:23]
    regs_28 <= mux(reset, _T__28, _GEN_60) @[register-file.scala 54:23]
    regs_29 <= mux(reset, _T__29, _GEN_61) @[register-file.scala 54:23]
    regs_30 <= mux(reset, _T__30, _GEN_62) @[register-file.scala 54:23]
    regs_31 <= mux(reset, _T__31, _GEN_63) @[register-file.scala 54:23]

  module ALUControl :
    input clock : Clock
    input reset : UInt<1>
    input io_add : UInt<1>
    input io_immediate : UInt<1>
    input io_funct7 : UInt<7>
    input io_funct3 : UInt<3>
    output io_startMult : UInt<1>
    output io_multHold : UInt<1>
    output io_multFinished : UInt<1>
    output io_operation : UInt<4>
  
    reg mCount : UInt<4>, clock with :
      reset => (UInt<1>("h0"), mCount) @[alucontrol.scala 33:23]
    node _T = eq(UInt<1>("h0"), io_funct3) @[Conditional.scala 37:30]
    node _T_1 = eq(io_funct7, UInt<1>("h0")) @[alucontrol.scala 46:41]
    node _T_2 = or(io_immediate, _T_1) @[alucontrol.scala 46:28]
    node _T_3 = eq(io_funct7, UInt<1>("h1")) @[alucontrol.scala 48:32]
    node _T_4 = eq(mCount, UInt<1>("h0")) @[alucontrol.scala 53:24]
    node _T_5 = add(mCount, UInt<1>("h1")) @[alucontrol.scala 55:36]
    node _T_6 = tail(_T_5, 1) @[alucontrol.scala 55:36]
    node _T_7 = eq(mCount, UInt<3>("h7")) @[alucontrol.scala 58:29]
    node _T_8 = add(mCount, UInt<1>("h1")) @[alucontrol.scala 65:30]
    node _T_9 = tail(_T_8, 1) @[alucontrol.scala 65:30]
    node _GEN_0 = mux(_T_7, UInt<1>("h0"), UInt<1>("h1")) @[alucontrol.scala 58:38]
    node _GEN_1 = mux(_T_7, UInt<1>("h1"), UInt<1>("h0")) @[alucontrol.scala 58:38]
    node _GEN_2 = mux(_T_7, UInt<1>("h0"), _T_9) @[alucontrol.scala 58:38]
    node _GEN_3 = mux(_T_4, UInt<1>("h1"), UInt<1>("h0")) @[alucontrol.scala 53:33]
    node _GEN_4 = mux(_T_4, _T_6, _GEN_2) @[alucontrol.scala 53:33]
    node _GEN_5 = mux(_T_4, UInt<1>("h1"), _GEN_0) @[alucontrol.scala 53:33]
    node _GEN_6 = mux(_T_4, UInt<1>("h0"), _GEN_1) @[alucontrol.scala 53:33]
    node _GEN_7 = mux(_T_3, UInt<4>("hf"), UInt<2>("h3")) @[alucontrol.scala 48:50]
    node _GEN_8 = mux(_T_3, _GEN_5, UInt<1>("h0")) @[alucontrol.scala 48:50]
    node _GEN_9 = mux(_T_3, _GEN_3, UInt<1>("h0")) @[alucontrol.scala 48:50]
    node _GEN_10 = mux(_T_3, _GEN_4, mCount) @[alucontrol.scala 48:50]
    node _GEN_11 = mux(_T_3, _GEN_6, UInt<1>("h0")) @[alucontrol.scala 48:50]
    node _GEN_12 = mux(_T_2, UInt<2>("h2"), _GEN_7) @[alucontrol.scala 46:59]
    node _GEN_13 = mux(_T_2, UInt<1>("h0"), _GEN_8) @[alucontrol.scala 46:59]
    node _GEN_14 = mux(_T_2, UInt<1>("h0"), _GEN_9) @[alucontrol.scala 46:59]
    node _GEN_15 = mux(_T_2, mCount, _GEN_10) @[alucontrol.scala 46:59]
    node _GEN_16 = mux(_T_2, UInt<1>("h0"), _GEN_11) @[alucontrol.scala 46:59]
    node _T_10 = eq(UInt<1>("h1"), io_funct3) @[Conditional.scala 37:30]
    node _T_11 = eq(UInt<2>("h2"), io_funct3) @[Conditional.scala 37:30]
    node _T_12 = eq(UInt<2>("h3"), io_funct3) @[Conditional.scala 37:30]
    node _T_13 = eq(UInt<3>("h4"), io_funct3) @[Conditional.scala 37:30]
    node _T_14 = eq(UInt<3>("h5"), io_funct3) @[Conditional.scala 37:30]
    node _T_15 = eq(io_funct7, UInt<1>("h0")) @[alucontrol.scala 77:25]
    node _GEN_17 = mux(_T_15, UInt<3>("h7"), UInt<4>("h8")) @[alucontrol.scala 77:43]
    node _T_16 = eq(UInt<3>("h6"), io_funct3) @[Conditional.scala 37:30]
    node _T_17 = eq(UInt<3>("h7"), io_funct3) @[Conditional.scala 37:30]
    node _GEN_18 = mux(_T_17, UInt<1>("h0"), UInt<4>("hf")) @[Conditional.scala 39:67]
    node _GEN_19 = mux(_T_16, UInt<1>("h1"), _GEN_18) @[Conditional.scala 39:67]
    node _GEN_20 = mux(_T_14, _GEN_17, _GEN_19) @[Conditional.scala 39:67]
    node _GEN_21 = mux(_T_13, UInt<4>("h9"), _GEN_20) @[Conditional.scala 39:67]
    node _GEN_22 = mux(_T_12, UInt<3>("h5"), _GEN_21) @[Conditional.scala 39:67]
    node _GEN_23 = mux(_T_11, UInt<3>("h4"), _GEN_22) @[Conditional.scala 39:67]
    node _GEN_24 = mux(_T_10, UInt<3>("h6"), _GEN_23) @[Conditional.scala 39:67]
    node _GEN_25 = mux(_T, _GEN_12, _GEN_24) @[Conditional.scala 40:58]
    node _GEN_26 = mux(_T, _GEN_13, UInt<1>("h0")) @[Conditional.scala 40:58]
    node _GEN_27 = mux(_T, _GEN_14, UInt<1>("h0")) @[Conditional.scala 40:58]
    node _GEN_28 = mux(_T, _GEN_15, mCount) @[Conditional.scala 40:58]
    node _GEN_29 = mux(_T, _GEN_16, UInt<1>("h0")) @[Conditional.scala 40:58]
    node _GEN_30 = mux(io_add, UInt<2>("h2"), _GEN_25) @[alucontrol.scala 41:17]
    node _GEN_31 = mux(io_add, UInt<1>("h0"), _GEN_26) @[alucontrol.scala 41:17]
    node _GEN_32 = mux(io_add, UInt<1>("h0"), _GEN_27) @[alucontrol.scala 41:17]
    node _GEN_33 = mux(io_add, mCount, _GEN_28) @[alucontrol.scala 41:17]
    node _GEN_34 = mux(io_add, UInt<1>("h0"), _GEN_29) @[alucontrol.scala 41:17]
    io_startMult <= _GEN_32 @[alucontrol.scala 37:19 alucontrol.scala 52:24 alucontrol.scala 54:26]
    io_multHold <= _GEN_31 @[alucontrol.scala 39:19 alucontrol.scala 51:24 alucontrol.scala 59:29]
    io_multFinished <= _GEN_34 @[alucontrol.scala 38:19 alucontrol.scala 60:29]
    io_operation <= _GEN_30 @[alucontrol.scala 36:19 alucontrol.scala 42:18 alucontrol.scala 47:24 alucontrol.scala 50:24 alucontrol.scala 69:24 alucontrol.scala 72:36 alucontrol.scala 73:36 alucontrol.scala 74:36 alucontrol.scala 75:36 alucontrol.scala 78:24 alucontrol.scala 80:24 alucontrol.scala 83:36 alucontrol.scala 84:36]
    mCount <= mux(reset, UInt<4>("h0"), _GEN_33) @[alucontrol.scala 55:26 alucontrol.scala 61:29 alucontrol.scala 65:20]

  module Booth8Cycle :
    input clock : Clock
    input reset : UInt<1>
    input io_multiplicand : UInt<16>
    input io_multiplier : UInt<16>
    input io_start : UInt<1>
    input io_finished : UInt<1>
    output io_product : UInt<32>
  
    reg accUpper : UInt<16>, clock with :
      reset => (UInt<1>("h0"), accUpper) @[Booth8Cycle.scala 17:26]
    reg accLower : UInt<16>, clock with :
      reset => (UInt<1>("h0"), accLower) @[Booth8Cycle.scala 18:26]
    reg mcd : UInt<16>, clock with :
      reset => (UInt<1>("h0"), mcd) @[Booth8Cycle.scala 19:26]
    reg mpl : UInt<17>, clock with :
      reset => (UInt<1>("h0"), mpl) @[Booth8Cycle.scala 20:26]
    reg iter : UInt<5>, clock with :
      reset => (UInt<1>("h0"), iter) @[Booth8Cycle.scala 21:26]
    node _T = bits(io_multiplier, 1, 0) @[Booth8Cycle.scala 46:36]
    node _T_1 = cat(_T, UInt<1>("h0")) @[Cat.scala 29:58]
    node _T_2 = asUInt(reset) @[Booth8Cycle.scala 50:11]
    node _T_3 = eq(_T_2, UInt<1>("h0")) @[Booth8Cycle.scala 50:11]
    node _T_4 = asUInt(reset) @[Booth8Cycle.scala 56:11]
    node _T_5 = eq(_T_4, UInt<1>("h0")) @[Booth8Cycle.scala 56:11]
    node _T_6 = bits(mpl, 2, 0) @[Booth8Cycle.scala 57:28]
    node first_op = _T_1 @[Booth8Cycle.scala 34:31 Booth8Cycle.scala 46:16]
    node _GEN_0 = mux(io_start, first_op, _T_6) @[Booth8Cycle.scala 49:19]
    node first_upAcc = pad(UInt<1>("h0"), 16) @[Booth8Cycle.scala 32:31 Booth8Cycle.scala 44:16]
    node _GEN_1 = mux(io_start, first_upAcc, accUpper) @[Booth8Cycle.scala 49:19]
    node first_mcd = io_multiplicand @[Booth8Cycle.scala 33:31 Booth8Cycle.scala 45:16]
    node _GEN_2 = mux(io_start, first_mcd, mcd) @[Booth8Cycle.scala 49:19]
    node operation = _GEN_0 @[Booth8Cycle.scala 27:23 Booth8Cycle.scala 51:22 Booth8Cycle.scala 57:22]
    node _T_7 = eq(UInt<1>("h0"), operation) @[Conditional.scala 37:30]
    node _T_8 = asUInt(reset) @[Booth8Cycle.scala 66:13]
    node _T_9 = eq(_T_8, UInt<1>("h0")) @[Booth8Cycle.scala 66:13]
    node _T_10 = eq(UInt<1>("h1"), operation) @[Conditional.scala 37:30]
    node accumulatorUpper = _GEN_1 @[Booth8Cycle.scala 30:31 Booth8Cycle.scala 52:22 Booth8Cycle.scala 58:22]
    node calcMultiplicand = _GEN_2 @[Booth8Cycle.scala 31:31 Booth8Cycle.scala 53:22 Booth8Cycle.scala 59:22]
    node _T_11 = add(accumulatorUpper, calcMultiplicand) @[Booth8Cycle.scala 69:35]
    node _T_12 = tail(_T_11, 1) @[Booth8Cycle.scala 69:35]
    node _T_13 = asUInt(reset) @[Booth8Cycle.scala 70:13]
    node _T_14 = eq(_T_13, UInt<1>("h0")) @[Booth8Cycle.scala 70:13]
    node _T_15 = asUInt(reset) @[Booth8Cycle.scala 71:13]
    node _T_16 = eq(_T_15, UInt<1>("h0")) @[Booth8Cycle.scala 71:13]
    node _T_17 = eq(UInt<2>("h2"), operation) @[Conditional.scala 37:30]
    node _T_18 = add(accumulatorUpper, calcMultiplicand) @[Booth8Cycle.scala 74:35]
    node _T_19 = tail(_T_18, 1) @[Booth8Cycle.scala 74:35]
    node _T_20 = asUInt(reset) @[Booth8Cycle.scala 75:13]
    node _T_21 = eq(_T_20, UInt<1>("h0")) @[Booth8Cycle.scala 75:13]
    node _T_22 = asUInt(reset) @[Booth8Cycle.scala 76:13]
    node _T_23 = eq(_T_22, UInt<1>("h0")) @[Booth8Cycle.scala 76:13]
    node _T_24 = eq(UInt<2>("h3"), operation) @[Conditional.scala 37:30]
    node _T_25 = dshl(calcMultiplicand, UInt<1>("h1")) @[Booth8Cycle.scala 79:55]
    node _T_26 = add(accumulatorUpper, _T_25) @[Booth8Cycle.scala 79:35]
    node _T_27 = tail(_T_26, 1) @[Booth8Cycle.scala 79:35]
    node _T_28 = asUInt(reset) @[Booth8Cycle.scala 80:13]
    node _T_29 = eq(_T_28, UInt<1>("h0")) @[Booth8Cycle.scala 80:13]
    node _T_30 = dshl(calcMultiplicand, UInt<1>("h1")) @[Booth8Cycle.scala 81:62]
    node _T_31 = asUInt(reset) @[Booth8Cycle.scala 81:13]
    node _T_32 = eq(_T_31, UInt<1>("h0")) @[Booth8Cycle.scala 81:13]
    node _T_33 = eq(UInt<3>("h4"), operation) @[Conditional.scala 37:30]
    node _T_34 = dshl(calcMultiplicand, UInt<1>("h1")) @[Booth8Cycle.scala 84:55]
    node _T_35 = sub(accumulatorUpper, _T_34) @[Booth8Cycle.scala 84:35]
    node _T_36 = tail(_T_35, 1) @[Booth8Cycle.scala 84:35]
    node _T_37 = asUInt(reset) @[Booth8Cycle.scala 85:13]
    node _T_38 = eq(_T_37, UInt<1>("h0")) @[Booth8Cycle.scala 85:13]
    node _T_39 = dshl(calcMultiplicand, UInt<1>("h1")) @[Booth8Cycle.scala 86:69]
    node _T_40 = asUInt(reset) @[Booth8Cycle.scala 86:13]
    node _T_41 = eq(_T_40, UInt<1>("h0")) @[Booth8Cycle.scala 86:13]
    node _T_42 = eq(UInt<3>("h5"), operation) @[Conditional.scala 37:30]
    node _T_43 = sub(accumulatorUpper, calcMultiplicand) @[Booth8Cycle.scala 89:35]
    node _T_44 = tail(_T_43, 1) @[Booth8Cycle.scala 89:35]
    node _T_45 = asUInt(reset) @[Booth8Cycle.scala 90:13]
    node _T_46 = eq(_T_45, UInt<1>("h0")) @[Booth8Cycle.scala 90:13]
    node _T_47 = asUInt(reset) @[Booth8Cycle.scala 91:13]
    node _T_48 = eq(_T_47, UInt<1>("h0")) @[Booth8Cycle.scala 91:13]
    node _T_49 = eq(UInt<3>("h6"), operation) @[Conditional.scala 37:30]
    node _T_50 = sub(accumulatorUpper, calcMultiplicand) @[Booth8Cycle.scala 94:35]
    node _T_51 = tail(_T_50, 1) @[Booth8Cycle.scala 94:35]
    node _T_52 = asUInt(reset) @[Booth8Cycle.scala 95:13]
    node _T_53 = eq(_T_52, UInt<1>("h0")) @[Booth8Cycle.scala 95:13]
    node _T_54 = asUInt(reset) @[Booth8Cycle.scala 96:13]
    node _T_55 = eq(_T_54, UInt<1>("h0")) @[Booth8Cycle.scala 96:13]
    node _T_56 = eq(UInt<3>("h7"), operation) @[Conditional.scala 37:30]
    node _T_57 = asUInt(reset) @[Booth8Cycle.scala 101:13]
    node _T_58 = eq(_T_57, UInt<1>("h0")) @[Booth8Cycle.scala 101:13]
    node _GEN_3 = validif(_T_56, accumulatorUpper) @[Conditional.scala 39:67]
    node _GEN_4 = mux(_T_49, _T_51, _GEN_3) @[Conditional.scala 39:67]
    node _GEN_5 = mux(_T_42, _T_44, _GEN_4) @[Conditional.scala 39:67]
    node _GEN_6 = mux(_T_33, _T_36, _GEN_5) @[Conditional.scala 39:67]
    node _GEN_7 = mux(_T_24, _T_27, _GEN_6) @[Conditional.scala 39:67]
    node _GEN_8 = mux(_T_17, _T_19, _GEN_7) @[Conditional.scala 39:67]
    node _GEN_9 = mux(_T_10, _T_12, _GEN_8) @[Conditional.scala 39:67]
    node _GEN_10 = mux(_T_7, accumulatorUpper, _GEN_9) @[Conditional.scala 40:58]
    node accCalc = bits(_GEN_10, 15, 0) @[Booth8Cycle.scala 25:23 Booth8Cycle.scala 65:15 Booth8Cycle.scala 69:15 Booth8Cycle.scala 74:15 Booth8Cycle.scala 79:15 Booth8Cycle.scala 84:15 Booth8Cycle.scala 89:15 Booth8Cycle.scala 94:15 Booth8Cycle.scala 100:15]
    node _T_59 = bits(accCalc, 15, 15) @[Booth8Cycle.scala 106:28]
    node _T_60 = bits(accCalc, 15, 15) @[Booth8Cycle.scala 106:41]
    node _T_61 = cat(UInt<1>("h0"), UInt<1>("h0")) @[Cat.scala 29:58]
    node _T_62 = cat(UInt<1>("h0"), UInt<1>("h0")) @[Cat.scala 29:58]
    node _T_63 = cat(_T_62, _T_61) @[Cat.scala 29:58]
    node _T_64 = cat(UInt<1>("h0"), UInt<1>("h0")) @[Cat.scala 29:58]
    node _T_65 = cat(UInt<1>("h0"), UInt<1>("h0")) @[Cat.scala 29:58]
    node _T_66 = cat(_T_65, _T_64) @[Cat.scala 29:58]
    node _T_67 = cat(_T_66, _T_63) @[Cat.scala 29:58]
    node _T_68 = cat(UInt<1>("h0"), UInt<1>("h0")) @[Cat.scala 29:58]
    node _T_69 = cat(UInt<1>("h0"), UInt<1>("h0")) @[Cat.scala 29:58]
    node _T_70 = cat(_T_69, _T_68) @[Cat.scala 29:58]
    node _T_71 = cat(UInt<1>("h0"), UInt<1>("h0")) @[Cat.scala 29:58]
    node _T_72 = cat(_T_59, _T_60) @[Cat.scala 29:58]
    node _T_73 = cat(_T_72, accCalc) @[Cat.scala 29:58]
    node _T_74 = cat(_T_73, _T_71) @[Cat.scala 29:58]
    node _T_75 = cat(_T_74, _T_70) @[Cat.scala 29:58]
    node _T_76 = cat(_T_75, _T_67) @[Cat.scala 29:58]
    node _T_77 = bits(accCalc, 15, 15) @[Booth8Cycle.scala 109:28]
    node _T_78 = bits(accCalc, 15, 15) @[Booth8Cycle.scala 109:41]
    node _T_79 = bits(accLower, 15, 2) @[Booth8Cycle.scala 109:64]
    node _T_80 = cat(accCalc, _T_79) @[Cat.scala 29:58]
    node _T_81 = cat(_T_77, _T_78) @[Cat.scala 29:58]
    node _T_82 = cat(_T_81, _T_80) @[Cat.scala 29:58]
    node _GEN_11 = mux(io_start, _T_76, _T_82) @[Booth8Cycle.scala 105:19]
    node _T_83 = dshr(mpl, UInt<2>("h2")) @[Booth8Cycle.scala 113:19]
    node accShift = _GEN_11 @[Booth8Cycle.scala 26:23 Booth8Cycle.scala 106:14 Booth8Cycle.scala 109:14]
    node _T_84 = bits(accShift, 31, 16) @[Booth8Cycle.scala 123:79]
    node _T_85 = bits(accShift, 15, 0) @[Booth8Cycle.scala 123:97]
    node _T_86 = asUInt(reset) @[Booth8Cycle.scala 123:11]
    node _T_87 = eq(_T_86, UInt<1>("h0")) @[Booth8Cycle.scala 123:11]
    node _T_88 = bits(accShift, 31, 16) @[Booth8Cycle.scala 124:25]
    node _T_89 = bits(accShift, 15, 0) @[Booth8Cycle.scala 125:25]
    node _T_90 = cat(io_multiplier, UInt<1>("h0")) @[Cat.scala 29:58]
    node _T_91 = dshr(_T_90, UInt<2>("h2")) @[Booth8Cycle.scala 127:41]
    node _T_92 = asUInt(reset) @[Booth8Cycle.scala 132:11]
    node _T_93 = eq(_T_92, UInt<1>("h0")) @[Booth8Cycle.scala 132:11]
    node _T_94 = not(io_finished) @[Booth8Cycle.scala 133:11]
    node _T_95 = asUInt(reset) @[Booth8Cycle.scala 135:13]
    node _T_96 = eq(_T_95, UInt<1>("h0")) @[Booth8Cycle.scala 135:13]
    node _T_97 = asUInt(reset) @[Booth8Cycle.scala 136:13]
    node _T_98 = eq(_T_97, UInt<1>("h0")) @[Booth8Cycle.scala 136:13]
    node _T_99 = asUInt(reset) @[Booth8Cycle.scala 137:13]
    node _T_100 = eq(_T_99, UInt<1>("h0")) @[Booth8Cycle.scala 137:13]
    node _T_101 = bits(accShift, 31, 16) @[Booth8Cycle.scala 141:27]
    node _T_102 = bits(accShift, 15, 0) @[Booth8Cycle.scala 142:27]
    node _GEN_12 = mux(_T_94, mcd, mcd) @[Booth8Cycle.scala 133:25]
    node nextMPL = _T_83 @[Booth8Cycle.scala 28:23 Booth8Cycle.scala 113:12]
    node _GEN_13 = mux(_T_94, nextMPL, mpl) @[Booth8Cycle.scala 133:25]
    node _GEN_14 = mux(_T_94, _T_101, accUpper) @[Booth8Cycle.scala 133:25]
    node _GEN_15 = mux(_T_94, _T_102, accLower) @[Booth8Cycle.scala 133:25]
    node _GEN_16 = validif(eq(_T_94, UInt<1>("h0")), accShift) @[Booth8Cycle.scala 133:25]
    node _GEN_17 = mux(io_start, _T_88, _GEN_14) @[Booth8Cycle.scala 122:19]
    node _GEN_18 = mux(io_start, _T_89, _GEN_15) @[Booth8Cycle.scala 122:19]
    node _GEN_19 = mux(io_start, io_multiplicand, _GEN_12) @[Booth8Cycle.scala 122:19]
    node _GEN_20 = mux(io_start, _T_91, _GEN_13) @[Booth8Cycle.scala 122:19]
    node _GEN_21 = validif(eq(io_start, UInt<1>("h0")), _GEN_16) @[Booth8Cycle.scala 122:19]
    io_product <= _GEN_21 @[Booth8Cycle.scala 146:18]
    accUpper <= mux(reset, UInt<16>("h0"), _GEN_17) @[Booth8Cycle.scala 124:14 Booth8Cycle.scala 141:16]
    accLower <= mux(reset, UInt<16>("h0"), _GEN_18) @[Booth8Cycle.scala 125:14 Booth8Cycle.scala 142:16]
    mcd <= mux(reset, UInt<16>("h0"), _GEN_19) @[Booth8Cycle.scala 126:14 Booth8Cycle.scala 139:16]
    mpl <= mux(reset, UInt<17>("h0"), _GEN_20) @[Booth8Cycle.scala 127:14 Booth8Cycle.scala 140:16]
    iter <= mux(reset, UInt<5>("h0"), iter)
    printf(clock, and(and(and(UInt<1>("h1"), io_start), _T_3), UInt<1>("h1")), "  USING ITER 0 OPERANDS...\n") @[Booth8Cycle.scala 50:11]
    printf(clock, and(and(and(UInt<1>("h1"), eq(io_start, UInt<1>("h0"))), _T_5), UInt<1>("h1")), "  USING NORM OPERANDS...\n") @[Booth8Cycle.scala 56:11]
    printf(clock, and(and(and(UInt<1>("h1"), _T_7), _T_9), UInt<1>("h1")), "    000: Do Nothing\n") @[Booth8Cycle.scala 66:13]
    printf(clock, and(and(and(and(UInt<1>("h1"), eq(_T_7, UInt<1>("h0"))), _T_10), _T_14), UInt<1>("h1")), "    001: Add Multiplicand\n") @[Booth8Cycle.scala 70:13]
    printf(clock, and(and(and(and(UInt<1>("h1"), eq(_T_7, UInt<1>("h0"))), _T_10), _T_16), UInt<1>("h1")), "     --> Adding %d to %d\n", calcMultiplicand, accumulatorUpper) @[Booth8Cycle.scala 71:13]
    printf(clock, and(and(and(and(and(UInt<1>("h1"), eq(_T_7, UInt<1>("h0"))), eq(_T_10, UInt<1>("h0"))), _T_17), _T_21), UInt<1>("h1")), "    010: Add Multiplicand\n") @[Booth8Cycle.scala 75:13]
    printf(clock, and(and(and(and(and(UInt<1>("h1"), eq(_T_7, UInt<1>("h0"))), eq(_T_10, UInt<1>("h0"))), _T_17), _T_23), UInt<1>("h1")), "     --> Adding %d to %d\n", calcMultiplicand, accumulatorUpper) @[Booth8Cycle.scala 76:13]
    printf(clock, and(and(and(and(and(and(UInt<1>("h1"), eq(_T_7, UInt<1>("h0"))), eq(_T_10, UInt<1>("h0"))), eq(_T_17, UInt<1>("h0"))), _T_24), _T_29), UInt<1>("h1")), "    011: Add 2 * Multiplicand\n") @[Booth8Cycle.scala 80:13]
    printf(clock, and(and(and(and(and(and(UInt<1>("h1"), eq(_T_7, UInt<1>("h0"))), eq(_T_10, UInt<1>("h0"))), eq(_T_17, UInt<1>("h0"))), _T_24), _T_32), UInt<1>("h1")), "     --> Adding %d to %d\n", _T_30, accumulatorUpper) @[Booth8Cycle.scala 81:13]
    printf(clock, and(and(and(and(and(and(and(UInt<1>("h1"), eq(_T_7, UInt<1>("h0"))), eq(_T_10, UInt<1>("h0"))), eq(_T_17, UInt<1>("h0"))), eq(_T_24, UInt<1>("h0"))), _T_33), _T_38), UInt<1>("h1")), "    100: Subtract 2 * Multiplicand\n") @[Booth8Cycle.scala 85:13]
    printf(clock, and(and(and(and(and(and(and(UInt<1>("h1"), eq(_T_7, UInt<1>("h0"))), eq(_T_10, UInt<1>("h0"))), eq(_T_17, UInt<1>("h0"))), eq(_T_24, UInt<1>("h0"))), _T_33), _T_41), UInt<1>("h1")), "     --> Subtracting %d from %d\n", _T_39, accumulatorUpper) @[Booth8Cycle.scala 86:13]
    printf(clock, and(and(and(and(and(and(and(and(UInt<1>("h1"), eq(_T_7, UInt<1>("h0"))), eq(_T_10, UInt<1>("h0"))), eq(_T_17, UInt<1>("h0"))), eq(_T_24, UInt<1>("h0"))), eq(_T_33, UInt<1>("h0"))), _T_42), _T_46), UInt<1>("h1")), "    101: Subtract Multiplicand\n") @[Booth8Cycle.scala 90:13]
    printf(clock, and(and(and(and(and(and(and(and(UInt<1>("h1"), eq(_T_7, UInt<1>("h0"))), eq(_T_10, UInt<1>("h0"))), eq(_T_17, UInt<1>("h0"))), eq(_T_24, UInt<1>("h0"))), eq(_T_33, UInt<1>("h0"))), _T_42), _T_48), UInt<1>("h1")), "     --> Subtracting %d from %d\n", calcMultiplicand, accumulatorUpper) @[Booth8Cycle.scala 91:13]
    printf(clock, and(and(and(and(and(and(and(and(and(UInt<1>("h1"), eq(_T_7, UInt<1>("h0"))), eq(_T_10, UInt<1>("h0"))), eq(_T_17, UInt<1>("h0"))), eq(_T_24, UInt<1>("h0"))), eq(_T_33, UInt<1>("h0"))), eq(_T_42, UInt<1>("h0"))), _T_49), _T_53), UInt<1>("h1")), "    110: Subtract Multiplicand\n") @[Booth8Cycle.scala 95:13]
    printf(clock, and(and(and(and(and(and(and(and(and(UInt<1>("h1"), eq(_T_7, UInt<1>("h0"))), eq(_T_10, UInt<1>("h0"))), eq(_T_17, UInt<1>("h0"))), eq(_T_24, UInt<1>("h0"))), eq(_T_33, UInt<1>("h0"))), eq(_T_42, UInt<1>("h0"))), _T_49), _T_55), UInt<1>("h1")), "     --> Subtracting %d from %d\n", calcMultiplicand, accumulatorUpper) @[Booth8Cycle.scala 96:13]
    printf(clock, and(and(and(and(and(and(and(and(and(and(UInt<1>("h1"), eq(_T_7, UInt<1>("h0"))), eq(_T_10, UInt<1>("h0"))), eq(_T_17, UInt<1>("h0"))), eq(_T_24, UInt<1>("h0"))), eq(_T_33, UInt<1>("h0"))), eq(_T_42, UInt<1>("h0"))), eq(_T_49, UInt<1>("h0"))), _T_56), _T_58), UInt<1>("h1")), "    111: Do Nothing\n") @[Booth8Cycle.scala 101:13]
    printf(clock, and(and(and(UInt<1>("h1"), io_start), _T_87), UInt<1>("h1")), "REGISTERS INITIALIZED  -- %b %b  ||  mcd: %b  mpl: %b\n", _T_84, _T_85, io_multiplicand, io_multiplier) @[Booth8Cycle.scala 123:11]
    printf(clock, and(and(and(UInt<1>("h1"), eq(io_start, UInt<1>("h0"))), _T_93), UInt<1>("h1")), "Operation Information: \n") @[Booth8Cycle.scala 132:11]
    printf(clock, and(and(and(and(UInt<1>("h1"), eq(io_start, UInt<1>("h0"))), _T_94), _T_96), UInt<1>("h1")), "  Registered Values:\n") @[Booth8Cycle.scala 135:13]
    printf(clock, and(and(and(and(UInt<1>("h1"), eq(io_start, UInt<1>("h0"))), _T_94), _T_98), UInt<1>("h1")), "     * mpl: %b\n", mpl) @[Booth8Cycle.scala 136:13]
    printf(clock, and(and(and(and(UInt<1>("h1"), eq(io_start, UInt<1>("h0"))), _T_94), _T_100), UInt<1>("h1")), "     * AccUpper: %d | AccLower: %d \n", accUpper, accLower) @[Booth8Cycle.scala 137:13]

  module ALU :
    input clock : Clock
    input reset : UInt<1>
    input io_operation : UInt<4>
    input io_inputx : UInt<32>
    input io_inputy : UInt<32>
    input io_multStart : UInt<1>
    input io_multFinished : UInt<1>
    output io_result : UInt<32>
  
    inst multUnit of Booth8Cycle @[alu.scala 27:24]
    reg mstallReg : UInt<1>, clock with :
      reset => (UInt<1>("h0"), mstallReg) @[alu.scala 34:26]
    node _T = eq(UInt<1>("h0"), io_operation) @[Conditional.scala 37:30]
    node _T_1 = and(io_inputx, io_inputy) @[alu.scala 41:30]
    node _T_2 = eq(UInt<1>("h1"), io_operation) @[Conditional.scala 37:30]
    node _T_3 = or(io_inputx, io_inputy) @[alu.scala 44:30]
    node _T_4 = eq(UInt<2>("h2"), io_operation) @[Conditional.scala 37:30]
    node _T_5 = add(io_inputx, io_inputy) @[alu.scala 47:30]
    node _T_6 = tail(_T_5, 1) @[alu.scala 47:30]
    node _T_7 = eq(UInt<2>("h3"), io_operation) @[Conditional.scala 37:30]
    node _T_8 = sub(io_inputx, io_inputy) @[alu.scala 50:30]
    node _T_9 = tail(_T_8, 1) @[alu.scala 50:30]
    node _T_10 = eq(UInt<3>("h4"), io_operation) @[Conditional.scala 37:30]
    node _T_11 = asSInt(io_inputx) @[alu.scala 53:31]
    node _T_12 = asSInt(io_inputy) @[alu.scala 53:50]
    node _T_13 = lt(_T_11, _T_12) @[alu.scala 53:38]
    node _T_14 = eq(UInt<3>("h5"), io_operation) @[Conditional.scala 37:30]
    node _T_15 = lt(io_inputx, io_inputy) @[alu.scala 56:31]
    node _T_16 = eq(UInt<3>("h6"), io_operation) @[Conditional.scala 37:30]
    node _T_17 = bits(io_inputy, 4, 0) @[alu.scala 59:42]
    node _T_18 = dshl(io_inputx, _T_17) @[alu.scala 59:30]
    node _T_19 = eq(UInt<3>("h7"), io_operation) @[Conditional.scala 37:30]
    node _T_20 = bits(io_inputy, 4, 0) @[alu.scala 62:42]
    node _T_21 = dshr(io_inputx, _T_20) @[alu.scala 62:30]
    node _T_22 = eq(UInt<4>("h8"), io_operation) @[Conditional.scala 37:30]
    node _T_23 = asSInt(io_inputx) @[alu.scala 65:31]
    node _T_24 = bits(io_inputy, 4, 0) @[alu.scala 65:50]
    node _T_25 = dshr(_T_23, _T_24) @[alu.scala 65:38]
    node _T_26 = asUInt(_T_25) @[alu.scala 65:57]
    node _T_27 = eq(UInt<4>("h9"), io_operation) @[Conditional.scala 37:30]
    node _T_28 = xor(io_inputx, io_inputy) @[alu.scala 68:30]
    node _T_29 = eq(UInt<4>("ha"), io_operation) @[Conditional.scala 37:30]
    node _T_30 = or(io_inputx, io_inputy) @[alu.scala 71:32]
    node _T_31 = not(_T_30) @[alu.scala 71:20]
    node _T_32 = eq(UInt<4>("hf"), io_operation) @[Conditional.scala 37:30]
    node _GEN_0 = mux(_T_32, multUnit.io_product, UInt<1>("h0")) @[Conditional.scala 39:67]
    node _GEN_1 = mux(_T_29, _T_31, _GEN_0) @[Conditional.scala 39:67]
    node _GEN_2 = mux(_T_27, _T_28, _GEN_1) @[Conditional.scala 39:67]
    node _GEN_3 = mux(_T_22, _T_26, _GEN_2) @[Conditional.scala 39:67]
    node _GEN_4 = mux(_T_19, _T_21, _GEN_3) @[Conditional.scala 39:67]
    node _GEN_5 = mux(_T_16, _T_18, _GEN_4) @[Conditional.scala 39:67]
    node _GEN_6 = mux(_T_14, _T_15, _GEN_5) @[Conditional.scala 39:67]
    node _GEN_7 = mux(_T_10, _T_13, _GEN_6) @[Conditional.scala 39:67]
    node _GEN_8 = mux(_T_7, _T_9, _GEN_7) @[Conditional.scala 39:67]
    node _GEN_9 = mux(_T_4, _T_6, _GEN_8) @[Conditional.scala 39:67]
    node _GEN_10 = mux(_T_2, _T_3, _GEN_9) @[Conditional.scala 39:67]
    node _GEN_11 = mux(_T, _T_1, _GEN_10) @[Conditional.scala 40:58]
    io_result <= bits(_GEN_11, 31, 0) @[alu.scala 37:16 alu.scala 41:17 alu.scala 44:17 alu.scala 47:17 alu.scala 50:17 alu.scala 53:17 alu.scala 56:17 alu.scala 59:17 alu.scala 62:17 alu.scala 65:17 alu.scala 68:17 alu.scala 71:17 alu.scala 74:17]
    multUnit.clock <= clock
    multUnit.reset <= reset
    multUnit.io_multiplicand <= bits(io_inputx, 15, 0) @[alu.scala 29:28]
    multUnit.io_multiplier <= bits(io_inputy, 15, 0) @[alu.scala 30:28]
    multUnit.io_start <= io_multStart @[alu.scala 31:28]
    multUnit.io_finished <= io_multFinished @[alu.scala 32:24]
    mstallReg <= mux(reset, UInt<1>("h0"), mstallReg)

  module ImmediateGenerator :
    input clock : Clock
    input reset : UInt<1>
    input io_instruction : UInt<32>
    output io_sextImm : UInt<32>
  
    node opcode = bits(io_instruction, 6, 0) @[helpers.scala 44:30]
    node _T = eq(UInt<6>("h37"), opcode) @[Conditional.scala 37:30]
    node _T_1 = bits(io_instruction, 31, 12) @[helpers.scala 47:31]
    node _T_2 = mux(UInt<1>("h0"), UInt<12>("hfff"), UInt<12>("h0")) @[Bitwise.scala 72:12]
    node _T_3 = cat(_T_1, _T_2) @[Cat.scala 29:58]
    node _T_4 = eq(UInt<5>("h17"), opcode) @[Conditional.scala 37:30]
    node _T_5 = bits(io_instruction, 31, 12) @[helpers.scala 51:31]
    node _T_6 = mux(UInt<1>("h0"), UInt<12>("hfff"), UInt<12>("h0")) @[Bitwise.scala 72:12]
    node _T_7 = cat(_T_5, _T_6) @[Cat.scala 29:58]
    node _T_8 = eq(UInt<7>("h6f"), opcode) @[Conditional.scala 37:30]
    node _T_9 = bits(io_instruction, 31, 31) @[helpers.scala 55:35]
    node _T_10 = bits(io_instruction, 19, 12) @[helpers.scala 55:55]
    node _T_11 = bits(io_instruction, 20, 20) @[helpers.scala 56:35]
    node _T_12 = bits(io_instruction, 30, 21) @[helpers.scala 56:55]
    node _T_13 = cat(_T_11, _T_12) @[Cat.scala 29:58]
    node _T_14 = cat(_T_9, _T_10) @[Cat.scala 29:58]
    node _T_15 = cat(_T_14, _T_13) @[Cat.scala 29:58]
    node _T_16 = bits(_T_15, 19, 19) @[helpers.scala 57:36]
    node _T_17 = bits(_T_16, 0, 0) @[Bitwise.scala 72:15]
    node _T_18 = mux(_T_17, UInt<11>("h7ff"), UInt<11>("h0")) @[Bitwise.scala 72:12]
    node _T_19 = cat(_T_18, _T_15) @[Cat.scala 29:58]
    node _T_20 = cat(_T_19, UInt<1>("h0")) @[Cat.scala 29:58]
    node _T_21 = eq(UInt<7>("h67"), opcode) @[Conditional.scala 37:30]
    node _T_22 = bits(io_instruction, 31, 20) @[helpers.scala 60:31]
    node _T_23 = bits(_T_22, 11, 11) @[helpers.scala 61:36]
    node _T_24 = bits(_T_23, 0, 0) @[Bitwise.scala 72:15]
    node _T_25 = mux(_T_24, UInt<20>("hfffff"), UInt<20>("h0")) @[Bitwise.scala 72:12]
    node _T_26 = cat(_T_25, _T_22) @[Cat.scala 29:58]
    node _T_27 = eq(UInt<7>("h63"), opcode) @[Conditional.scala 37:30]
    node _T_28 = bits(io_instruction, 31, 31) @[helpers.scala 64:35]
    node _T_29 = bits(io_instruction, 7, 7) @[helpers.scala 64:55]
    node _T_30 = bits(io_instruction, 30, 25) @[helpers.scala 65:35]
    node _T_31 = bits(io_instruction, 11, 8) @[helpers.scala 65:58]
    node _T_32 = cat(_T_30, _T_31) @[Cat.scala 29:58]
    node _T_33 = cat(_T_28, _T_29) @[Cat.scala 29:58]
    node _T_34 = cat(_T_33, _T_32) @[Cat.scala 29:58]
    node _T_35 = bits(_T_34, 11, 11) @[helpers.scala 66:37]
    node _T_36 = bits(_T_35, 0, 0) @[Bitwise.scala 72:15]
    node _T_37 = mux(_T_36, UInt<19>("h7ffff"), UInt<19>("h0")) @[Bitwise.scala 72:12]
    node _T_38 = cat(_T_37, _T_34) @[Cat.scala 29:58]
    node _T_39 = cat(_T_38, UInt<1>("h0")) @[Cat.scala 29:58]
    node _T_40 = eq(UInt<2>("h3"), opcode) @[Conditional.scala 37:30]
    node _T_41 = bits(io_instruction, 31, 20) @[helpers.scala 69:31]
    node _T_42 = bits(_T_41, 11, 11) @[helpers.scala 70:36]
    node _T_43 = bits(_T_42, 0, 0) @[Bitwise.scala 72:15]
    node _T_44 = mux(_T_43, UInt<20>("hfffff"), UInt<20>("h0")) @[Bitwise.scala 72:12]
    node _T_45 = cat(_T_44, _T_41) @[Cat.scala 29:58]
    node _T_46 = eq(UInt<6>("h23"), opcode) @[Conditional.scala 37:30]
    node _T_47 = bits(io_instruction, 31, 25) @[helpers.scala 73:35]
    node _T_48 = bits(io_instruction, 11, 7) @[helpers.scala 73:59]
    node _T_49 = cat(_T_47, _T_48) @[Cat.scala 29:58]
    node _T_50 = bits(_T_49, 11, 11) @[helpers.scala 74:36]
    node _T_51 = bits(_T_50, 0, 0) @[Bitwise.scala 72:15]
    node _T_52 = mux(_T_51, UInt<20>("hfffff"), UInt<20>("h0")) @[Bitwise.scala 72:12]
    node _T_53 = cat(_T_52, _T_49) @[Cat.scala 29:58]
    node _T_54 = eq(UInt<5>("h13"), opcode) @[Conditional.scala 37:30]
    node _T_55 = bits(io_instruction, 31, 20) @[helpers.scala 77:31]
    node _T_56 = bits(_T_55, 11, 11) @[helpers.scala 78:36]
    node _T_57 = bits(_T_56, 0, 0) @[Bitwise.scala 72:15]
    node _T_58 = mux(_T_57, UInt<20>("hfffff"), UInt<20>("h0")) @[Bitwise.scala 72:12]
    node _T_59 = cat(_T_58, _T_55) @[Cat.scala 29:58]
    node _T_60 = eq(UInt<7>("h73"), opcode) @[Conditional.scala 37:30]
    node _T_61 = mux(UInt<1>("h0"), UInt<27>("h7ffffff"), UInt<27>("h0")) @[Bitwise.scala 72:12]
    node _T_62 = bits(io_instruction, 19, 15) @[helpers.scala 81:53]
    node _T_63 = cat(_T_61, _T_62) @[Cat.scala 29:58]
    node _GEN_0 = mux(_T_60, _T_63, UInt<1>("h0")) @[Conditional.scala 39:67]
    node _GEN_1 = mux(_T_54, _T_59, _GEN_0) @[Conditional.scala 39:67]
    node _GEN_2 = mux(_T_46, _T_53, _GEN_1) @[Conditional.scala 39:67]
    node _GEN_3 = mux(_T_40, _T_45, _GEN_2) @[Conditional.scala 39:67]
    node _GEN_4 = mux(_T_27, _T_39, _GEN_3) @[Conditional.scala 39:67]
    node _GEN_5 = mux(_T_21, _T_26, _GEN_4) @[Conditional.scala 39:67]
    node _GEN_6 = mux(_T_8, _T_20, _GEN_5) @[Conditional.scala 39:67]
    node _GEN_7 = mux(_T_4, _T_7, _GEN_6) @[Conditional.scala 39:67]
    node _GEN_8 = mux(_T, _T_3, _GEN_7) @[Conditional.scala 40:58]
    io_sextImm <= _GEN_8 @[helpers.scala 42:14 helpers.scala 48:18 helpers.scala 52:18 helpers.scala 57:18 helpers.scala 61:18 helpers.scala 66:18 helpers.scala 70:18 helpers.scala 74:18 helpers.scala 78:18 helpers.scala 81:18]

  module Adder :
    input clock : Clock
    input reset : UInt<1>
    input io_inputx : UInt<32>
    input io_inputy : UInt<32>
    output io_result : UInt<32>
  
    node _T = add(io_inputx, io_inputy) @[helpers.scala 23:26]
    node _T_1 = tail(_T, 1) @[helpers.scala 23:26]
    io_result <= _T_1 @[helpers.scala 23:13]

  module ForwardingUnit :
    input clock : Clock
    input reset : UInt<1>
    input io_rs1 : UInt<5>
    input io_rs2 : UInt<5>
    input io_exmemrd : UInt<5>
    input io_exmemrw : UInt<1>
    input io_memwbrd : UInt<5>
    input io_memwbrw : UInt<1>
    output io_forwardA : UInt<2>
    output io_forwardB : UInt<2>
  
    node _T = eq(io_rs1, io_exmemrd) @[forwarding.scala 39:16]
    node _T_1 = neq(io_exmemrd, UInt<1>("h0")) @[forwarding.scala 39:45]
    node _T_2 = and(_T, _T_1) @[forwarding.scala 39:31]
    node _T_3 = and(_T_2, io_exmemrw) @[forwarding.scala 39:53]
    node _T_4 = eq(io_rs1, io_memwbrd) @[forwarding.scala 41:23]
    node _T_5 = neq(io_memwbrd, UInt<1>("h0")) @[forwarding.scala 41:52]
    node _T_6 = and(_T_4, _T_5) @[forwarding.scala 41:38]
    node _T_7 = and(_T_6, io_memwbrw) @[forwarding.scala 41:60]
    node _GEN_0 = mux(_T_7, UInt<2>("h2"), UInt<1>("h0")) @[forwarding.scala 41:75]
    node _GEN_1 = mux(_T_3, UInt<1>("h1"), _GEN_0) @[forwarding.scala 39:68]
    node _T_8 = eq(io_rs2, io_exmemrd) @[forwarding.scala 47:16]
    node _T_9 = neq(io_exmemrd, UInt<1>("h0")) @[forwarding.scala 47:45]
    node _T_10 = and(_T_8, _T_9) @[forwarding.scala 47:31]
    node _T_11 = and(_T_10, io_exmemrw) @[forwarding.scala 47:53]
    node _T_12 = eq(io_rs2, io_memwbrd) @[forwarding.scala 49:23]
    node _T_13 = neq(io_memwbrd, UInt<1>("h0")) @[forwarding.scala 49:52]
    node _T_14 = and(_T_12, _T_13) @[forwarding.scala 49:38]
    node _T_15 = and(_T_14, io_memwbrw) @[forwarding.scala 49:60]
    node _GEN_2 = mux(_T_15, UInt<2>("h2"), UInt<1>("h0")) @[forwarding.scala 49:75]
    node _GEN_3 = mux(_T_11, UInt<1>("h1"), _GEN_2) @[forwarding.scala 47:68]
    io_forwardA <= _GEN_1 @[forwarding.scala 40:17 forwarding.scala 42:17 forwarding.scala 44:17]
    io_forwardB <= _GEN_3 @[forwarding.scala 48:17 forwarding.scala 50:17 forwarding.scala 52:17]

  module HazardUnit :
    input clock : Clock
    input reset : UInt<1>
    input io_rs1 : UInt<5>
    input io_rs2 : UInt<5>
    input io_id_branch : UInt<1>
    input io_idex_memread : UInt<1>
    input io_idex_rd : UInt<5>
    input io_exmem_taken : UInt<1>
    input io_mstall : UInt<1>
    output io_pcwrite : UInt<2>
    output io_ifid_bubble : UInt<1>
    output io_idex_bubble : UInt<1>
    output io_exmem_bubble : UInt<1>
    output io_ifid_flush : UInt<1>
    output io_stage_mhold : UInt<1>
  
    node _T = eq(io_idex_rd, io_rs1) @[hazard.scala 70:21]
    node _T_1 = eq(io_idex_rd, io_rs2) @[hazard.scala 70:46]
    node _T_2 = or(_T, _T_1) @[hazard.scala 70:32]
    node _T_3 = and(io_idex_memread, _T_2) @[hazard.scala 69:30]
    node _GEN_0 = mux(io_id_branch, UInt<2>("h3"), UInt<1>("h0")) @[hazard.scala 77:28]
    node _GEN_1 = mux(io_id_branch, UInt<1>("h1"), UInt<1>("h0")) @[hazard.scala 77:28]
    node _GEN_2 = mux(io_id_branch, UInt<1>("h0"), UInt<1>("h0")) @[hazard.scala 77:28]
    node _GEN_3 = mux(_T_3, UInt<2>("h2"), _GEN_0) @[hazard.scala 70:59]
    node _GEN_4 = mux(_T_3, UInt<1>("h1"), _GEN_2) @[hazard.scala 70:59]
    node _GEN_5 = mux(_T_3, UInt<1>("h0"), _GEN_1) @[hazard.scala 70:59]
    node _GEN_6 = mux(_T_3, UInt<1>("h0"), _GEN_2) @[hazard.scala 70:59]
    node _GEN_7 = mux(io_exmem_taken, UInt<1>("h1"), _GEN_3) @[hazard.scala 61:30]
    node _GEN_8 = mux(io_exmem_taken, UInt<1>("h1"), _GEN_5) @[hazard.scala 61:30]
    node _GEN_9 = mux(io_exmem_taken, UInt<1>("h1"), _GEN_4) @[hazard.scala 61:30]
    node _GEN_10 = mux(io_exmem_taken, UInt<1>("h1"), _GEN_6) @[hazard.scala 61:30]
    node _GEN_11 = mux(io_exmem_taken, UInt<1>("h0"), _GEN_4) @[hazard.scala 61:30]
    node _GEN_12 = mux(io_mstall, UInt<1>("h1"), UInt<1>("h0")) @[hazard.scala 56:20]
    node _GEN_13 = mux(io_mstall, UInt<2>("h2"), _GEN_7) @[hazard.scala 56:20]
    node _GEN_14 = mux(io_mstall, UInt<1>("h0"), _GEN_8) @[hazard.scala 56:20]
    node _GEN_15 = mux(io_mstall, UInt<1>("h0"), _GEN_9) @[hazard.scala 56:20]
    node _GEN_16 = mux(io_mstall, UInt<1>("h0"), _GEN_10) @[hazard.scala 56:20]
    node _GEN_17 = mux(io_mstall, UInt<1>("h0"), _GEN_11) @[hazard.scala 56:20]
    io_pcwrite <= _GEN_13 @[hazard.scala 48:19 hazard.scala 58:21 hazard.scala 63:16 hazard.scala 72:20 hazard.scala 79:16 hazard.scala 82:21]
    io_ifid_bubble <= _GEN_17 @[hazard.scala 49:19 hazard.scala 73:20 hazard.scala 83:21]
    io_idex_bubble <= _GEN_15 @[hazard.scala 50:19 hazard.scala 65:21 hazard.scala 74:20 hazard.scala 84:21]
    io_exmem_bubble <= _GEN_16 @[hazard.scala 51:19 hazard.scala 66:21 hazard.scala 85:21]
    io_ifid_flush <= _GEN_14 @[hazard.scala 52:19 hazard.scala 64:20 hazard.scala 80:19 hazard.scala 86:21]
    io_stage_mhold <= _GEN_12 @[hazard.scala 53:19 hazard.scala 57:21]

  module AlwaysNotTakenPredictor :
    input clock : Clock
    input reset : UInt<1>
    input io_pc : UInt<32>
    input io_update : UInt<1>
    input io_taken : UInt<1>
    output io_prediction : UInt<1>
  
    reg predictionTable_0 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), predictionTable_0) @[branchpred.scala 36:32]
    reg predictionTable_1 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), predictionTable_1) @[branchpred.scala 36:32]
    reg predictionTable_2 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), predictionTable_2) @[branchpred.scala 36:32]
    reg predictionTable_3 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), predictionTable_3) @[branchpred.scala 36:32]
    reg predictionTable_4 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), predictionTable_4) @[branchpred.scala 36:32]
    reg predictionTable_5 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), predictionTable_5) @[branchpred.scala 36:32]
    reg predictionTable_6 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), predictionTable_6) @[branchpred.scala 36:32]
    reg predictionTable_7 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), predictionTable_7) @[branchpred.scala 36:32]
    reg predictionTable_8 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), predictionTable_8) @[branchpred.scala 36:32]
    reg predictionTable_9 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), predictionTable_9) @[branchpred.scala 36:32]
    reg predictionTable_10 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), predictionTable_10) @[branchpred.scala 36:32]
    reg predictionTable_11 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), predictionTable_11) @[branchpred.scala 36:32]
    reg predictionTable_12 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), predictionTable_12) @[branchpred.scala 36:32]
    reg predictionTable_13 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), predictionTable_13) @[branchpred.scala 36:32]
    reg predictionTable_14 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), predictionTable_14) @[branchpred.scala 36:32]
    reg predictionTable_15 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), predictionTable_15) @[branchpred.scala 36:32]
    reg predictionTable_16 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), predictionTable_16) @[branchpred.scala 36:32]
    reg predictionTable_17 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), predictionTable_17) @[branchpred.scala 36:32]
    reg predictionTable_18 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), predictionTable_18) @[branchpred.scala 36:32]
    reg predictionTable_19 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), predictionTable_19) @[branchpred.scala 36:32]
    reg predictionTable_20 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), predictionTable_20) @[branchpred.scala 36:32]
    reg predictionTable_21 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), predictionTable_21) @[branchpred.scala 36:32]
    reg predictionTable_22 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), predictionTable_22) @[branchpred.scala 36:32]
    reg predictionTable_23 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), predictionTable_23) @[branchpred.scala 36:32]
    reg predictionTable_24 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), predictionTable_24) @[branchpred.scala 36:32]
    reg predictionTable_25 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), predictionTable_25) @[branchpred.scala 36:32]
    reg predictionTable_26 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), predictionTable_26) @[branchpred.scala 36:32]
    reg predictionTable_27 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), predictionTable_27) @[branchpred.scala 36:32]
    reg predictionTable_28 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), predictionTable_28) @[branchpred.scala 36:32]
    reg predictionTable_29 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), predictionTable_29) @[branchpred.scala 36:32]
    reg predictionTable_30 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), predictionTable_30) @[branchpred.scala 36:32]
    reg predictionTable_31 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), predictionTable_31) @[branchpred.scala 36:32]
    node _T_0 = UInt<2>("h2") @[branchpred.scala 36:40 branchpred.scala 36:40]
    node _T_1 = UInt<2>("h2") @[branchpred.scala 36:40 branchpred.scala 36:40]
    node _T_2 = UInt<2>("h2") @[branchpred.scala 36:40 branchpred.scala 36:40]
    node _T_3 = UInt<2>("h2") @[branchpred.scala 36:40 branchpred.scala 36:40]
    node _T_4 = UInt<2>("h2") @[branchpred.scala 36:40 branchpred.scala 36:40]
    node _T_5 = UInt<2>("h2") @[branchpred.scala 36:40 branchpred.scala 36:40]
    node _T_6 = UInt<2>("h2") @[branchpred.scala 36:40 branchpred.scala 36:40]
    node _T_7 = UInt<2>("h2") @[branchpred.scala 36:40 branchpred.scala 36:40]
    node _T_8 = UInt<2>("h2") @[branchpred.scala 36:40 branchpred.scala 36:40]
    node _T_9 = UInt<2>("h2") @[branchpred.scala 36:40 branchpred.scala 36:40]
    node _T_10 = UInt<2>("h2") @[branchpred.scala 36:40 branchpred.scala 36:40]
    node _T_11 = UInt<2>("h2") @[branchpred.scala 36:40 branchpred.scala 36:40]
    node _T_12 = UInt<2>("h2") @[branchpred.scala 36:40 branchpred.scala 36:40]
    node _T_13 = UInt<2>("h2") @[branchpred.scala 36:40 branchpred.scala 36:40]
    node _T_14 = UInt<2>("h2") @[branchpred.scala 36:40 branchpred.scala 36:40]
    node _T_15 = UInt<2>("h2") @[branchpred.scala 36:40 branchpred.scala 36:40]
    node _T_16 = UInt<2>("h2") @[branchpred.scala 36:40 branchpred.scala 36:40]
    node _T_17 = UInt<2>("h2") @[branchpred.scala 36:40 branchpred.scala 36:40]
    node _T_18 = UInt<2>("h2") @[branchpred.scala 36:40 branchpred.scala 36:40]
    node _T_19 = UInt<2>("h2") @[branchpred.scala 36:40 branchpred.scala 36:40]
    node _T_20 = UInt<2>("h2") @[branchpred.scala 36:40 branchpred.scala 36:40]
    node _T_21 = UInt<2>("h2") @[branchpred.scala 36:40 branchpred.scala 36:40]
    node _T_22 = UInt<2>("h2") @[branchpred.scala 36:40 branchpred.scala 36:40]
    node _T_23 = UInt<2>("h2") @[branchpred.scala 36:40 branchpred.scala 36:40]
    node _T_24 = UInt<2>("h2") @[branchpred.scala 36:40 branchpred.scala 36:40]
    node _T_25 = UInt<2>("h2") @[branchpred.scala 36:40 branchpred.scala 36:40]
    node _T_26 = UInt<2>("h2") @[branchpred.scala 36:40 branchpred.scala 36:40]
    node _T_27 = UInt<2>("h2") @[branchpred.scala 36:40 branchpred.scala 36:40]
    node _T_28 = UInt<2>("h2") @[branchpred.scala 36:40 branchpred.scala 36:40]
    node _T_29 = UInt<2>("h2") @[branchpred.scala 36:40 branchpred.scala 36:40]
    node _T_30 = UInt<2>("h2") @[branchpred.scala 36:40 branchpred.scala 36:40]
    node _T_31 = UInt<2>("h2") @[branchpred.scala 36:40 branchpred.scala 36:40]
    io_prediction <= UInt<1>("h0") @[branchpred.scala 62:17]
    predictionTable_0 <= mux(reset, _T_0, predictionTable_0)
    predictionTable_1 <= mux(reset, _T_1, predictionTable_1)
    predictionTable_2 <= mux(reset, _T_2, predictionTable_2)
    predictionTable_3 <= mux(reset, _T_3, predictionTable_3)
    predictionTable_4 <= mux(reset, _T_4, predictionTable_4)
    predictionTable_5 <= mux(reset, _T_5, predictionTable_5)
    predictionTable_6 <= mux(reset, _T_6, predictionTable_6)
    predictionTable_7 <= mux(reset, _T_7, predictionTable_7)
    predictionTable_8 <= mux(reset, _T_8, predictionTable_8)
    predictionTable_9 <= mux(reset, _T_9, predictionTable_9)
    predictionTable_10 <= mux(reset, _T_10, predictionTable_10)
    predictionTable_11 <= mux(reset, _T_11, predictionTable_11)
    predictionTable_12 <= mux(reset, _T_12, predictionTable_12)
    predictionTable_13 <= mux(reset, _T_13, predictionTable_13)
    predictionTable_14 <= mux(reset, _T_14, predictionTable_14)
    predictionTable_15 <= mux(reset, _T_15, predictionTable_15)
    predictionTable_16 <= mux(reset, _T_16, predictionTable_16)
    predictionTable_17 <= mux(reset, _T_17, predictionTable_17)
    predictionTable_18 <= mux(reset, _T_18, predictionTable_18)
    predictionTable_19 <= mux(reset, _T_19, predictionTable_19)
    predictionTable_20 <= mux(reset, _T_20, predictionTable_20)
    predictionTable_21 <= mux(reset, _T_21, predictionTable_21)
    predictionTable_22 <= mux(reset, _T_22, predictionTable_22)
    predictionTable_23 <= mux(reset, _T_23, predictionTable_23)
    predictionTable_24 <= mux(reset, _T_24, predictionTable_24)
    predictionTable_25 <= mux(reset, _T_25, predictionTable_25)
    predictionTable_26 <= mux(reset, _T_26, predictionTable_26)
    predictionTable_27 <= mux(reset, _T_27, predictionTable_27)
    predictionTable_28 <= mux(reset, _T_28, predictionTable_28)
    predictionTable_29 <= mux(reset, _T_29, predictionTable_29)
    predictionTable_30 <= mux(reset, _T_30, predictionTable_30)
    predictionTable_31 <= mux(reset, _T_31, predictionTable_31)

  module PipelinedCPU :
    input clock : Clock
    input reset : UInt<1>
    output io_imem_address : UInt<32>
    input io_imem_instruction : UInt<32>
    output io_dmem_address : UInt<32>
    output io_dmem_writedata : UInt<32>
    output io_dmem_memread : UInt<1>
    output io_dmem_memwrite : UInt<1>
    output io_dmem_maskmode : UInt<2>
    output io_dmem_sext : UInt<1>
    input io_dmem_readdata : UInt<32>
  
    inst control of Control @[cpu.scala 91:26]
    inst branchCtrl of BranchControl @[cpu.scala 92:26]
    inst registers of RegisterFile @[cpu.scala 93:26]
    inst aluControl of ALUControl @[cpu.scala 94:26]
    inst alu of ALU @[cpu.scala 95:26]
    inst immGen of ImmediateGenerator @[cpu.scala 96:26]
    inst pcPlusFour of Adder @[cpu.scala 97:26]
    inst branchAdd of Adder @[cpu.scala 98:26]
    inst forwarding of ForwardingUnit @[cpu.scala 99:26]
    inst hazard of HazardUnit @[cpu.scala 100:26]
    inst predictor of AlwaysNotTakenPredictor @[cpu.scala 101:26]
    reg pc : UInt<32>, clock with :
      reset => (UInt<1>("h0"), pc) @[cpu.scala 90:27]
    reg value : UInt<30>, clock with :
      reset => (UInt<1>("h0"), value) @[Counter.scala 29:33]
    node _T_1 = eq(value, UInt<30>("h3fffffff")) @[Counter.scala 38:24]
    node _T_2 = add(value, UInt<1>("h1")) @[Counter.scala 39:22]
    node _T_3 = tail(_T_2, 1) @[Counter.scala 39:22]
    node _GEN_0 = mux(UInt<1>("h1"), _T_3, value) @[Counter.scala 67:17]
    node _GEN_1 = mux(UInt<1>("h1"), _T_1, UInt<1>("h0")) @[Counter.scala 67:17]
    reg if_id_instruction : UInt<32>, clock with :
      reset => (UInt<1>("h0"), if_id_instruction) @[cpu.scala 105:27]
    reg if_id_pc : UInt<32>, clock with :
      reset => (UInt<1>("h0"), if_id_pc) @[cpu.scala 105:27]
    reg if_id_pcplusfour : UInt<32>, clock with :
      reset => (UInt<1>("h0"), if_id_pcplusfour) @[cpu.scala 105:27]
    reg id_ex_writereg : UInt<5>, clock with :
      reset => (UInt<1>("h0"), id_ex_writereg) @[cpu.scala 106:27]
    reg id_ex_funct7 : UInt<7>, clock with :
      reset => (UInt<1>("h0"), id_ex_funct7) @[cpu.scala 106:27]
    reg id_ex_funct3 : UInt<3>, clock with :
      reset => (UInt<1>("h0"), id_ex_funct3) @[cpu.scala 106:27]
    reg id_ex_imm : UInt<32>, clock with :
      reset => (UInt<1>("h0"), id_ex_imm) @[cpu.scala 106:27]
    reg id_ex_readdata2 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), id_ex_readdata2) @[cpu.scala 106:27]
    reg id_ex_readdata1 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), id_ex_readdata1) @[cpu.scala 106:27]
    reg id_ex_pc : UInt<32>, clock with :
      reset => (UInt<1>("h0"), id_ex_pc) @[cpu.scala 106:27]
    reg id_ex_pcplusfour : UInt<32>, clock with :
      reset => (UInt<1>("h0"), id_ex_pcplusfour) @[cpu.scala 106:27]
    reg id_ex_excontrol_add : UInt<1>, clock with :
      reset => (UInt<1>("h0"), id_ex_excontrol_add) @[cpu.scala 106:27]
    reg id_ex_excontrol_immediate : UInt<1>, clock with :
      reset => (UInt<1>("h0"), id_ex_excontrol_immediate) @[cpu.scala 106:27]
    reg id_ex_excontrol_alusrc1 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), id_ex_excontrol_alusrc1) @[cpu.scala 106:27]
    reg id_ex_excontrol_branch : UInt<1>, clock with :
      reset => (UInt<1>("h0"), id_ex_excontrol_branch) @[cpu.scala 106:27]
    reg id_ex_excontrol_jump : UInt<2>, clock with :
      reset => (UInt<1>("h0"), id_ex_excontrol_jump) @[cpu.scala 106:27]
    reg id_ex_excontrol_prediction : UInt<1>, clock with :
      reset => (UInt<1>("h0"), id_ex_excontrol_prediction) @[cpu.scala 106:27]
    reg id_ex_mcontrol_memread : UInt<1>, clock with :
      reset => (UInt<1>("h0"), id_ex_mcontrol_memread) @[cpu.scala 106:27]
    reg id_ex_mcontrol_memwrite : UInt<1>, clock with :
      reset => (UInt<1>("h0"), id_ex_mcontrol_memwrite) @[cpu.scala 106:27]
    reg id_ex_mcontrol_taken : UInt<1>, clock with :
      reset => (UInt<1>("h0"), id_ex_mcontrol_taken) @[cpu.scala 106:27]
    reg id_ex_mcontrol_maskmode : UInt<2>, clock with :
      reset => (UInt<1>("h0"), id_ex_mcontrol_maskmode) @[cpu.scala 106:27]
    reg id_ex_mcontrol_sext : UInt<1>, clock with :
      reset => (UInt<1>("h0"), id_ex_mcontrol_sext) @[cpu.scala 106:27]
    reg id_ex_wbcontrol_toreg : UInt<2>, clock with :
      reset => (UInt<1>("h0"), id_ex_wbcontrol_toreg) @[cpu.scala 106:27]
    reg id_ex_wbcontrol_regwrite : UInt<1>, clock with :
      reset => (UInt<1>("h0"), id_ex_wbcontrol_regwrite) @[cpu.scala 106:27]
    reg id_ex_rs1 : UInt<5>, clock with :
      reset => (UInt<1>("h0"), id_ex_rs1) @[cpu.scala 106:27]
    reg id_ex_rs2 : UInt<5>, clock with :
      reset => (UInt<1>("h0"), id_ex_rs2) @[cpu.scala 106:27]
    reg id_ex_branchpc : UInt<32>, clock with :
      reset => (UInt<1>("h0"), id_ex_branchpc) @[cpu.scala 106:27]
    reg ex_mem_writereg : UInt<5>, clock with :
      reset => (UInt<1>("h0"), ex_mem_writereg) @[cpu.scala 107:27]
    reg ex_mem_readdata2 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), ex_mem_readdata2) @[cpu.scala 107:27]
    reg ex_mem_aluresult : UInt<32>, clock with :
      reset => (UInt<1>("h0"), ex_mem_aluresult) @[cpu.scala 107:27]
    reg ex_mem_nextpc : UInt<32>, clock with :
      reset => (UInt<1>("h0"), ex_mem_nextpc) @[cpu.scala 107:27]
    reg ex_mem_pcplusfour : UInt<32>, clock with :
      reset => (UInt<1>("h0"), ex_mem_pcplusfour) @[cpu.scala 107:27]
    reg ex_mem_mcontrol_memread : UInt<1>, clock with :
      reset => (UInt<1>("h0"), ex_mem_mcontrol_memread) @[cpu.scala 107:27]
    reg ex_mem_mcontrol_memwrite : UInt<1>, clock with :
      reset => (UInt<1>("h0"), ex_mem_mcontrol_memwrite) @[cpu.scala 107:27]
    reg ex_mem_mcontrol_taken : UInt<1>, clock with :
      reset => (UInt<1>("h0"), ex_mem_mcontrol_taken) @[cpu.scala 107:27]
    reg ex_mem_mcontrol_maskmode : UInt<2>, clock with :
      reset => (UInt<1>("h0"), ex_mem_mcontrol_maskmode) @[cpu.scala 107:27]
    reg ex_mem_mcontrol_sext : UInt<1>, clock with :
      reset => (UInt<1>("h0"), ex_mem_mcontrol_sext) @[cpu.scala 107:27]
    reg ex_mem_wbcontrol_toreg : UInt<2>, clock with :
      reset => (UInt<1>("h0"), ex_mem_wbcontrol_toreg) @[cpu.scala 107:27]
    reg ex_mem_wbcontrol_regwrite : UInt<1>, clock with :
      reset => (UInt<1>("h0"), ex_mem_wbcontrol_regwrite) @[cpu.scala 107:27]
    reg mem_wb_writereg : UInt<5>, clock with :
      reset => (UInt<1>("h0"), mem_wb_writereg) @[cpu.scala 108:27]
    reg mem_wb_aluresult : UInt<32>, clock with :
      reset => (UInt<1>("h0"), mem_wb_aluresult) @[cpu.scala 108:27]
    reg mem_wb_readdata : UInt<32>, clock with :
      reset => (UInt<1>("h0"), mem_wb_readdata) @[cpu.scala 108:27]
    reg mem_wb_pcplusfour : UInt<32>, clock with :
      reset => (UInt<1>("h0"), mem_wb_pcplusfour) @[cpu.scala 108:27]
    reg mem_wb_wbcontrol_toreg : UInt<2>, clock with :
      reset => (UInt<1>("h0"), mem_wb_wbcontrol_toreg) @[cpu.scala 108:27]
    reg mem_wb_wbcontrol_regwrite : UInt<1>, clock with :
      reset => (UInt<1>("h0"), mem_wb_wbcontrol_regwrite) @[cpu.scala 108:27]
    node _T_8 = bits(reset, 0, 0) @[cpu.scala 110:27]
    node _T_9 = eq(_T_8, UInt<1>("h0")) @[cpu.scala 110:27]
    reg bpCorrect : UInt<32>, clock with :
      reset => (UInt<1>("h0"), bpCorrect) @[cpu.scala 113:28]
    reg bpIncorrect : UInt<32>, clock with :
      reset => (UInt<1>("h0"), bpIncorrect) @[cpu.scala 114:28]
    node _T_10 = shl(UInt<1>("h1"), 20) @[cpu.scala 115:26]
    node _T_11 = gt(bpCorrect, _T_10) @[cpu.scala 115:19]
    node _T_12 = bits(reset, 0, 0) @[cpu.scala 117:11]
    node _T_13 = eq(_T_12, UInt<1>("h0")) @[cpu.scala 117:11]
    node _T_14 = eq(hazard.io_pcwrite, UInt<1>("h0")) @[cpu.scala 138:36]
    node _T_15 = eq(hazard.io_pcwrite, UInt<1>("h1")) @[cpu.scala 139:36]
    node _T_16 = eq(hazard.io_pcwrite, UInt<2>("h2")) @[cpu.scala 140:36]
    node _T_17 = eq(hazard.io_pcwrite, UInt<2>("h3")) @[cpu.scala 141:36]
    node id_next_pc = branchAdd.io_result @[cpu.scala 126:24 cpu.scala 208:14]
    node _T_18 = mux(_T_17, id_next_pc, UInt<1>("h0")) @[Mux.scala 87:16]
    node _T_19 = mux(_T_16, pc, _T_18) @[Mux.scala 87:16]
    node mem_next_pc = ex_mem_nextpc @[cpu.scala 123:25 cpu.scala 432:15]
    node _T_20 = mux(_T_15, mem_next_pc, _T_19) @[Mux.scala 87:16]
    node _T_21 = mux(_T_14, pcPlusFour.io_result, _T_20) @[Mux.scala 87:16]
    node _T_22 = bits(reset, 0, 0) @[cpu.scala 143:27]
    node _T_23 = eq(_T_22, UInt<1>("h0")) @[cpu.scala 143:27]
    node _T_24 = not(hazard.io_ifid_bubble) @[cpu.scala 154:9]
    node _GEN_2 = mux(_T_24, io_imem_instruction, if_id_instruction) @[cpu.scala 154:33]
    node _GEN_3 = mux(_T_24, pc, if_id_pc) @[cpu.scala 154:33]
    node _GEN_4 = mux(_T_24, pcPlusFour.io_result, if_id_pcplusfour) @[cpu.scala 154:33]
    node _GEN_5 = mux(hazard.io_ifid_flush, UInt<1>("h0"), _GEN_2) @[cpu.scala 161:31]
    node _GEN_6 = mux(hazard.io_ifid_flush, UInt<1>("h0"), _GEN_3) @[cpu.scala 161:31]
    node _GEN_7 = mux(hazard.io_ifid_flush, UInt<1>("h0"), _GEN_4) @[cpu.scala 161:31]
    node _GEN_8 = mux(hazard.io_stage_mhold, if_id_instruction, _GEN_5) @[cpu.scala 167:32]
    node _GEN_9 = mux(hazard.io_stage_mhold, if_id_pc, _GEN_6) @[cpu.scala 167:32]
    node _GEN_10 = mux(hazard.io_stage_mhold, if_id_pcplusfour, _GEN_7) @[cpu.scala 167:32]
    node _T_25 = bits(reset, 0, 0) @[cpu.scala 173:27]
    node _T_26 = eq(_T_25, UInt<1>("h0")) @[cpu.scala 173:27]
    node rs1 = bits(if_id_instruction, 19, 15) @[cpu.scala 179:30]
    node rs2 = bits(if_id_instruction, 24, 20) @[cpu.scala 180:30]
    node _T_27 = and(control.io_branch, predictor.io_prediction) @[cpu.scala 191:44]
    node _T_28 = bits(if_id_instruction, 6, 0) @[cpu.scala 194:41]
    node _T_29 = bits(if_id_instruction, 11, 7) @[cpu.scala 211:40]
    node _T_30 = bits(if_id_instruction, 31, 25) @[cpu.scala 214:40]
    node _T_31 = bits(if_id_instruction, 14, 12) @[cpu.scala 215:40]
    node _T_32 = bits(if_id_instruction, 13, 12) @[cpu.scala 234:47]
    node _T_33 = bits(if_id_instruction, 14, 14) @[cpu.scala 235:48]
    node _T_34 = not(_T_33) @[cpu.scala 235:30]
    node _T_35_prediction = UInt<1>("h0") @[cpu.scala 243:36 cpu.scala 243:36]
    node _GEN_11 = mux(hazard.io_idex_bubble, _T_35_prediction, predictor.io_prediction) @[cpu.scala 241:32]
    node _T_35_jump = UInt<2>("h0") @[cpu.scala 243:36 cpu.scala 243:36]
    node _GEN_12 = mux(hazard.io_idex_bubble, _T_35_jump, control.io_jump) @[cpu.scala 241:32]
    node _T_35_branch = UInt<1>("h0") @[cpu.scala 243:36 cpu.scala 243:36]
    node _GEN_13 = mux(hazard.io_idex_bubble, _T_35_branch, control.io_branch) @[cpu.scala 241:32]
    node _T_35_alusrc1 = UInt<2>("h0") @[cpu.scala 243:36 cpu.scala 243:36]
    node _GEN_14 = mux(hazard.io_idex_bubble, _T_35_alusrc1, control.io_alusrc1) @[cpu.scala 241:32]
    node _T_35_immediate = UInt<1>("h0") @[cpu.scala 243:36 cpu.scala 243:36]
    node _GEN_15 = mux(hazard.io_idex_bubble, _T_35_immediate, control.io_immediate) @[cpu.scala 241:32]
    node _T_35_add = UInt<1>("h0") @[cpu.scala 243:36 cpu.scala 243:36]
    node _GEN_16 = mux(hazard.io_idex_bubble, _T_35_add, control.io_add) @[cpu.scala 241:32]
    node _T_36_sext = UInt<1>("h0") @[cpu.scala 244:36 cpu.scala 244:36]
    node _GEN_17 = mux(hazard.io_idex_bubble, _T_36_sext, _T_34) @[cpu.scala 241:32]
    node _T_36_maskmode = UInt<2>("h0") @[cpu.scala 244:36 cpu.scala 244:36]
    node _GEN_18 = mux(hazard.io_idex_bubble, _T_36_maskmode, _T_32) @[cpu.scala 241:32]
    node _T_36_taken = UInt<1>("h0") @[cpu.scala 244:36 cpu.scala 244:36]
    node _GEN_19 = mux(hazard.io_idex_bubble, _T_36_taken, id_ex_mcontrol_taken) @[cpu.scala 241:32]
    node _T_36_memwrite = UInt<1>("h0") @[cpu.scala 244:36 cpu.scala 244:36]
    node _GEN_20 = mux(hazard.io_idex_bubble, _T_36_memwrite, control.io_memwrite) @[cpu.scala 241:32]
    node _T_36_memread = UInt<1>("h0") @[cpu.scala 244:36 cpu.scala 244:36]
    node _GEN_21 = mux(hazard.io_idex_bubble, _T_36_memread, control.io_memread) @[cpu.scala 241:32]
    node _T_37_regwrite = UInt<1>("h0") @[cpu.scala 245:36 cpu.scala 245:36]
    node _GEN_22 = mux(hazard.io_idex_bubble, _T_37_regwrite, control.io_regwrite) @[cpu.scala 241:32]
    node _T_37_toreg = UInt<2>("h0") @[cpu.scala 245:36 cpu.scala 245:36]
    node _GEN_23 = mux(hazard.io_idex_bubble, _T_37_toreg, control.io_toreg) @[cpu.scala 241:32]
    node _GEN_24 = mux(hazard.io_stage_mhold, id_ex_writereg, _T_29) @[cpu.scala 248:32]
    node _GEN_25 = mux(hazard.io_stage_mhold, id_ex_rs1, rs1) @[cpu.scala 248:32]
    node _GEN_26 = mux(hazard.io_stage_mhold, id_ex_rs2, rs2) @[cpu.scala 248:32]
    node _GEN_27 = mux(hazard.io_stage_mhold, id_ex_funct7, _T_30) @[cpu.scala 248:32]
    node _GEN_28 = mux(hazard.io_stage_mhold, id_ex_funct3, _T_31) @[cpu.scala 248:32]
    node _GEN_29 = mux(hazard.io_stage_mhold, id_ex_imm, immGen.io_sextImm) @[cpu.scala 248:32]
    node _GEN_30 = mux(hazard.io_stage_mhold, id_ex_readdata2, registers.io_readdata2) @[cpu.scala 248:32]
    node _GEN_31 = mux(hazard.io_stage_mhold, id_ex_readdata1, registers.io_readdata1) @[cpu.scala 248:32]
    node _GEN_32 = mux(hazard.io_stage_mhold, id_ex_pc, if_id_pc) @[cpu.scala 248:32]
    node _GEN_33 = mux(hazard.io_stage_mhold, id_ex_pcplusfour, if_id_pcplusfour) @[cpu.scala 248:32]
    node _GEN_34 = mux(hazard.io_stage_mhold, id_ex_branchpc, branchAdd.io_result) @[cpu.scala 248:32]
    node _GEN_35 = mux(hazard.io_stage_mhold, id_ex_excontrol_add, _GEN_16) @[cpu.scala 248:32]
    node _GEN_36 = mux(hazard.io_stage_mhold, id_ex_excontrol_immediate, _GEN_15) @[cpu.scala 248:32]
    node _GEN_37 = mux(hazard.io_stage_mhold, id_ex_excontrol_alusrc1, _GEN_14) @[cpu.scala 248:32]
    node _GEN_38 = mux(hazard.io_stage_mhold, id_ex_excontrol_branch, _GEN_13) @[cpu.scala 248:32]
    node _GEN_39 = mux(hazard.io_stage_mhold, id_ex_excontrol_jump, _GEN_12) @[cpu.scala 248:32]
    node _GEN_40 = mux(hazard.io_stage_mhold, id_ex_excontrol_prediction, _GEN_11) @[cpu.scala 248:32]
    node _GEN_41 = mux(hazard.io_stage_mhold, id_ex_mcontrol_memread, _GEN_21) @[cpu.scala 248:32]
    node _GEN_42 = mux(hazard.io_stage_mhold, id_ex_mcontrol_memwrite, _GEN_20) @[cpu.scala 248:32]
    node _GEN_43 = mux(hazard.io_stage_mhold, id_ex_mcontrol_maskmode, _GEN_18) @[cpu.scala 248:32]
    node _GEN_44 = mux(hazard.io_stage_mhold, id_ex_mcontrol_sext, _GEN_17) @[cpu.scala 248:32]
    node _GEN_45 = mux(hazard.io_stage_mhold, id_ex_wbcontrol_toreg, _GEN_23) @[cpu.scala 248:32]
    node _GEN_46 = mux(hazard.io_stage_mhold, id_ex_wbcontrol_regwrite, _GEN_22) @[cpu.scala 248:32]
    node _T_38 = bits(reset, 0, 0) @[cpu.scala 281:27]
    node _T_39 = eq(_T_38, UInt<1>("h0")) @[cpu.scala 281:27]
    node _T_40 = bits(reset, 0, 0) @[cpu.scala 282:27]
    node _T_41 = eq(_T_40, UInt<1>("h0")) @[cpu.scala 282:27]
    node _T_42 = eq(forwarding.io_forwardA, UInt<1>("h0")) @[cpu.scala 308:52]
    node _T_43 = eq(forwarding.io_forwardA, UInt<1>("h1")) @[cpu.scala 309:52]
    node _T_44 = eq(forwarding.io_forwardA, UInt<2>("h2")) @[cpu.scala 310:52]
    node _T_78 = eq(mem_wb_wbcontrol_toreg, UInt<1>("h0")) @[cpu.scala 465:48]
    node _T_79 = eq(mem_wb_wbcontrol_toreg, UInt<1>("h1")) @[cpu.scala 466:48]
    node _T_80 = eq(mem_wb_wbcontrol_toreg, UInt<2>("h2")) @[cpu.scala 467:48]
    node _T_81 = mux(_T_80, mem_wb_pcplusfour, mem_wb_aluresult) @[Mux.scala 87:16]
    node _T_82 = mux(_T_79, mem_wb_readdata, _T_81) @[Mux.scala 87:16]
    node _T_83 = mux(_T_78, mem_wb_aluresult, _T_82) @[Mux.scala 87:16]
    node write_data = _T_83 @[cpu.scala 129:24 cpu.scala 464:14]
    node _T_45 = mux(_T_44, write_data, UInt<1>("h0")) @[Mux.scala 87:16]
    node _T_46 = mux(_T_43, ex_mem_aluresult, _T_45) @[Mux.scala 87:16]
    node _T_47 = mux(_T_42, id_ex_readdata1, _T_46) @[Mux.scala 87:16]
    node _T_48 = eq(UInt<1>("h0"), id_ex_excontrol_alusrc1) @[Conditional.scala 37:30]
    node _T_49 = eq(UInt<1>("h1"), id_ex_excontrol_alusrc1) @[Conditional.scala 37:30]
    node _T_50 = eq(UInt<2>("h2"), id_ex_excontrol_alusrc1) @[Conditional.scala 37:30]
    node _GEN_47 = validif(_T_50, id_ex_pc) @[Conditional.scala 39:67]
    node _GEN_48 = mux(_T_49, UInt<1>("h0"), _GEN_47) @[Conditional.scala 39:67]
    node forward_inputx = _T_47 @[cpu.scala 306:28 cpu.scala 307:19]
    node _GEN_49 = mux(_T_48, forward_inputx, _GEN_48) @[Conditional.scala 40:58]
    node _T_51 = eq(forwarding.io_forwardB, UInt<1>("h0")) @[cpu.scala 325:52]
    node _T_52 = eq(forwarding.io_forwardB, UInt<1>("h1")) @[cpu.scala 326:52]
    node _T_53 = eq(forwarding.io_forwardB, UInt<2>("h2")) @[cpu.scala 327:52]
    node _T_54 = mux(_T_53, write_data, UInt<1>("h0")) @[Mux.scala 87:16]
    node _T_55 = mux(_T_52, ex_mem_aluresult, _T_54) @[Mux.scala 87:16]
    node forward_inputy = mux(_T_51, id_ex_readdata2, _T_55) @[Mux.scala 87:16]
    node alu_inputy = forward_inputy @[cpu.scala 329:24 cpu.scala 330:14]
    node _T_56 = mux(id_ex_excontrol_immediate, id_ex_imm, alu_inputy) @[cpu.scala 333:23]
    node _GEN_50 = mux(hazard.io_stage_mhold, ex_mem_readdata2, alu_inputy) @[cpu.scala 357:32]
    node _GEN_51 = mux(hazard.io_stage_mhold, ex_mem_aluresult, alu.io_result) @[cpu.scala 357:32]
    node _GEN_52 = mux(hazard.io_stage_mhold, ex_mem_writereg, id_ex_writereg) @[cpu.scala 357:32]
    node _GEN_53 = mux(hazard.io_stage_mhold, ex_mem_pcplusfour, id_ex_pcplusfour) @[cpu.scala 357:32]
    node _GEN_54 = mux(hazard.io_stage_mhold, ex_mem_mcontrol_sext, id_ex_mcontrol_sext) @[cpu.scala 357:32]
    node _GEN_55 = mux(hazard.io_stage_mhold, ex_mem_mcontrol_maskmode, id_ex_mcontrol_maskmode) @[cpu.scala 357:32]
    node _GEN_56 = mux(hazard.io_stage_mhold, ex_mem_mcontrol_taken, id_ex_mcontrol_taken) @[cpu.scala 357:32]
    node _GEN_57 = mux(hazard.io_stage_mhold, ex_mem_mcontrol_memwrite, id_ex_mcontrol_memwrite) @[cpu.scala 357:32]
    node _GEN_58 = mux(hazard.io_stage_mhold, ex_mem_mcontrol_memread, id_ex_mcontrol_memread) @[cpu.scala 357:32]
    node _GEN_59 = mux(hazard.io_stage_mhold, ex_mem_wbcontrol_regwrite, id_ex_wbcontrol_regwrite) @[cpu.scala 357:32]
    node _GEN_60 = mux(hazard.io_stage_mhold, ex_mem_wbcontrol_toreg, id_ex_wbcontrol_toreg) @[cpu.scala 357:32]
    node _T_57 = not(hazard.io_exmem_bubble) @[cpu.scala 368:35]
    node _T_58 = and(id_ex_excontrol_branch, _T_57) @[cpu.scala 368:32]
    node _T_59 = eq(id_ex_excontrol_prediction, branchCtrl.io_taken) @[cpu.scala 374:38]
    node _T_60 = add(bpCorrect, UInt<1>("h1")) @[cpu.scala 375:32]
    node _T_61 = tail(_T_60, 1) @[cpu.scala 375:32]
    node _T_62 = add(bpIncorrect, UInt<1>("h1")) @[cpu.scala 377:34]
    node _T_63 = tail(_T_62, 1) @[cpu.scala 377:34]
    node _GEN_61 = mux(_T_59, _T_61, bpCorrect) @[cpu.scala 374:63]
    node _GEN_62 = mux(_T_59, bpIncorrect, _T_63) @[cpu.scala 374:63]
    node _GEN_63 = mux(_T_58, UInt<1>("h1"), UInt<1>("h0")) @[cpu.scala 368:60]
    node _GEN_64 = validif(_T_58, branchCtrl.io_taken) @[cpu.scala 368:60]
    node _GEN_65 = mux(_T_58, _GEN_61, bpCorrect) @[cpu.scala 368:60]
    node _GEN_66 = mux(_T_58, _GEN_62, bpIncorrect) @[cpu.scala 368:60]
    node _T_64 = bits(id_ex_excontrol_jump, 1, 1) @[cpu.scala 387:29]
    node _T_65 = bits(id_ex_excontrol_jump, 0, 0) @[cpu.scala 389:31]
    node _T_66 = eq(_T_65, UInt<1>("h0")) @[cpu.scala 389:35]
    node _T_67 = mux(UInt<1>("h1"), UInt<31>("h7fffffff"), UInt<31>("h0")) @[Bitwise.scala 72:12]
    node _T_68 = cat(_T_67, UInt<1>("h0")) @[Cat.scala 29:58]
    node _T_69 = and(alu.io_result, _T_68) @[cpu.scala 395:38]
    node _GEN_67 = mux(_T_66, id_ex_branchpc, _T_69) @[cpu.scala 389:44]
    node _GEN_68 = mux(_T_66, UInt<1>("h1"), UInt<1>("h1")) @[cpu.scala 389:44]
    node _T_70 = neq(branchCtrl.io_taken, id_ex_excontrol_prediction) @[cpu.scala 400:31]
    node _T_71 = and(_T_70, id_ex_excontrol_branch) @[cpu.scala 400:62]
    node _GEN_69 = mux(branchCtrl.io_taken, id_ex_branchpc, id_ex_pcplusfour) @[cpu.scala 401:34]
    node _GEN_70 = validif(_T_71, _GEN_69) @[cpu.scala 400:89]
    node _GEN_71 = mux(_T_71, UInt<1>("h1"), UInt<1>("h0")) @[cpu.scala 400:89]
    node _GEN_72 = mux(_T_64, _GEN_67, _GEN_70) @[cpu.scala 387:34]
    node _GEN_73 = mux(_T_64, _GEN_68, _GEN_71) @[cpu.scala 387:34]
    node _T_72_sext = UInt<1>("h0") @[cpu.scala 413:37 cpu.scala 413:37]
    node _GEN_74 = mux(hazard.io_exmem_bubble, _T_72_sext, _GEN_54) @[cpu.scala 411:33]
    node _T_72_maskmode = UInt<2>("h0") @[cpu.scala 413:37 cpu.scala 413:37]
    node _GEN_75 = mux(hazard.io_exmem_bubble, _T_72_maskmode, _GEN_55) @[cpu.scala 411:33]
    node _T_72_taken = UInt<1>("h0") @[cpu.scala 413:37 cpu.scala 413:37]
    node _GEN_76 = mux(hazard.io_exmem_bubble, _T_72_taken, _GEN_73) @[cpu.scala 411:33]
    node _T_72_memwrite = UInt<1>("h0") @[cpu.scala 413:37 cpu.scala 413:37]
    node _GEN_77 = mux(hazard.io_exmem_bubble, _T_72_memwrite, _GEN_57) @[cpu.scala 411:33]
    node _T_72_memread = UInt<1>("h0") @[cpu.scala 413:37 cpu.scala 413:37]
    node _GEN_78 = mux(hazard.io_exmem_bubble, _T_72_memread, _GEN_58) @[cpu.scala 411:33]
    node _T_73_regwrite = UInt<1>("h0") @[cpu.scala 414:37 cpu.scala 414:37]
    node _GEN_79 = mux(hazard.io_exmem_bubble, _T_73_regwrite, _GEN_59) @[cpu.scala 411:33]
    node _T_73_toreg = UInt<2>("h0") @[cpu.scala 414:37 cpu.scala 414:37]
    node _GEN_80 = mux(hazard.io_exmem_bubble, _T_73_toreg, _GEN_60) @[cpu.scala 411:33]
    node _T_74 = bits(reset, 0, 0) @[cpu.scala 417:27]
    node _T_75 = eq(_T_74, UInt<1>("h0")) @[cpu.scala 417:27]
    node _GEN_81 = mux(hazard.io_stage_mhold, mem_wb_writereg, ex_mem_writereg) @[cpu.scala 448:32]
    node _GEN_82 = mux(hazard.io_stage_mhold, mem_wb_aluresult, ex_mem_aluresult) @[cpu.scala 448:32]
    node _GEN_83 = mux(hazard.io_stage_mhold, mem_wb_pcplusfour, ex_mem_pcplusfour) @[cpu.scala 448:32]
    node _GEN_84 = mux(hazard.io_stage_mhold, mem_wb_readdata, io_dmem_readdata) @[cpu.scala 448:32]
    node _GEN_85 = mux(hazard.io_stage_mhold, mem_wb_wbcontrol_regwrite, ex_mem_wbcontrol_regwrite) @[cpu.scala 448:32]
    node _GEN_86 = mux(hazard.io_stage_mhold, mem_wb_wbcontrol_toreg, ex_mem_wbcontrol_toreg) @[cpu.scala 448:32]
    node _T_76 = bits(reset, 0, 0) @[cpu.scala 457:27]
    node _T_77 = eq(_T_76, UInt<1>("h0")) @[cpu.scala 457:27]
    node _T_84 = neq(registers.io_writereg, UInt<1>("h0")) @[cpu.scala 472:81]
    node _T_85 = and(mem_wb_wbcontrol_regwrite, _T_84) @[cpu.scala 472:55]
    node _T_86 = bits(reset, 0, 0) @[cpu.scala 478:27]
    node _T_87 = eq(_T_86, UInt<1>("h0")) @[cpu.scala 478:27]
    node _T = _GEN_1 @[Counter.scala 67:24]
    node _T_4_instruction = UInt<32>("h0") @[cpu.scala 105:40 cpu.scala 105:40]
    node _T_4_pc = UInt<32>("h0") @[cpu.scala 105:40 cpu.scala 105:40]
    node _T_4_pcplusfour = UInt<32>("h0") @[cpu.scala 105:40 cpu.scala 105:40]
    node _T_5_writereg = UInt<5>("h0") @[cpu.scala 106:40 cpu.scala 106:40]
    node _T_5_funct7 = UInt<7>("h0") @[cpu.scala 106:40 cpu.scala 106:40]
    node _T_5_funct3 = UInt<3>("h0") @[cpu.scala 106:40 cpu.scala 106:40]
    node _T_5_imm = UInt<32>("h0") @[cpu.scala 106:40 cpu.scala 106:40]
    node _T_5_readdata2 = UInt<32>("h0") @[cpu.scala 106:40 cpu.scala 106:40]
    node _T_5_readdata1 = UInt<32>("h0") @[cpu.scala 106:40 cpu.scala 106:40]
    node _T_5_pc = UInt<32>("h0") @[cpu.scala 106:40 cpu.scala 106:40]
    node _T_5_pcplusfour = UInt<32>("h0") @[cpu.scala 106:40 cpu.scala 106:40]
    node _T_5_excontrol_add = UInt<1>("h0") @[cpu.scala 106:40 cpu.scala 106:40]
    node _T_5_excontrol_immediate = UInt<1>("h0") @[cpu.scala 106:40 cpu.scala 106:40]
    node _T_5_excontrol_alusrc1 = UInt<2>("h0") @[cpu.scala 106:40 cpu.scala 106:40]
    node _T_5_excontrol_branch = UInt<1>("h0") @[cpu.scala 106:40 cpu.scala 106:40]
    node _T_5_excontrol_jump = UInt<2>("h0") @[cpu.scala 106:40 cpu.scala 106:40]
    node _T_5_excontrol_prediction = UInt<1>("h0") @[cpu.scala 106:40 cpu.scala 106:40]
    node _T_5_mcontrol_memread = UInt<1>("h0") @[cpu.scala 106:40 cpu.scala 106:40]
    node _T_5_mcontrol_memwrite = UInt<1>("h0") @[cpu.scala 106:40 cpu.scala 106:40]
    node _T_5_mcontrol_taken = UInt<1>("h0") @[cpu.scala 106:40 cpu.scala 106:40]
    node _T_5_mcontrol_maskmode = UInt<2>("h0") @[cpu.scala 106:40 cpu.scala 106:40]
    node _T_5_mcontrol_sext = UInt<1>("h0") @[cpu.scala 106:40 cpu.scala 106:40]
    node _T_5_wbcontrol_toreg = UInt<2>("h0") @[cpu.scala 106:40 cpu.scala 106:40]
    node _T_5_wbcontrol_regwrite = UInt<1>("h0") @[cpu.scala 106:40 cpu.scala 106:40]
    node _T_5_rs1 = UInt<5>("h0") @[cpu.scala 106:40 cpu.scala 106:40]
    node _T_5_rs2 = UInt<5>("h0") @[cpu.scala 106:40 cpu.scala 106:40]
    node _T_5_branchpc = UInt<32>("h0") @[cpu.scala 106:40 cpu.scala 106:40]
    node _T_6_writereg = UInt<5>("h0") @[cpu.scala 107:40 cpu.scala 107:40]
    node _T_6_readdata2 = UInt<32>("h0") @[cpu.scala 107:40 cpu.scala 107:40]
    node _T_6_aluresult = UInt<32>("h0") @[cpu.scala 107:40 cpu.scala 107:40]
    node _T_6_nextpc = UInt<32>("h0") @[cpu.scala 107:40 cpu.scala 107:40]
    node _T_6_pcplusfour = UInt<32>("h0") @[cpu.scala 107:40 cpu.scala 107:40]
    node _T_6_mcontrol_memread = UInt<1>("h0") @[cpu.scala 107:40 cpu.scala 107:40]
    node _T_6_mcontrol_memwrite = UInt<1>("h0") @[cpu.scala 107:40 cpu.scala 107:40]
    node _T_6_mcontrol_taken = UInt<1>("h0") @[cpu.scala 107:40 cpu.scala 107:40]
    node _T_6_mcontrol_maskmode = UInt<2>("h0") @[cpu.scala 107:40 cpu.scala 107:40]
    node _T_6_mcontrol_sext = UInt<1>("h0") @[cpu.scala 107:40 cpu.scala 107:40]
    node _T_6_wbcontrol_toreg = UInt<2>("h0") @[cpu.scala 107:40 cpu.scala 107:40]
    node _T_6_wbcontrol_regwrite = UInt<1>("h0") @[cpu.scala 107:40 cpu.scala 107:40]
    node _T_7_writereg = UInt<5>("h0") @[cpu.scala 108:40 cpu.scala 108:40]
    node _T_7_aluresult = UInt<32>("h0") @[cpu.scala 108:40 cpu.scala 108:40]
    node _T_7_readdata = UInt<32>("h0") @[cpu.scala 108:40 cpu.scala 108:40]
    node _T_7_pcplusfour = UInt<32>("h0") @[cpu.scala 108:40 cpu.scala 108:40]
    node _T_7_wbcontrol_toreg = UInt<2>("h0") @[cpu.scala 108:40 cpu.scala 108:40]
    node _T_7_wbcontrol_regwrite = UInt<1>("h0") @[cpu.scala 108:40 cpu.scala 108:40]
    node alu_inputx = _GEN_49 @[cpu.scala 313:24 cpu.scala 317:26 cpu.scala 318:26 cpu.scala 319:26]
    io_imem_address <= pc @[cpu.scala 146:19]
    io_dmem_address <= ex_mem_aluresult @[cpu.scala 424:21]
    io_dmem_writedata <= ex_mem_readdata2 @[cpu.scala 425:21]
    io_dmem_memread <= ex_mem_mcontrol_memread @[cpu.scala 426:21]
    io_dmem_memwrite <= ex_mem_mcontrol_memwrite @[cpu.scala 427:21]
    io_dmem_maskmode <= ex_mem_mcontrol_maskmode @[cpu.scala 428:21]
    io_dmem_sext <= ex_mem_mcontrol_sext @[cpu.scala 429:21]
    pc <= mux(reset, UInt<1>("h0"), _T_21) @[cpu.scala 137:6]
    control.clock <= clock
    control.reset <= reset
    control.io_opcode <= _T_28 @[cpu.scala 194:21]
    branchCtrl.clock <= clock
    branchCtrl.reset <= reset
    branchCtrl.io_branch <= id_ex_excontrol_branch @[cpu.scala 336:24]
    branchCtrl.io_funct3 <= id_ex_funct3 @[cpu.scala 337:24]
    branchCtrl.io_inputx <= forward_inputx @[cpu.scala 338:24]
    branchCtrl.io_inputy <= forward_inputy @[cpu.scala 339:24]
    registers.clock <= clock
    registers.reset <= reset
    registers.io_readreg1 <= rs1 @[cpu.scala 197:25]
    registers.io_readreg2 <= rs2 @[cpu.scala 198:25]
    registers.io_writereg <= mem_wb_writereg @[cpu.scala 471:26]
    registers.io_writedata <= write_data @[cpu.scala 470:26]
    registers.io_wen <= _T_85 @[cpu.scala 472:26]
    aluControl.clock <= clock
    aluControl.reset <= reset
    aluControl.io_add <= id_ex_excontrol_add @[cpu.scala 297:27]
    aluControl.io_immediate <= id_ex_excontrol_immediate @[cpu.scala 298:27]
    aluControl.io_funct7 <= id_ex_funct7 @[cpu.scala 299:27]
    aluControl.io_funct3 <= id_ex_funct3 @[cpu.scala 300:27]
    alu.clock <= clock
    alu.reset <= reset
    alu.io_operation <= aluControl.io_operation @[cpu.scala 342:23]
    alu.io_inputx <= alu_inputx @[cpu.scala 321:17]
    alu.io_inputy <= _T_56 @[cpu.scala 333:17]
    alu.io_multStart <= aluControl.io_startMult @[cpu.scala 303:20 cpu.scala 343:23]
    alu.io_multFinished <= aluControl.io_multFinished @[cpu.scala 344:23]
    immGen.clock <= clock
    immGen.reset <= reset
    immGen.io_instruction <= if_id_instruction @[cpu.scala 201:25]
    pcPlusFour.clock <= clock
    pcPlusFour.reset <= reset
    pcPlusFour.io_inputx <= pc @[cpu.scala 149:24]
    pcPlusFour.io_inputy <= UInt<3>("h4") @[cpu.scala 150:24]
    branchAdd.clock <= clock
    branchAdd.reset <= reset
    branchAdd.io_inputx <= if_id_pc @[cpu.scala 204:23]
    branchAdd.io_inputy <= immGen.io_sextImm @[cpu.scala 205:23]
    forwarding.clock <= clock
    forwarding.reset <= reset
    forwarding.io_rs1 <= id_ex_rs1 @[cpu.scala 293:21]
    forwarding.io_rs2 <= id_ex_rs2 @[cpu.scala 294:21]
    forwarding.io_exmemrd <= ex_mem_writereg @[cpu.scala 438:25]
    forwarding.io_exmemrw <= ex_mem_wbcontrol_regwrite @[cpu.scala 439:25]
    forwarding.io_memwbrd <= mem_wb_writereg @[cpu.scala 475:25]
    forwarding.io_memwbrw <= mem_wb_wbcontrol_regwrite @[cpu.scala 476:25]
    hazard.clock <= clock
    hazard.reset <= reset
    hazard.io_rs1 <= rs1 @[cpu.scala 183:17]
    hazard.io_rs2 <= rs2 @[cpu.scala 184:17]
    hazard.io_id_branch <= _T_27 @[cpu.scala 191:23]
    hazard.io_idex_memread <= id_ex_mcontrol_memread @[cpu.scala 289:26]
    hazard.io_idex_rd <= id_ex_writereg @[cpu.scala 290:26]
    hazard.io_exmem_taken <= ex_mem_mcontrol_taken @[cpu.scala 435:25]
    hazard.io_mstall <= aluControl.io_multHold @[cpu.scala 347:20]
    predictor.clock <= clock
    predictor.reset <= reset
    predictor.io_pc <= if_id_pc @[cpu.scala 187:19]
    predictor.io_update <= _GEN_63 @[cpu.scala 370:25 cpu.scala 382:25]
    predictor.io_taken <= _GEN_64 @[cpu.scala 371:25]
    value <= mux(reset, UInt<30>("h0"), _GEN_0) @[Counter.scala 39:13]
    if_id_instruction <= mux(reset, _T_4_instruction, _GEN_8) @[cpu.scala 155:23 cpu.scala 162:23 cpu.scala 168:23]
    if_id_pc <= mux(reset, _T_4_pc, _GEN_9) @[cpu.scala 156:23 cpu.scala 163:23 cpu.scala 169:23]
    if_id_pcplusfour <= mux(reset, _T_4_pcplusfour, _GEN_10) @[cpu.scala 157:23 cpu.scala 164:23 cpu.scala 170:23]
    id_ex_writereg <= mux(reset, _T_5_writereg, _GEN_24) @[cpu.scala 211:20 cpu.scala 250:22]
    id_ex_funct7 <= mux(reset, _T_5_funct7, _GEN_27) @[cpu.scala 214:20 cpu.scala 253:22]
    id_ex_funct3 <= mux(reset, _T_5_funct3, _GEN_28) @[cpu.scala 215:20 cpu.scala 254:22]
    id_ex_imm <= mux(reset, _T_5_imm, _GEN_29) @[cpu.scala 216:20 cpu.scala 255:22]
    id_ex_readdata2 <= mux(reset, _T_5_readdata2, _GEN_30) @[cpu.scala 217:20 cpu.scala 256:22]
    id_ex_readdata1 <= mux(reset, _T_5_readdata1, _GEN_31) @[cpu.scala 218:20 cpu.scala 257:22]
    id_ex_pc <= mux(reset, _T_5_pc, _GEN_32) @[cpu.scala 219:20 cpu.scala 258:22]
    id_ex_pcplusfour <= mux(reset, _T_5_pcplusfour, _GEN_33) @[cpu.scala 220:20 cpu.scala 259:22]
    id_ex_excontrol_add <= mux(reset, _T_5_excontrol_add, _GEN_35) @[cpu.scala 224:29 cpu.scala 243:21 cpu.scala 263:32]
    id_ex_excontrol_immediate <= mux(reset, _T_5_excontrol_immediate, _GEN_36) @[cpu.scala 225:29 cpu.scala 243:21 cpu.scala 264:32]
    id_ex_excontrol_alusrc1 <= mux(reset, _T_5_excontrol_alusrc1, _GEN_37) @[cpu.scala 226:29 cpu.scala 243:21 cpu.scala 265:32]
    id_ex_excontrol_branch <= mux(reset, _T_5_excontrol_branch, _GEN_38) @[cpu.scala 227:29 cpu.scala 243:21 cpu.scala 266:32]
    id_ex_excontrol_jump <= mux(reset, _T_5_excontrol_jump, _GEN_39) @[cpu.scala 228:29 cpu.scala 243:21 cpu.scala 267:32]
    id_ex_excontrol_prediction <= mux(reset, _T_5_excontrol_prediction, _GEN_40) @[cpu.scala 229:29 cpu.scala 243:21 cpu.scala 268:32]
    id_ex_mcontrol_memread <= mux(reset, _T_5_mcontrol_memread, _GEN_41) @[cpu.scala 232:27 cpu.scala 244:21 cpu.scala 271:29]
    id_ex_mcontrol_memwrite <= mux(reset, _T_5_mcontrol_memwrite, _GEN_42) @[cpu.scala 233:27 cpu.scala 244:21 cpu.scala 272:29]
    id_ex_mcontrol_taken <= mux(reset, _T_5_mcontrol_taken, _GEN_19) @[cpu.scala 244:21]
    id_ex_mcontrol_maskmode <= mux(reset, _T_5_mcontrol_maskmode, _GEN_43) @[cpu.scala 234:27 cpu.scala 244:21 cpu.scala 273:29]
    id_ex_mcontrol_sext <= mux(reset, _T_5_mcontrol_sext, _GEN_44) @[cpu.scala 235:27 cpu.scala 244:21 cpu.scala 274:29]
    id_ex_wbcontrol_toreg <= mux(reset, _T_5_wbcontrol_toreg, _GEN_45) @[cpu.scala 238:28 cpu.scala 245:21 cpu.scala 277:30]
    id_ex_wbcontrol_regwrite <= mux(reset, _T_5_wbcontrol_regwrite, _GEN_46) @[cpu.scala 239:28 cpu.scala 245:21 cpu.scala 278:30]
    id_ex_rs1 <= mux(reset, _T_5_rs1, _GEN_25) @[cpu.scala 212:20 cpu.scala 251:22]
    id_ex_rs2 <= mux(reset, _T_5_rs2, _GEN_26) @[cpu.scala 213:20 cpu.scala 252:22]
    id_ex_branchpc <= mux(reset, _T_5_branchpc, _GEN_34) @[cpu.scala 221:20 cpu.scala 260:22]
    ex_mem_writereg <= mux(reset, _T_6_writereg, _GEN_52) @[cpu.scala 352:21 cpu.scala 361:23]
    ex_mem_readdata2 <= mux(reset, _T_6_readdata2, _GEN_50) @[cpu.scala 350:21 cpu.scala 359:23]
    ex_mem_aluresult <= mux(reset, _T_6_aluresult, _GEN_51) @[cpu.scala 351:21 cpu.scala 360:23]
    ex_mem_nextpc <= mux(reset, _T_6_nextpc, _GEN_72) @[cpu.scala 391:21 cpu.scala 395:21 cpu.scala 401:50 cpu.scala 402:34]
    ex_mem_pcplusfour <= mux(reset, _T_6_pcplusfour, _GEN_53) @[cpu.scala 353:21 cpu.scala 362:23]
    ex_mem_mcontrol_memread <= mux(reset, _T_6_mcontrol_memread, _GEN_78) @[cpu.scala 354:21 cpu.scala 363:23 cpu.scala 413:22]
    ex_mem_mcontrol_memwrite <= mux(reset, _T_6_mcontrol_memwrite, _GEN_77) @[cpu.scala 354:21 cpu.scala 363:23 cpu.scala 413:22]
    ex_mem_mcontrol_taken <= mux(reset, _T_6_mcontrol_taken, _GEN_76) @[cpu.scala 354:21 cpu.scala 363:23 cpu.scala 392:29 cpu.scala 396:29 cpu.scala 403:29 cpu.scala 405:30 cpu.scala 413:22]
    ex_mem_mcontrol_maskmode <= mux(reset, _T_6_mcontrol_maskmode, _GEN_75) @[cpu.scala 354:21 cpu.scala 363:23 cpu.scala 413:22]
    ex_mem_mcontrol_sext <= mux(reset, _T_6_mcontrol_sext, _GEN_74) @[cpu.scala 354:21 cpu.scala 363:23 cpu.scala 413:22]
    ex_mem_wbcontrol_toreg <= mux(reset, _T_6_wbcontrol_toreg, _GEN_80) @[cpu.scala 355:21 cpu.scala 364:23 cpu.scala 414:22]
    ex_mem_wbcontrol_regwrite <= mux(reset, _T_6_wbcontrol_regwrite, _GEN_79) @[cpu.scala 355:21 cpu.scala 364:23 cpu.scala 414:22]
    mem_wb_writereg <= mux(reset, _T_7_writereg, _GEN_81) @[cpu.scala 442:21 cpu.scala 450:23]
    mem_wb_aluresult <= mux(reset, _T_7_aluresult, _GEN_82) @[cpu.scala 443:21 cpu.scala 451:23]
    mem_wb_readdata <= mux(reset, _T_7_readdata, _GEN_84) @[cpu.scala 445:21 cpu.scala 453:23]
    mem_wb_pcplusfour <= mux(reset, _T_7_pcplusfour, _GEN_83) @[cpu.scala 444:21 cpu.scala 452:23]
    mem_wb_wbcontrol_toreg <= mux(reset, _T_7_wbcontrol_toreg, _GEN_86) @[cpu.scala 446:21 cpu.scala 454:23]
    mem_wb_wbcontrol_regwrite <= mux(reset, _T_7_wbcontrol_regwrite, _GEN_85) @[cpu.scala 446:21 cpu.scala 454:23]
    bpCorrect <= mux(reset, UInt<32>("h0"), _GEN_65) @[cpu.scala 375:19]
    bpIncorrect <= mux(reset, UInt<32>("h0"), _GEN_66) @[cpu.scala 377:19]
    printf(clock, and(and(UInt<1>("h1"), _T_9), UInt<1>("h1")), "Cycle=%d ", value) @[cpu.scala 110:27]
    printf(clock, and(and(and(UInt<1>("h1"), _T_11), _T_13), UInt<1>("h1")), "BP correct: %d; incorrect: %d\n", bpCorrect, bpIncorrect) @[cpu.scala 117:11]
    printf(clock, and(and(UInt<1>("h1"), _T_23), UInt<1>("h1")), "PC: %d\n", pc) @[cpu.scala 143:27]
    printf(clock, and(and(UInt<1>("h1"), _T_26), UInt<1>("h1")), "IF/ID: IFIDBundle(instruction -> %d, pc -> %d, pcplusfour -> %d)\n", if_id_instruction, if_id_pc, if_id_pcplusfour) @[cpu.scala 173:27]
    printf(clock, and(and(UInt<1>("h1"), _T_39), UInt<1>("h1")), "DASM(%x)\n", if_id_instruction) @[cpu.scala 281:27]
    printf(clock, and(and(UInt<1>("h1"), _T_41), UInt<1>("h1")), "ID/EX: IDEXBundle(writereg -> %d, funct7 -> %d, funct3 -> %d, imm -> %d, readdata2 -> %d, readdata1 -> %d, pc -> %d, pcplusfour -> %d, excontrol -> EXControl(add -> %d, immediate -> %d, alusrc1 -> %d, branch -> %d, jump -> %d, prediction -> %d), mcontrol -> MControl(memread -> %d, memwrite -> %d, taken -> %d, maskmode -> %d, sext -> %d), wbcontrol -> WBControl(toreg -> %d, regwrite -> %d), rs1 -> %d, rs2 -> %d, branchpc -> %d)\n", id_ex_writereg, id_ex_funct7, id_ex_funct3, id_ex_imm, id_ex_readdata2, id_ex_readdata1, id_ex_pc, id_ex_pcplusfour, id_ex_excontrol_add, id_ex_excontrol_immediate, id_ex_excontrol_alusrc1, id_ex_excontrol_branch, id_ex_excontrol_jump, id_ex_excontrol_prediction, id_ex_mcontrol_memread, id_ex_mcontrol_memwrite, id_ex_mcontrol_taken, id_ex_mcontrol_maskmode, id_ex_mcontrol_sext, id_ex_wbcontrol_toreg, id_ex_wbcontrol_regwrite, id_ex_rs1, id_ex_rs2, id_ex_branchpc) @[cpu.scala 282:27]
    printf(clock, and(and(UInt<1>("h1"), _T_75), UInt<1>("h1")), "EX/MEM: EXMEMBundle(writereg -> %d, readdata2 -> %d, aluresult -> %d, nextpc -> %d, pcplusfour -> %d, mcontrol -> MControl(memread -> %d, memwrite -> %d, taken -> %d, maskmode -> %d, sext -> %d), wbcontrol -> WBControl(toreg -> %d, regwrite -> %d))\n", ex_mem_writereg, ex_mem_readdata2, ex_mem_aluresult, ex_mem_nextpc, ex_mem_pcplusfour, ex_mem_mcontrol_memread, ex_mem_mcontrol_memwrite, ex_mem_mcontrol_taken, ex_mem_mcontrol_maskmode, ex_mem_mcontrol_sext, ex_mem_wbcontrol_toreg, ex_mem_wbcontrol_regwrite) @[cpu.scala 417:27]
    printf(clock, and(and(UInt<1>("h1"), _T_77), UInt<1>("h1")), "MEM/WB: MEMWBBundle(writereg -> %d, aluresult -> %d, readdata -> %d, pcplusfour -> %d, wbcontrol -> WBControl(toreg -> %d, regwrite -> %d))\n", mem_wb_writereg, mem_wb_aluresult, mem_wb_readdata, mem_wb_pcplusfour, mem_wb_wbcontrol_toreg, mem_wb_wbcontrol_regwrite) @[cpu.scala 457:27]
    printf(clock, and(and(UInt<1>("h1"), _T_87), UInt<1>("h1")), "---------------------------------------------\n") @[cpu.scala 478:27]
