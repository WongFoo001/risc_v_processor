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
    node _T_2 = bits(mpl, 2, 0) @[Booth8Cycle.scala 57:28]
    node first_op = _T_1 @[Booth8Cycle.scala 34:31 Booth8Cycle.scala 46:16]
    node _GEN_0 = mux(io_start, first_op, _T_2) @[Booth8Cycle.scala 49:19]
    node first_upAcc = pad(UInt<1>("h0"), 16) @[Booth8Cycle.scala 32:31 Booth8Cycle.scala 44:16]
    node _GEN_1 = mux(io_start, first_upAcc, accUpper) @[Booth8Cycle.scala 49:19]
    node first_mcd = io_multiplicand @[Booth8Cycle.scala 33:31 Booth8Cycle.scala 45:16]
    node _GEN_2 = mux(io_start, first_mcd, mcd) @[Booth8Cycle.scala 49:19]
    node operation = _GEN_0 @[Booth8Cycle.scala 27:23 Booth8Cycle.scala 51:22 Booth8Cycle.scala 57:22]
    node _T_3 = eq(UInt<1>("h0"), operation) @[Conditional.scala 37:30]
    node _T_4 = eq(UInt<1>("h1"), operation) @[Conditional.scala 37:30]
    node accumulatorUpper = _GEN_1 @[Booth8Cycle.scala 30:31 Booth8Cycle.scala 52:22 Booth8Cycle.scala 58:22]
    node calcMultiplicand = _GEN_2 @[Booth8Cycle.scala 31:31 Booth8Cycle.scala 53:22 Booth8Cycle.scala 59:22]
    node _T_5 = add(accumulatorUpper, calcMultiplicand) @[Booth8Cycle.scala 69:35]
    node _T_6 = tail(_T_5, 1) @[Booth8Cycle.scala 69:35]
    node _T_7 = eq(UInt<2>("h2"), operation) @[Conditional.scala 37:30]
    node _T_8 = add(accumulatorUpper, calcMultiplicand) @[Booth8Cycle.scala 74:35]
    node _T_9 = tail(_T_8, 1) @[Booth8Cycle.scala 74:35]
    node _T_10 = eq(UInt<2>("h3"), operation) @[Conditional.scala 37:30]
    node _T_11 = dshl(calcMultiplicand, UInt<1>("h1")) @[Booth8Cycle.scala 79:55]
    node _T_12 = add(accumulatorUpper, _T_11) @[Booth8Cycle.scala 79:35]
    node _T_13 = tail(_T_12, 1) @[Booth8Cycle.scala 79:35]
    node _T_14 = eq(UInt<3>("h4"), operation) @[Conditional.scala 37:30]
    node _T_15 = dshl(calcMultiplicand, UInt<1>("h1")) @[Booth8Cycle.scala 84:55]
    node _T_16 = sub(accumulatorUpper, _T_15) @[Booth8Cycle.scala 84:35]
    node _T_17 = tail(_T_16, 1) @[Booth8Cycle.scala 84:35]
    node _T_18 = eq(UInt<3>("h5"), operation) @[Conditional.scala 37:30]
    node _T_19 = sub(accumulatorUpper, calcMultiplicand) @[Booth8Cycle.scala 89:35]
    node _T_20 = tail(_T_19, 1) @[Booth8Cycle.scala 89:35]
    node _T_21 = eq(UInt<3>("h6"), operation) @[Conditional.scala 37:30]
    node _T_22 = sub(accumulatorUpper, calcMultiplicand) @[Booth8Cycle.scala 94:35]
    node _T_23 = tail(_T_22, 1) @[Booth8Cycle.scala 94:35]
    node _T_24 = eq(UInt<3>("h7"), operation) @[Conditional.scala 37:30]
    node _GEN_3 = validif(_T_24, accumulatorUpper) @[Conditional.scala 39:67]
    node _GEN_4 = mux(_T_21, _T_23, _GEN_3) @[Conditional.scala 39:67]
    node _GEN_5 = mux(_T_18, _T_20, _GEN_4) @[Conditional.scala 39:67]
    node _GEN_6 = mux(_T_14, _T_17, _GEN_5) @[Conditional.scala 39:67]
    node _GEN_7 = mux(_T_10, _T_13, _GEN_6) @[Conditional.scala 39:67]
    node _GEN_8 = mux(_T_7, _T_9, _GEN_7) @[Conditional.scala 39:67]
    node _GEN_9 = mux(_T_4, _T_6, _GEN_8) @[Conditional.scala 39:67]
    node _GEN_10 = mux(_T_3, accumulatorUpper, _GEN_9) @[Conditional.scala 40:58]
    node accCalc = bits(_GEN_10, 15, 0) @[Booth8Cycle.scala 25:23 Booth8Cycle.scala 65:15 Booth8Cycle.scala 69:15 Booth8Cycle.scala 74:15 Booth8Cycle.scala 79:15 Booth8Cycle.scala 84:15 Booth8Cycle.scala 89:15 Booth8Cycle.scala 94:15 Booth8Cycle.scala 100:15]
    node _T_25 = bits(accCalc, 15, 15) @[Booth8Cycle.scala 106:28]
    node _T_26 = bits(accCalc, 15, 15) @[Booth8Cycle.scala 106:41]
    node _T_27 = cat(UInt<1>("h0"), UInt<1>("h0")) @[Cat.scala 29:58]
    node _T_28 = cat(UInt<1>("h0"), UInt<1>("h0")) @[Cat.scala 29:58]
    node _T_29 = cat(_T_28, _T_27) @[Cat.scala 29:58]
    node _T_30 = cat(UInt<1>("h0"), UInt<1>("h0")) @[Cat.scala 29:58]
    node _T_31 = cat(UInt<1>("h0"), UInt<1>("h0")) @[Cat.scala 29:58]
    node _T_32 = cat(_T_31, _T_30) @[Cat.scala 29:58]
    node _T_33 = cat(_T_32, _T_29) @[Cat.scala 29:58]
    node _T_34 = cat(UInt<1>("h0"), UInt<1>("h0")) @[Cat.scala 29:58]
    node _T_35 = cat(UInt<1>("h0"), UInt<1>("h0")) @[Cat.scala 29:58]
    node _T_36 = cat(_T_35, _T_34) @[Cat.scala 29:58]
    node _T_37 = cat(UInt<1>("h0"), UInt<1>("h0")) @[Cat.scala 29:58]
    node _T_38 = cat(_T_25, _T_26) @[Cat.scala 29:58]
    node _T_39 = cat(_T_38, accCalc) @[Cat.scala 29:58]
    node _T_40 = cat(_T_39, _T_37) @[Cat.scala 29:58]
    node _T_41 = cat(_T_40, _T_36) @[Cat.scala 29:58]
    node _T_42 = cat(_T_41, _T_33) @[Cat.scala 29:58]
    node _T_43 = bits(accCalc, 15, 15) @[Booth8Cycle.scala 109:28]
    node _T_44 = bits(accCalc, 15, 15) @[Booth8Cycle.scala 109:41]
    node _T_45 = bits(accLower, 15, 2) @[Booth8Cycle.scala 109:64]
    node _T_46 = cat(accCalc, _T_45) @[Cat.scala 29:58]
    node _T_47 = cat(_T_43, _T_44) @[Cat.scala 29:58]
    node _T_48 = cat(_T_47, _T_46) @[Cat.scala 29:58]
    node _GEN_11 = mux(io_start, _T_42, _T_48) @[Booth8Cycle.scala 105:19]
    node _T_49 = dshr(mpl, UInt<2>("h2")) @[Booth8Cycle.scala 113:19]
    node accShift = _GEN_11 @[Booth8Cycle.scala 26:23 Booth8Cycle.scala 106:14 Booth8Cycle.scala 109:14]
    node _T_50 = bits(accShift, 31, 16) @[Booth8Cycle.scala 125:25]
    node _T_51 = bits(accShift, 15, 0) @[Booth8Cycle.scala 126:25]
    node _T_52 = cat(io_multiplier, UInt<1>("h0")) @[Cat.scala 29:58]
    node _T_53 = dshr(_T_52, UInt<2>("h2")) @[Booth8Cycle.scala 128:41]
    node _T_54 = not(io_finished) @[Booth8Cycle.scala 134:11]
    node _T_55 = bits(accShift, 31, 16) @[Booth8Cycle.scala 142:27]
    node _T_56 = bits(accShift, 15, 0) @[Booth8Cycle.scala 143:27]
    node _GEN_12 = mux(_T_54, mcd, mcd) @[Booth8Cycle.scala 134:25]
    node nextMPL = _T_49 @[Booth8Cycle.scala 28:23 Booth8Cycle.scala 113:12]
    node _GEN_13 = mux(_T_54, nextMPL, mpl) @[Booth8Cycle.scala 134:25]
    node _GEN_14 = mux(_T_54, _T_55, accUpper) @[Booth8Cycle.scala 134:25]
    node _GEN_15 = mux(_T_54, _T_56, accLower) @[Booth8Cycle.scala 134:25]
    node _GEN_16 = validif(eq(_T_54, UInt<1>("h0")), accShift) @[Booth8Cycle.scala 134:25]
    node _GEN_17 = mux(io_start, _T_50, _GEN_14) @[Booth8Cycle.scala 122:19]
    node _GEN_18 = mux(io_start, _T_51, _GEN_15) @[Booth8Cycle.scala 122:19]
    node _GEN_19 = mux(io_start, io_multiplicand, _GEN_12) @[Booth8Cycle.scala 122:19]
    node _GEN_20 = mux(io_start, _T_53, _GEN_13) @[Booth8Cycle.scala 122:19]
    node _GEN_21 = validif(eq(io_start, UInt<1>("h0")), _GEN_16) @[Booth8Cycle.scala 122:19]
    io_product <= _GEN_21 @[Booth8Cycle.scala 147:18]
    accUpper <= mux(reset, UInt<16>("h0"), _GEN_17) @[Booth8Cycle.scala 125:14 Booth8Cycle.scala 142:16]
    accLower <= mux(reset, UInt<16>("h0"), _GEN_18) @[Booth8Cycle.scala 126:14 Booth8Cycle.scala 143:16]
    mcd <= mux(reset, UInt<16>("h0"), _GEN_19) @[Booth8Cycle.scala 127:14 Booth8Cycle.scala 140:16]
    mpl <= mux(reset, UInt<17>("h0"), _GEN_20) @[Booth8Cycle.scala 128:14 Booth8Cycle.scala 141:16]
    iter <= mux(reset, UInt<5>("h0"), iter)

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
  
    inst control of Control @[cpu.scala 92:26]
    inst branchCtrl of BranchControl @[cpu.scala 93:26]
    inst registers of RegisterFile @[cpu.scala 94:26]
    inst aluControl of ALUControl @[cpu.scala 95:26]
    inst alu of ALU @[cpu.scala 96:26]
    inst immGen of ImmediateGenerator @[cpu.scala 97:26]
    inst pcPlusFour of Adder @[cpu.scala 98:26]
    inst branchAdd of Adder @[cpu.scala 99:26]
    inst forwarding of ForwardingUnit @[cpu.scala 100:26]
    inst hazard of HazardUnit @[cpu.scala 101:26]
    inst predictor of AlwaysNotTakenPredictor @[cpu.scala 102:26]
    reg pc : UInt<32>, clock with :
      reset => (UInt<1>("h0"), pc) @[cpu.scala 91:27]
    reg value : UInt<30>, clock with :
      reset => (UInt<1>("h0"), value) @[Counter.scala 29:33]
    node _T_1 = eq(value, UInt<30>("h3fffffff")) @[Counter.scala 38:24]
    node _T_2 = add(value, UInt<1>("h1")) @[Counter.scala 39:22]
    node _T_3 = tail(_T_2, 1) @[Counter.scala 39:22]
    node _GEN_0 = mux(UInt<1>("h1"), _T_3, value) @[Counter.scala 67:17]
    node _GEN_1 = mux(UInt<1>("h1"), _T_1, UInt<1>("h0")) @[Counter.scala 67:17]
    reg if_id_instruction : UInt<32>, clock with :
      reset => (UInt<1>("h0"), if_id_instruction) @[cpu.scala 106:27]
    reg if_id_pc : UInt<32>, clock with :
      reset => (UInt<1>("h0"), if_id_pc) @[cpu.scala 106:27]
    reg if_id_pcplusfour : UInt<32>, clock with :
      reset => (UInt<1>("h0"), if_id_pcplusfour) @[cpu.scala 106:27]
    reg id_ex_writereg : UInt<5>, clock with :
      reset => (UInt<1>("h0"), id_ex_writereg) @[cpu.scala 107:27]
    reg id_ex_opcode : UInt<7>, clock with :
      reset => (UInt<1>("h0"), id_ex_opcode) @[cpu.scala 107:27]
    reg id_ex_funct7 : UInt<7>, clock with :
      reset => (UInt<1>("h0"), id_ex_funct7) @[cpu.scala 107:27]
    reg id_ex_funct3 : UInt<3>, clock with :
      reset => (UInt<1>("h0"), id_ex_funct3) @[cpu.scala 107:27]
    reg id_ex_imm : UInt<32>, clock with :
      reset => (UInt<1>("h0"), id_ex_imm) @[cpu.scala 107:27]
    reg id_ex_readdata2 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), id_ex_readdata2) @[cpu.scala 107:27]
    reg id_ex_readdata1 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), id_ex_readdata1) @[cpu.scala 107:27]
    reg id_ex_pc : UInt<32>, clock with :
      reset => (UInt<1>("h0"), id_ex_pc) @[cpu.scala 107:27]
    reg id_ex_pcplusfour : UInt<32>, clock with :
      reset => (UInt<1>("h0"), id_ex_pcplusfour) @[cpu.scala 107:27]
    reg id_ex_excontrol_add : UInt<1>, clock with :
      reset => (UInt<1>("h0"), id_ex_excontrol_add) @[cpu.scala 107:27]
    reg id_ex_excontrol_immediate : UInt<1>, clock with :
      reset => (UInt<1>("h0"), id_ex_excontrol_immediate) @[cpu.scala 107:27]
    reg id_ex_excontrol_alusrc1 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), id_ex_excontrol_alusrc1) @[cpu.scala 107:27]
    reg id_ex_excontrol_branch : UInt<1>, clock with :
      reset => (UInt<1>("h0"), id_ex_excontrol_branch) @[cpu.scala 107:27]
    reg id_ex_excontrol_jump : UInt<2>, clock with :
      reset => (UInt<1>("h0"), id_ex_excontrol_jump) @[cpu.scala 107:27]
    reg id_ex_excontrol_prediction : UInt<1>, clock with :
      reset => (UInt<1>("h0"), id_ex_excontrol_prediction) @[cpu.scala 107:27]
    reg id_ex_mcontrol_memread : UInt<1>, clock with :
      reset => (UInt<1>("h0"), id_ex_mcontrol_memread) @[cpu.scala 107:27]
    reg id_ex_mcontrol_memwrite : UInt<1>, clock with :
      reset => (UInt<1>("h0"), id_ex_mcontrol_memwrite) @[cpu.scala 107:27]
    reg id_ex_mcontrol_taken : UInt<1>, clock with :
      reset => (UInt<1>("h0"), id_ex_mcontrol_taken) @[cpu.scala 107:27]
    reg id_ex_mcontrol_maskmode : UInt<2>, clock with :
      reset => (UInt<1>("h0"), id_ex_mcontrol_maskmode) @[cpu.scala 107:27]
    reg id_ex_mcontrol_sext : UInt<1>, clock with :
      reset => (UInt<1>("h0"), id_ex_mcontrol_sext) @[cpu.scala 107:27]
    reg id_ex_wbcontrol_toreg : UInt<2>, clock with :
      reset => (UInt<1>("h0"), id_ex_wbcontrol_toreg) @[cpu.scala 107:27]
    reg id_ex_wbcontrol_regwrite : UInt<1>, clock with :
      reset => (UInt<1>("h0"), id_ex_wbcontrol_regwrite) @[cpu.scala 107:27]
    reg id_ex_rs1 : UInt<5>, clock with :
      reset => (UInt<1>("h0"), id_ex_rs1) @[cpu.scala 107:27]
    reg id_ex_rs2 : UInt<5>, clock with :
      reset => (UInt<1>("h0"), id_ex_rs2) @[cpu.scala 107:27]
    reg id_ex_branchpc : UInt<32>, clock with :
      reset => (UInt<1>("h0"), id_ex_branchpc) @[cpu.scala 107:27]
    reg ex_mem_writereg : UInt<5>, clock with :
      reset => (UInt<1>("h0"), ex_mem_writereg) @[cpu.scala 108:27]
    reg ex_mem_readdata2 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), ex_mem_readdata2) @[cpu.scala 108:27]
    reg ex_mem_aluresult : UInt<32>, clock with :
      reset => (UInt<1>("h0"), ex_mem_aluresult) @[cpu.scala 108:27]
    reg ex_mem_nextpc : UInt<32>, clock with :
      reset => (UInt<1>("h0"), ex_mem_nextpc) @[cpu.scala 108:27]
    reg ex_mem_pcplusfour : UInt<32>, clock with :
      reset => (UInt<1>("h0"), ex_mem_pcplusfour) @[cpu.scala 108:27]
    reg ex_mem_mcontrol_memread : UInt<1>, clock with :
      reset => (UInt<1>("h0"), ex_mem_mcontrol_memread) @[cpu.scala 108:27]
    reg ex_mem_mcontrol_memwrite : UInt<1>, clock with :
      reset => (UInt<1>("h0"), ex_mem_mcontrol_memwrite) @[cpu.scala 108:27]
    reg ex_mem_mcontrol_taken : UInt<1>, clock with :
      reset => (UInt<1>("h0"), ex_mem_mcontrol_taken) @[cpu.scala 108:27]
    reg ex_mem_mcontrol_maskmode : UInt<2>, clock with :
      reset => (UInt<1>("h0"), ex_mem_mcontrol_maskmode) @[cpu.scala 108:27]
    reg ex_mem_mcontrol_sext : UInt<1>, clock with :
      reset => (UInt<1>("h0"), ex_mem_mcontrol_sext) @[cpu.scala 108:27]
    reg ex_mem_wbcontrol_toreg : UInt<2>, clock with :
      reset => (UInt<1>("h0"), ex_mem_wbcontrol_toreg) @[cpu.scala 108:27]
    reg ex_mem_wbcontrol_regwrite : UInt<1>, clock with :
      reset => (UInt<1>("h0"), ex_mem_wbcontrol_regwrite) @[cpu.scala 108:27]
    reg mem_wb_writereg : UInt<5>, clock with :
      reset => (UInt<1>("h0"), mem_wb_writereg) @[cpu.scala 109:27]
    reg mem_wb_aluresult : UInt<32>, clock with :
      reset => (UInt<1>("h0"), mem_wb_aluresult) @[cpu.scala 109:27]
    reg mem_wb_readdata : UInt<32>, clock with :
      reset => (UInt<1>("h0"), mem_wb_readdata) @[cpu.scala 109:27]
    reg mem_wb_pcplusfour : UInt<32>, clock with :
      reset => (UInt<1>("h0"), mem_wb_pcplusfour) @[cpu.scala 109:27]
    reg mem_wb_wbcontrol_toreg : UInt<2>, clock with :
      reset => (UInt<1>("h0"), mem_wb_wbcontrol_toreg) @[cpu.scala 109:27]
    reg mem_wb_wbcontrol_regwrite : UInt<1>, clock with :
      reset => (UInt<1>("h0"), mem_wb_wbcontrol_regwrite) @[cpu.scala 109:27]
    node _T_8 = bits(reset, 0, 0) @[cpu.scala 111:27]
    node _T_9 = eq(_T_8, UInt<1>("h0")) @[cpu.scala 111:27]
    reg bpCorrect : UInt<32>, clock with :
      reset => (UInt<1>("h0"), bpCorrect) @[cpu.scala 114:28]
    reg bpIncorrect : UInt<32>, clock with :
      reset => (UInt<1>("h0"), bpIncorrect) @[cpu.scala 115:28]
    node _T_10 = shl(UInt<1>("h1"), 20) @[cpu.scala 116:26]
    node _T_11 = gt(bpCorrect, _T_10) @[cpu.scala 116:19]
    node _T_12 = bits(reset, 0, 0) @[cpu.scala 118:11]
    node _T_13 = eq(_T_12, UInt<1>("h0")) @[cpu.scala 118:11]
    node _T_14 = eq(hazard.io_pcwrite, UInt<1>("h0")) @[cpu.scala 139:36]
    node _T_15 = eq(hazard.io_pcwrite, UInt<1>("h1")) @[cpu.scala 140:36]
    node _T_16 = eq(hazard.io_pcwrite, UInt<2>("h2")) @[cpu.scala 141:36]
    node _T_17 = eq(hazard.io_pcwrite, UInt<2>("h3")) @[cpu.scala 142:36]
    node id_next_pc = branchAdd.io_result @[cpu.scala 127:24 cpu.scala 214:14]
    node _T_18 = mux(_T_17, id_next_pc, UInt<1>("h0")) @[Mux.scala 87:16]
    node _T_19 = mux(_T_16, pc, _T_18) @[Mux.scala 87:16]
    node mem_next_pc = ex_mem_nextpc @[cpu.scala 124:25 cpu.scala 441:15]
    node _T_20 = mux(_T_15, mem_next_pc, _T_19) @[Mux.scala 87:16]
    node _T_21 = mux(_T_14, pcPlusFour.io_result, _T_20) @[Mux.scala 87:16]
    node _T_22 = bits(reset, 0, 0) @[cpu.scala 148:27]
    node _T_23 = eq(_T_22, UInt<1>("h0")) @[cpu.scala 148:27]
    node _T_24 = bits(reset, 0, 0) @[cpu.scala 149:27]
    node _T_25 = eq(_T_24, UInt<1>("h0")) @[cpu.scala 149:27]
    node _T_26 = not(hazard.io_ifid_bubble) @[cpu.scala 160:9]
    node _GEN_2 = mux(_T_26, io_imem_instruction, if_id_instruction) @[cpu.scala 160:33]
    node _GEN_3 = mux(_T_26, pc, if_id_pc) @[cpu.scala 160:33]
    node _GEN_4 = mux(_T_26, pcPlusFour.io_result, if_id_pcplusfour) @[cpu.scala 160:33]
    node _GEN_5 = mux(hazard.io_ifid_flush, UInt<1>("h0"), _GEN_2) @[cpu.scala 167:31]
    node _GEN_6 = mux(hazard.io_ifid_flush, UInt<1>("h0"), _GEN_3) @[cpu.scala 167:31]
    node _GEN_7 = mux(hazard.io_ifid_flush, UInt<1>("h0"), _GEN_4) @[cpu.scala 167:31]
    node _GEN_8 = mux(hazard.io_stage_mhold, if_id_instruction, _GEN_5) @[cpu.scala 173:32]
    node _GEN_9 = mux(hazard.io_stage_mhold, if_id_pc, _GEN_6) @[cpu.scala 173:32]
    node _GEN_10 = mux(hazard.io_stage_mhold, if_id_pcplusfour, _GEN_7) @[cpu.scala 173:32]
    node _T_27 = bits(reset, 0, 0) @[cpu.scala 179:27]
    node _T_28 = eq(_T_27, UInt<1>("h0")) @[cpu.scala 179:27]
    node rs1 = bits(if_id_instruction, 19, 15) @[cpu.scala 185:30]
    node rs2 = bits(if_id_instruction, 24, 20) @[cpu.scala 186:30]
    node _T_29 = and(control.io_branch, predictor.io_prediction) @[cpu.scala 197:44]
    node _T_30 = bits(if_id_instruction, 6, 0) @[cpu.scala 200:41]
    node _T_31 = bits(if_id_instruction, 11, 7) @[cpu.scala 217:40]
    node _T_32 = bits(if_id_instruction, 6, 0) @[cpu.scala 220:40]
    node _T_33 = bits(if_id_instruction, 31, 25) @[cpu.scala 221:40]
    node _T_34 = bits(if_id_instruction, 14, 12) @[cpu.scala 222:40]
    node _T_35 = bits(if_id_instruction, 13, 12) @[cpu.scala 241:47]
    node _T_36 = bits(if_id_instruction, 14, 14) @[cpu.scala 242:48]
    node _T_37 = not(_T_36) @[cpu.scala 242:30]
    node _T_38_prediction = UInt<1>("h0") @[cpu.scala 250:36 cpu.scala 250:36]
    node _GEN_11 = mux(hazard.io_idex_bubble, _T_38_prediction, predictor.io_prediction) @[cpu.scala 248:32]
    node _T_38_jump = UInt<2>("h0") @[cpu.scala 250:36 cpu.scala 250:36]
    node _GEN_12 = mux(hazard.io_idex_bubble, _T_38_jump, control.io_jump) @[cpu.scala 248:32]
    node _T_38_branch = UInt<1>("h0") @[cpu.scala 250:36 cpu.scala 250:36]
    node _GEN_13 = mux(hazard.io_idex_bubble, _T_38_branch, control.io_branch) @[cpu.scala 248:32]
    node _T_38_alusrc1 = UInt<2>("h0") @[cpu.scala 250:36 cpu.scala 250:36]
    node _GEN_14 = mux(hazard.io_idex_bubble, _T_38_alusrc1, control.io_alusrc1) @[cpu.scala 248:32]
    node _T_38_immediate = UInt<1>("h0") @[cpu.scala 250:36 cpu.scala 250:36]
    node _GEN_15 = mux(hazard.io_idex_bubble, _T_38_immediate, control.io_immediate) @[cpu.scala 248:32]
    node _T_38_add = UInt<1>("h0") @[cpu.scala 250:36 cpu.scala 250:36]
    node _GEN_16 = mux(hazard.io_idex_bubble, _T_38_add, control.io_add) @[cpu.scala 248:32]
    node _T_39_sext = UInt<1>("h0") @[cpu.scala 251:36 cpu.scala 251:36]
    node _GEN_17 = mux(hazard.io_idex_bubble, _T_39_sext, _T_37) @[cpu.scala 248:32]
    node _T_39_maskmode = UInt<2>("h0") @[cpu.scala 251:36 cpu.scala 251:36]
    node _GEN_18 = mux(hazard.io_idex_bubble, _T_39_maskmode, _T_35) @[cpu.scala 248:32]
    node _T_39_taken = UInt<1>("h0") @[cpu.scala 251:36 cpu.scala 251:36]
    node _GEN_19 = mux(hazard.io_idex_bubble, _T_39_taken, id_ex_mcontrol_taken) @[cpu.scala 248:32]
    node _T_39_memwrite = UInt<1>("h0") @[cpu.scala 251:36 cpu.scala 251:36]
    node _GEN_20 = mux(hazard.io_idex_bubble, _T_39_memwrite, control.io_memwrite) @[cpu.scala 248:32]
    node _T_39_memread = UInt<1>("h0") @[cpu.scala 251:36 cpu.scala 251:36]
    node _GEN_21 = mux(hazard.io_idex_bubble, _T_39_memread, control.io_memread) @[cpu.scala 248:32]
    node _T_40_regwrite = UInt<1>("h0") @[cpu.scala 252:36 cpu.scala 252:36]
    node _GEN_22 = mux(hazard.io_idex_bubble, _T_40_regwrite, control.io_regwrite) @[cpu.scala 248:32]
    node _T_40_toreg = UInt<2>("h0") @[cpu.scala 252:36 cpu.scala 252:36]
    node _GEN_23 = mux(hazard.io_idex_bubble, _T_40_toreg, control.io_toreg) @[cpu.scala 248:32]
    node _GEN_24 = mux(hazard.io_stage_mhold, id_ex_writereg, _T_31) @[cpu.scala 255:32]
    node _GEN_25 = mux(hazard.io_stage_mhold, id_ex_rs1, rs1) @[cpu.scala 255:32]
    node _GEN_26 = mux(hazard.io_stage_mhold, id_ex_rs2, rs2) @[cpu.scala 255:32]
    node _GEN_27 = mux(hazard.io_stage_mhold, id_ex_opcode, _T_32) @[cpu.scala 255:32]
    node _GEN_28 = mux(hazard.io_stage_mhold, id_ex_funct7, _T_33) @[cpu.scala 255:32]
    node _GEN_29 = mux(hazard.io_stage_mhold, id_ex_funct3, _T_34) @[cpu.scala 255:32]
    node _GEN_30 = mux(hazard.io_stage_mhold, id_ex_imm, immGen.io_sextImm) @[cpu.scala 255:32]
    node _GEN_31 = mux(hazard.io_stage_mhold, id_ex_readdata2, registers.io_readdata2) @[cpu.scala 255:32]
    node _GEN_32 = mux(hazard.io_stage_mhold, id_ex_readdata1, registers.io_readdata1) @[cpu.scala 255:32]
    node _GEN_33 = mux(hazard.io_stage_mhold, id_ex_pc, if_id_pc) @[cpu.scala 255:32]
    node _GEN_34 = mux(hazard.io_stage_mhold, id_ex_pcplusfour, if_id_pcplusfour) @[cpu.scala 255:32]
    node _GEN_35 = mux(hazard.io_stage_mhold, id_ex_branchpc, branchAdd.io_result) @[cpu.scala 255:32]
    node _GEN_36 = mux(hazard.io_stage_mhold, id_ex_excontrol_add, _GEN_16) @[cpu.scala 255:32]
    node _GEN_37 = mux(hazard.io_stage_mhold, id_ex_excontrol_immediate, _GEN_15) @[cpu.scala 255:32]
    node _GEN_38 = mux(hazard.io_stage_mhold, id_ex_excontrol_alusrc1, _GEN_14) @[cpu.scala 255:32]
    node _GEN_39 = mux(hazard.io_stage_mhold, id_ex_excontrol_branch, _GEN_13) @[cpu.scala 255:32]
    node _GEN_40 = mux(hazard.io_stage_mhold, id_ex_excontrol_jump, _GEN_12) @[cpu.scala 255:32]
    node _GEN_41 = mux(hazard.io_stage_mhold, id_ex_excontrol_prediction, _GEN_11) @[cpu.scala 255:32]
    node _GEN_42 = mux(hazard.io_stage_mhold, id_ex_mcontrol_memread, _GEN_21) @[cpu.scala 255:32]
    node _GEN_43 = mux(hazard.io_stage_mhold, id_ex_mcontrol_memwrite, _GEN_20) @[cpu.scala 255:32]
    node _GEN_44 = mux(hazard.io_stage_mhold, id_ex_mcontrol_maskmode, _GEN_18) @[cpu.scala 255:32]
    node _GEN_45 = mux(hazard.io_stage_mhold, id_ex_mcontrol_sext, _GEN_17) @[cpu.scala 255:32]
    node _GEN_46 = mux(hazard.io_stage_mhold, id_ex_wbcontrol_toreg, _GEN_23) @[cpu.scala 255:32]
    node _GEN_47 = mux(hazard.io_stage_mhold, id_ex_wbcontrol_regwrite, _GEN_22) @[cpu.scala 255:32]
    node _T_41 = bits(reset, 0, 0) @[cpu.scala 289:27]
    node _T_42 = eq(_T_41, UInt<1>("h0")) @[cpu.scala 289:27]
    node _T_43 = bits(reset, 0, 0) @[cpu.scala 290:27]
    node _T_44 = eq(_T_43, UInt<1>("h0")) @[cpu.scala 290:27]
    node _T_45 = eq(forwarding.io_forwardA, UInt<1>("h0")) @[cpu.scala 317:52]
    node _T_46 = eq(forwarding.io_forwardA, UInt<1>("h1")) @[cpu.scala 318:52]
    node _T_47 = eq(forwarding.io_forwardA, UInt<2>("h2")) @[cpu.scala 319:52]
    node _T_81 = eq(mem_wb_wbcontrol_toreg, UInt<1>("h0")) @[cpu.scala 474:48]
    node _T_82 = eq(mem_wb_wbcontrol_toreg, UInt<1>("h1")) @[cpu.scala 475:48]
    node _T_83 = eq(mem_wb_wbcontrol_toreg, UInt<2>("h2")) @[cpu.scala 476:48]
    node _T_84 = mux(_T_83, mem_wb_pcplusfour, mem_wb_aluresult) @[Mux.scala 87:16]
    node _T_85 = mux(_T_82, mem_wb_readdata, _T_84) @[Mux.scala 87:16]
    node _T_86 = mux(_T_81, mem_wb_aluresult, _T_85) @[Mux.scala 87:16]
    node write_data = _T_86 @[cpu.scala 130:24 cpu.scala 473:14]
    node _T_48 = mux(_T_47, write_data, UInt<1>("h0")) @[Mux.scala 87:16]
    node _T_49 = mux(_T_46, ex_mem_aluresult, _T_48) @[Mux.scala 87:16]
    node _T_50 = mux(_T_45, id_ex_readdata1, _T_49) @[Mux.scala 87:16]
    node _T_51 = eq(UInt<1>("h0"), id_ex_excontrol_alusrc1) @[Conditional.scala 37:30]
    node _T_52 = eq(UInt<1>("h1"), id_ex_excontrol_alusrc1) @[Conditional.scala 37:30]
    node _T_53 = eq(UInt<2>("h2"), id_ex_excontrol_alusrc1) @[Conditional.scala 37:30]
    node _GEN_48 = validif(_T_53, id_ex_pc) @[Conditional.scala 39:67]
    node _GEN_49 = mux(_T_52, UInt<1>("h0"), _GEN_48) @[Conditional.scala 39:67]
    node forward_inputx = _T_50 @[cpu.scala 315:28 cpu.scala 316:19]
    node _GEN_50 = mux(_T_51, forward_inputx, _GEN_49) @[Conditional.scala 40:58]
    node _T_54 = eq(forwarding.io_forwardB, UInt<1>("h0")) @[cpu.scala 334:52]
    node _T_55 = eq(forwarding.io_forwardB, UInt<1>("h1")) @[cpu.scala 335:52]
    node _T_56 = eq(forwarding.io_forwardB, UInt<2>("h2")) @[cpu.scala 336:52]
    node _T_57 = mux(_T_56, write_data, UInt<1>("h0")) @[Mux.scala 87:16]
    node _T_58 = mux(_T_55, ex_mem_aluresult, _T_57) @[Mux.scala 87:16]
    node forward_inputy = mux(_T_54, id_ex_readdata2, _T_58) @[Mux.scala 87:16]
    node alu_inputy = forward_inputy @[cpu.scala 338:24 cpu.scala 339:14]
    node _T_59 = mux(id_ex_excontrol_immediate, id_ex_imm, alu_inputy) @[cpu.scala 342:23]
    node _GEN_51 = mux(hazard.io_stage_mhold, ex_mem_readdata2, alu_inputy) @[cpu.scala 366:32]
    node _GEN_52 = mux(hazard.io_stage_mhold, ex_mem_aluresult, alu.io_result) @[cpu.scala 366:32]
    node _GEN_53 = mux(hazard.io_stage_mhold, ex_mem_writereg, id_ex_writereg) @[cpu.scala 366:32]
    node _GEN_54 = mux(hazard.io_stage_mhold, ex_mem_pcplusfour, id_ex_pcplusfour) @[cpu.scala 366:32]
    node _GEN_55 = mux(hazard.io_stage_mhold, ex_mem_mcontrol_sext, id_ex_mcontrol_sext) @[cpu.scala 366:32]
    node _GEN_56 = mux(hazard.io_stage_mhold, ex_mem_mcontrol_maskmode, id_ex_mcontrol_maskmode) @[cpu.scala 366:32]
    node _GEN_57 = mux(hazard.io_stage_mhold, ex_mem_mcontrol_taken, id_ex_mcontrol_taken) @[cpu.scala 366:32]
    node _GEN_58 = mux(hazard.io_stage_mhold, ex_mem_mcontrol_memwrite, id_ex_mcontrol_memwrite) @[cpu.scala 366:32]
    node _GEN_59 = mux(hazard.io_stage_mhold, ex_mem_mcontrol_memread, id_ex_mcontrol_memread) @[cpu.scala 366:32]
    node _GEN_60 = mux(hazard.io_stage_mhold, ex_mem_wbcontrol_regwrite, id_ex_wbcontrol_regwrite) @[cpu.scala 366:32]
    node _GEN_61 = mux(hazard.io_stage_mhold, ex_mem_wbcontrol_toreg, id_ex_wbcontrol_toreg) @[cpu.scala 366:32]
    node _T_60 = not(hazard.io_exmem_bubble) @[cpu.scala 377:35]
    node _T_61 = and(id_ex_excontrol_branch, _T_60) @[cpu.scala 377:32]
    node _T_62 = eq(id_ex_excontrol_prediction, branchCtrl.io_taken) @[cpu.scala 383:38]
    node _T_63 = add(bpCorrect, UInt<1>("h1")) @[cpu.scala 384:32]
    node _T_64 = tail(_T_63, 1) @[cpu.scala 384:32]
    node _T_65 = add(bpIncorrect, UInt<1>("h1")) @[cpu.scala 386:34]
    node _T_66 = tail(_T_65, 1) @[cpu.scala 386:34]
    node _GEN_62 = mux(_T_62, _T_64, bpCorrect) @[cpu.scala 383:63]
    node _GEN_63 = mux(_T_62, bpIncorrect, _T_66) @[cpu.scala 383:63]
    node _GEN_64 = mux(_T_61, UInt<1>("h1"), UInt<1>("h0")) @[cpu.scala 377:60]
    node _GEN_65 = validif(_T_61, branchCtrl.io_taken) @[cpu.scala 377:60]
    node _GEN_66 = mux(_T_61, _GEN_62, bpCorrect) @[cpu.scala 377:60]
    node _GEN_67 = mux(_T_61, _GEN_63, bpIncorrect) @[cpu.scala 377:60]
    node _T_67 = bits(id_ex_excontrol_jump, 1, 1) @[cpu.scala 396:29]
    node _T_68 = bits(id_ex_excontrol_jump, 0, 0) @[cpu.scala 398:31]
    node _T_69 = eq(_T_68, UInt<1>("h0")) @[cpu.scala 398:35]
    node _T_70 = mux(UInt<1>("h1"), UInt<31>("h7fffffff"), UInt<31>("h0")) @[Bitwise.scala 72:12]
    node _T_71 = cat(_T_70, UInt<1>("h0")) @[Cat.scala 29:58]
    node _T_72 = and(alu.io_result, _T_71) @[cpu.scala 404:38]
    node _GEN_68 = mux(_T_69, id_ex_branchpc, _T_72) @[cpu.scala 398:44]
    node _GEN_69 = mux(_T_69, UInt<1>("h1"), UInt<1>("h1")) @[cpu.scala 398:44]
    node _T_73 = neq(branchCtrl.io_taken, id_ex_excontrol_prediction) @[cpu.scala 409:31]
    node _T_74 = and(_T_73, id_ex_excontrol_branch) @[cpu.scala 409:62]
    node _GEN_70 = mux(branchCtrl.io_taken, id_ex_branchpc, id_ex_pcplusfour) @[cpu.scala 410:34]
    node _GEN_71 = validif(_T_74, _GEN_70) @[cpu.scala 409:89]
    node _GEN_72 = mux(_T_74, UInt<1>("h1"), UInt<1>("h0")) @[cpu.scala 409:89]
    node _GEN_73 = mux(_T_67, _GEN_68, _GEN_71) @[cpu.scala 396:34]
    node _GEN_74 = mux(_T_67, _GEN_69, _GEN_72) @[cpu.scala 396:34]
    node _T_75_sext = UInt<1>("h0") @[cpu.scala 422:37 cpu.scala 422:37]
    node _GEN_75 = mux(hazard.io_exmem_bubble, _T_75_sext, _GEN_55) @[cpu.scala 420:33]
    node _T_75_maskmode = UInt<2>("h0") @[cpu.scala 422:37 cpu.scala 422:37]
    node _GEN_76 = mux(hazard.io_exmem_bubble, _T_75_maskmode, _GEN_56) @[cpu.scala 420:33]
    node _T_75_taken = UInt<1>("h0") @[cpu.scala 422:37 cpu.scala 422:37]
    node _GEN_77 = mux(hazard.io_exmem_bubble, _T_75_taken, _GEN_74) @[cpu.scala 420:33]
    node _T_75_memwrite = UInt<1>("h0") @[cpu.scala 422:37 cpu.scala 422:37]
    node _GEN_78 = mux(hazard.io_exmem_bubble, _T_75_memwrite, _GEN_58) @[cpu.scala 420:33]
    node _T_75_memread = UInt<1>("h0") @[cpu.scala 422:37 cpu.scala 422:37]
    node _GEN_79 = mux(hazard.io_exmem_bubble, _T_75_memread, _GEN_59) @[cpu.scala 420:33]
    node _T_76_regwrite = UInt<1>("h0") @[cpu.scala 423:37 cpu.scala 423:37]
    node _GEN_80 = mux(hazard.io_exmem_bubble, _T_76_regwrite, _GEN_60) @[cpu.scala 420:33]
    node _T_76_toreg = UInt<2>("h0") @[cpu.scala 423:37 cpu.scala 423:37]
    node _GEN_81 = mux(hazard.io_exmem_bubble, _T_76_toreg, _GEN_61) @[cpu.scala 420:33]
    node _T_77 = bits(reset, 0, 0) @[cpu.scala 426:27]
    node _T_78 = eq(_T_77, UInt<1>("h0")) @[cpu.scala 426:27]
    node _GEN_82 = mux(hazard.io_stage_mhold, mem_wb_writereg, ex_mem_writereg) @[cpu.scala 457:32]
    node _GEN_83 = mux(hazard.io_stage_mhold, mem_wb_aluresult, ex_mem_aluresult) @[cpu.scala 457:32]
    node _GEN_84 = mux(hazard.io_stage_mhold, mem_wb_pcplusfour, ex_mem_pcplusfour) @[cpu.scala 457:32]
    node _GEN_85 = mux(hazard.io_stage_mhold, mem_wb_readdata, io_dmem_readdata) @[cpu.scala 457:32]
    node _GEN_86 = mux(hazard.io_stage_mhold, mem_wb_wbcontrol_regwrite, ex_mem_wbcontrol_regwrite) @[cpu.scala 457:32]
    node _GEN_87 = mux(hazard.io_stage_mhold, mem_wb_wbcontrol_toreg, ex_mem_wbcontrol_toreg) @[cpu.scala 457:32]
    node _T_79 = bits(reset, 0, 0) @[cpu.scala 466:27]
    node _T_80 = eq(_T_79, UInt<1>("h0")) @[cpu.scala 466:27]
    node _T_87 = neq(registers.io_writereg, UInt<1>("h0")) @[cpu.scala 481:81]
    node _T_88 = and(mem_wb_wbcontrol_regwrite, _T_87) @[cpu.scala 481:55]
    node _T_89 = bits(reset, 0, 0) @[cpu.scala 487:27]
    node _T_90 = eq(_T_89, UInt<1>("h0")) @[cpu.scala 487:27]
    node _T = _GEN_1 @[Counter.scala 67:24]
    node _T_4_instruction = UInt<32>("h0") @[cpu.scala 106:40 cpu.scala 106:40]
    node _T_4_pc = UInt<32>("h0") @[cpu.scala 106:40 cpu.scala 106:40]
    node _T_4_pcplusfour = UInt<32>("h0") @[cpu.scala 106:40 cpu.scala 106:40]
    node _T_5_writereg = UInt<5>("h0") @[cpu.scala 107:40 cpu.scala 107:40]
    node _T_5_opcode = UInt<7>("h0") @[cpu.scala 107:40 cpu.scala 107:40]
    node _T_5_funct7 = UInt<7>("h0") @[cpu.scala 107:40 cpu.scala 107:40]
    node _T_5_funct3 = UInt<3>("h0") @[cpu.scala 107:40 cpu.scala 107:40]
    node _T_5_imm = UInt<32>("h0") @[cpu.scala 107:40 cpu.scala 107:40]
    node _T_5_readdata2 = UInt<32>("h0") @[cpu.scala 107:40 cpu.scala 107:40]
    node _T_5_readdata1 = UInt<32>("h0") @[cpu.scala 107:40 cpu.scala 107:40]
    node _T_5_pc = UInt<32>("h0") @[cpu.scala 107:40 cpu.scala 107:40]
    node _T_5_pcplusfour = UInt<32>("h0") @[cpu.scala 107:40 cpu.scala 107:40]
    node _T_5_excontrol_add = UInt<1>("h0") @[cpu.scala 107:40 cpu.scala 107:40]
    node _T_5_excontrol_immediate = UInt<1>("h0") @[cpu.scala 107:40 cpu.scala 107:40]
    node _T_5_excontrol_alusrc1 = UInt<2>("h0") @[cpu.scala 107:40 cpu.scala 107:40]
    node _T_5_excontrol_branch = UInt<1>("h0") @[cpu.scala 107:40 cpu.scala 107:40]
    node _T_5_excontrol_jump = UInt<2>("h0") @[cpu.scala 107:40 cpu.scala 107:40]
    node _T_5_excontrol_prediction = UInt<1>("h0") @[cpu.scala 107:40 cpu.scala 107:40]
    node _T_5_mcontrol_memread = UInt<1>("h0") @[cpu.scala 107:40 cpu.scala 107:40]
    node _T_5_mcontrol_memwrite = UInt<1>("h0") @[cpu.scala 107:40 cpu.scala 107:40]
    node _T_5_mcontrol_taken = UInt<1>("h0") @[cpu.scala 107:40 cpu.scala 107:40]
    node _T_5_mcontrol_maskmode = UInt<2>("h0") @[cpu.scala 107:40 cpu.scala 107:40]
    node _T_5_mcontrol_sext = UInt<1>("h0") @[cpu.scala 107:40 cpu.scala 107:40]
    node _T_5_wbcontrol_toreg = UInt<2>("h0") @[cpu.scala 107:40 cpu.scala 107:40]
    node _T_5_wbcontrol_regwrite = UInt<1>("h0") @[cpu.scala 107:40 cpu.scala 107:40]
    node _T_5_rs1 = UInt<5>("h0") @[cpu.scala 107:40 cpu.scala 107:40]
    node _T_5_rs2 = UInt<5>("h0") @[cpu.scala 107:40 cpu.scala 107:40]
    node _T_5_branchpc = UInt<32>("h0") @[cpu.scala 107:40 cpu.scala 107:40]
    node _T_6_writereg = UInt<5>("h0") @[cpu.scala 108:40 cpu.scala 108:40]
    node _T_6_readdata2 = UInt<32>("h0") @[cpu.scala 108:40 cpu.scala 108:40]
    node _T_6_aluresult = UInt<32>("h0") @[cpu.scala 108:40 cpu.scala 108:40]
    node _T_6_nextpc = UInt<32>("h0") @[cpu.scala 108:40 cpu.scala 108:40]
    node _T_6_pcplusfour = UInt<32>("h0") @[cpu.scala 108:40 cpu.scala 108:40]
    node _T_6_mcontrol_memread = UInt<1>("h0") @[cpu.scala 108:40 cpu.scala 108:40]
    node _T_6_mcontrol_memwrite = UInt<1>("h0") @[cpu.scala 108:40 cpu.scala 108:40]
    node _T_6_mcontrol_taken = UInt<1>("h0") @[cpu.scala 108:40 cpu.scala 108:40]
    node _T_6_mcontrol_maskmode = UInt<2>("h0") @[cpu.scala 108:40 cpu.scala 108:40]
    node _T_6_mcontrol_sext = UInt<1>("h0") @[cpu.scala 108:40 cpu.scala 108:40]
    node _T_6_wbcontrol_toreg = UInt<2>("h0") @[cpu.scala 108:40 cpu.scala 108:40]
    node _T_6_wbcontrol_regwrite = UInt<1>("h0") @[cpu.scala 108:40 cpu.scala 108:40]
    node _T_7_writereg = UInt<5>("h0") @[cpu.scala 109:40 cpu.scala 109:40]
    node _T_7_aluresult = UInt<32>("h0") @[cpu.scala 109:40 cpu.scala 109:40]
    node _T_7_readdata = UInt<32>("h0") @[cpu.scala 109:40 cpu.scala 109:40]
    node _T_7_pcplusfour = UInt<32>("h0") @[cpu.scala 109:40 cpu.scala 109:40]
    node _T_7_wbcontrol_toreg = UInt<2>("h0") @[cpu.scala 109:40 cpu.scala 109:40]
    node _T_7_wbcontrol_regwrite = UInt<1>("h0") @[cpu.scala 109:40 cpu.scala 109:40]
    node alu_inputx = _GEN_50 @[cpu.scala 322:24 cpu.scala 326:26 cpu.scala 327:26 cpu.scala 328:26]
    io_imem_address <= pc @[cpu.scala 152:19]
    io_dmem_address <= ex_mem_aluresult @[cpu.scala 433:21]
    io_dmem_writedata <= ex_mem_readdata2 @[cpu.scala 434:21]
    io_dmem_memread <= ex_mem_mcontrol_memread @[cpu.scala 435:21]
    io_dmem_memwrite <= ex_mem_mcontrol_memwrite @[cpu.scala 436:21]
    io_dmem_maskmode <= ex_mem_mcontrol_maskmode @[cpu.scala 437:21]
    io_dmem_sext <= ex_mem_mcontrol_sext @[cpu.scala 438:21]
    pc <= mux(reset, UInt<1>("h0"), _T_21) @[cpu.scala 138:6]
    control.clock <= clock
    control.reset <= reset
    control.io_opcode <= _T_30 @[cpu.scala 200:21]
    branchCtrl.clock <= clock
    branchCtrl.reset <= reset
    branchCtrl.io_branch <= id_ex_excontrol_branch @[cpu.scala 345:24]
    branchCtrl.io_funct3 <= id_ex_funct3 @[cpu.scala 346:24]
    branchCtrl.io_inputx <= forward_inputx @[cpu.scala 347:24]
    branchCtrl.io_inputy <= forward_inputy @[cpu.scala 348:24]
    registers.clock <= clock
    registers.reset <= reset
    registers.io_readreg1 <= rs1 @[cpu.scala 203:25]
    registers.io_readreg2 <= rs2 @[cpu.scala 204:25]
    registers.io_writereg <= mem_wb_writereg @[cpu.scala 480:26]
    registers.io_writedata <= write_data @[cpu.scala 479:26]
    registers.io_wen <= _T_88 @[cpu.scala 481:26]
    aluControl.clock <= clock
    aluControl.reset <= reset
    aluControl.io_add <= id_ex_excontrol_add @[cpu.scala 305:27]
    aluControl.io_immediate <= id_ex_excontrol_immediate @[cpu.scala 306:27]
    aluControl.io_funct7 <= id_ex_funct7 @[cpu.scala 307:27]
    aluControl.io_funct3 <= id_ex_funct3 @[cpu.scala 308:27]
    aluControl.io_opcode <= id_ex_opcode @[cpu.scala 309:27]
    alu.clock <= clock
    alu.reset <= reset
    alu.io_operation <= aluControl.io_operation @[cpu.scala 351:23]
    alu.io_inputx <= alu_inputx @[cpu.scala 330:17]
    alu.io_inputy <= _T_59 @[cpu.scala 342:17]
    alu.io_multStart <= aluControl.io_startMult @[cpu.scala 312:20 cpu.scala 352:23]
    alu.io_multFinished <= aluControl.io_multFinished @[cpu.scala 353:23]
    immGen.clock <= clock
    immGen.reset <= reset
    immGen.io_instruction <= if_id_instruction @[cpu.scala 207:25]
    pcPlusFour.clock <= clock
    pcPlusFour.reset <= reset
    pcPlusFour.io_inputx <= pc @[cpu.scala 155:24]
    pcPlusFour.io_inputy <= UInt<3>("h4") @[cpu.scala 156:24]
    branchAdd.clock <= clock
    branchAdd.reset <= reset
    branchAdd.io_inputx <= if_id_pc @[cpu.scala 210:23]
    branchAdd.io_inputy <= immGen.io_sextImm @[cpu.scala 211:23]
    forwarding.clock <= clock
    forwarding.reset <= reset
    forwarding.io_rs1 <= id_ex_rs1 @[cpu.scala 301:21]
    forwarding.io_rs2 <= id_ex_rs2 @[cpu.scala 302:21]
    forwarding.io_exmemrd <= ex_mem_writereg @[cpu.scala 447:25]
    forwarding.io_exmemrw <= ex_mem_wbcontrol_regwrite @[cpu.scala 448:25]
    forwarding.io_memwbrd <= mem_wb_writereg @[cpu.scala 484:25]
    forwarding.io_memwbrw <= mem_wb_wbcontrol_regwrite @[cpu.scala 485:25]
    hazard.clock <= clock
    hazard.reset <= reset
    hazard.io_rs1 <= rs1 @[cpu.scala 189:17]
    hazard.io_rs2 <= rs2 @[cpu.scala 190:17]
    hazard.io_id_branch <= _T_29 @[cpu.scala 197:23]
    hazard.io_idex_memread <= id_ex_mcontrol_memread @[cpu.scala 297:26]
    hazard.io_idex_rd <= id_ex_writereg @[cpu.scala 298:26]
    hazard.io_exmem_taken <= ex_mem_mcontrol_taken @[cpu.scala 444:25]
    hazard.io_mstall <= aluControl.io_multHold @[cpu.scala 356:20]
    predictor.clock <= clock
    predictor.reset <= reset
    predictor.io_pc <= if_id_pc @[cpu.scala 193:19]
    predictor.io_update <= _GEN_64 @[cpu.scala 379:25 cpu.scala 391:25]
    predictor.io_taken <= _GEN_65 @[cpu.scala 380:25]
    value <= mux(reset, UInt<30>("h0"), _GEN_0) @[Counter.scala 39:13]
    if_id_instruction <= mux(reset, _T_4_instruction, _GEN_8) @[cpu.scala 161:23 cpu.scala 168:23 cpu.scala 174:23]
    if_id_pc <= mux(reset, _T_4_pc, _GEN_9) @[cpu.scala 162:23 cpu.scala 169:23 cpu.scala 175:23]
    if_id_pcplusfour <= mux(reset, _T_4_pcplusfour, _GEN_10) @[cpu.scala 163:23 cpu.scala 170:23 cpu.scala 176:23]
    id_ex_writereg <= mux(reset, _T_5_writereg, _GEN_24) @[cpu.scala 217:20 cpu.scala 257:22]
    id_ex_opcode <= mux(reset, _T_5_opcode, _GEN_27) @[cpu.scala 220:20 cpu.scala 260:22]
    id_ex_funct7 <= mux(reset, _T_5_funct7, _GEN_28) @[cpu.scala 221:20 cpu.scala 261:22]
    id_ex_funct3 <= mux(reset, _T_5_funct3, _GEN_29) @[cpu.scala 222:20 cpu.scala 262:22]
    id_ex_imm <= mux(reset, _T_5_imm, _GEN_30) @[cpu.scala 223:20 cpu.scala 263:22]
    id_ex_readdata2 <= mux(reset, _T_5_readdata2, _GEN_31) @[cpu.scala 224:20 cpu.scala 264:22]
    id_ex_readdata1 <= mux(reset, _T_5_readdata1, _GEN_32) @[cpu.scala 225:20 cpu.scala 265:22]
    id_ex_pc <= mux(reset, _T_5_pc, _GEN_33) @[cpu.scala 226:20 cpu.scala 266:22]
    id_ex_pcplusfour <= mux(reset, _T_5_pcplusfour, _GEN_34) @[cpu.scala 227:20 cpu.scala 267:22]
    id_ex_excontrol_add <= mux(reset, _T_5_excontrol_add, _GEN_36) @[cpu.scala 231:29 cpu.scala 250:21 cpu.scala 271:32]
    id_ex_excontrol_immediate <= mux(reset, _T_5_excontrol_immediate, _GEN_37) @[cpu.scala 232:29 cpu.scala 250:21 cpu.scala 272:32]
    id_ex_excontrol_alusrc1 <= mux(reset, _T_5_excontrol_alusrc1, _GEN_38) @[cpu.scala 233:29 cpu.scala 250:21 cpu.scala 273:32]
    id_ex_excontrol_branch <= mux(reset, _T_5_excontrol_branch, _GEN_39) @[cpu.scala 234:29 cpu.scala 250:21 cpu.scala 274:32]
    id_ex_excontrol_jump <= mux(reset, _T_5_excontrol_jump, _GEN_40) @[cpu.scala 235:29 cpu.scala 250:21 cpu.scala 275:32]
    id_ex_excontrol_prediction <= mux(reset, _T_5_excontrol_prediction, _GEN_41) @[cpu.scala 236:29 cpu.scala 250:21 cpu.scala 276:32]
    id_ex_mcontrol_memread <= mux(reset, _T_5_mcontrol_memread, _GEN_42) @[cpu.scala 239:27 cpu.scala 251:21 cpu.scala 279:29]
    id_ex_mcontrol_memwrite <= mux(reset, _T_5_mcontrol_memwrite, _GEN_43) @[cpu.scala 240:27 cpu.scala 251:21 cpu.scala 280:29]
    id_ex_mcontrol_taken <= mux(reset, _T_5_mcontrol_taken, _GEN_19) @[cpu.scala 251:21]
    id_ex_mcontrol_maskmode <= mux(reset, _T_5_mcontrol_maskmode, _GEN_44) @[cpu.scala 241:27 cpu.scala 251:21 cpu.scala 281:29]
    id_ex_mcontrol_sext <= mux(reset, _T_5_mcontrol_sext, _GEN_45) @[cpu.scala 242:27 cpu.scala 251:21 cpu.scala 282:29]
    id_ex_wbcontrol_toreg <= mux(reset, _T_5_wbcontrol_toreg, _GEN_46) @[cpu.scala 245:28 cpu.scala 252:21 cpu.scala 285:30]
    id_ex_wbcontrol_regwrite <= mux(reset, _T_5_wbcontrol_regwrite, _GEN_47) @[cpu.scala 246:28 cpu.scala 252:21 cpu.scala 286:30]
    id_ex_rs1 <= mux(reset, _T_5_rs1, _GEN_25) @[cpu.scala 218:20 cpu.scala 258:22]
    id_ex_rs2 <= mux(reset, _T_5_rs2, _GEN_26) @[cpu.scala 219:20 cpu.scala 259:22]
    id_ex_branchpc <= mux(reset, _T_5_branchpc, _GEN_35) @[cpu.scala 228:20 cpu.scala 268:22]
    ex_mem_writereg <= mux(reset, _T_6_writereg, _GEN_53) @[cpu.scala 361:21 cpu.scala 370:23]
    ex_mem_readdata2 <= mux(reset, _T_6_readdata2, _GEN_51) @[cpu.scala 359:21 cpu.scala 368:23]
    ex_mem_aluresult <= mux(reset, _T_6_aluresult, _GEN_52) @[cpu.scala 360:21 cpu.scala 369:23]
    ex_mem_nextpc <= mux(reset, _T_6_nextpc, _GEN_73) @[cpu.scala 400:21 cpu.scala 404:21 cpu.scala 410:50 cpu.scala 411:34]
    ex_mem_pcplusfour <= mux(reset, _T_6_pcplusfour, _GEN_54) @[cpu.scala 362:21 cpu.scala 371:23]
    ex_mem_mcontrol_memread <= mux(reset, _T_6_mcontrol_memread, _GEN_79) @[cpu.scala 363:21 cpu.scala 372:23 cpu.scala 422:22]
    ex_mem_mcontrol_memwrite <= mux(reset, _T_6_mcontrol_memwrite, _GEN_78) @[cpu.scala 363:21 cpu.scala 372:23 cpu.scala 422:22]
    ex_mem_mcontrol_taken <= mux(reset, _T_6_mcontrol_taken, _GEN_77) @[cpu.scala 363:21 cpu.scala 372:23 cpu.scala 401:29 cpu.scala 405:29 cpu.scala 412:29 cpu.scala 414:30 cpu.scala 422:22]
    ex_mem_mcontrol_maskmode <= mux(reset, _T_6_mcontrol_maskmode, _GEN_76) @[cpu.scala 363:21 cpu.scala 372:23 cpu.scala 422:22]
    ex_mem_mcontrol_sext <= mux(reset, _T_6_mcontrol_sext, _GEN_75) @[cpu.scala 363:21 cpu.scala 372:23 cpu.scala 422:22]
    ex_mem_wbcontrol_toreg <= mux(reset, _T_6_wbcontrol_toreg, _GEN_81) @[cpu.scala 364:21 cpu.scala 373:23 cpu.scala 423:22]
    ex_mem_wbcontrol_regwrite <= mux(reset, _T_6_wbcontrol_regwrite, _GEN_80) @[cpu.scala 364:21 cpu.scala 373:23 cpu.scala 423:22]
    mem_wb_writereg <= mux(reset, _T_7_writereg, _GEN_82) @[cpu.scala 451:21 cpu.scala 459:23]
    mem_wb_aluresult <= mux(reset, _T_7_aluresult, _GEN_83) @[cpu.scala 452:21 cpu.scala 460:23]
    mem_wb_readdata <= mux(reset, _T_7_readdata, _GEN_85) @[cpu.scala 454:21 cpu.scala 462:23]
    mem_wb_pcplusfour <= mux(reset, _T_7_pcplusfour, _GEN_84) @[cpu.scala 453:21 cpu.scala 461:23]
    mem_wb_wbcontrol_toreg <= mux(reset, _T_7_wbcontrol_toreg, _GEN_87) @[cpu.scala 455:21 cpu.scala 463:23]
    mem_wb_wbcontrol_regwrite <= mux(reset, _T_7_wbcontrol_regwrite, _GEN_86) @[cpu.scala 455:21 cpu.scala 463:23]
    bpCorrect <= mux(reset, UInt<32>("h0"), _GEN_66) @[cpu.scala 384:19]
    bpIncorrect <= mux(reset, UInt<32>("h0"), _GEN_67) @[cpu.scala 386:19]
    printf(clock, and(and(UInt<1>("h1"), _T_9), UInt<1>("h1")), "Cycle=%d ", value) @[cpu.scala 111:27]
    printf(clock, and(and(and(UInt<1>("h1"), _T_11), _T_13), UInt<1>("h1")), "BP correct: %d; incorrect: %d\n", bpCorrect, bpIncorrect) @[cpu.scala 118:11]
    printf(clock, and(and(UInt<1>("h1"), _T_23), UInt<1>("h1")), "PC: %d  || hazard.io.pcwrite: %d\n", pc, hazard.io_pcwrite) @[cpu.scala 148:27]
    printf(clock, and(and(UInt<1>("h1"), _T_25), UInt<1>("h1")), "   Multiplication Stall: %d\n", hazard.io_stage_mhold) @[cpu.scala 149:27]
    printf(clock, and(and(UInt<1>("h1"), _T_28), UInt<1>("h1")), "IF/ID: IFIDBundle(instruction -> %d, pc -> %d, pcplusfour -> %d)\n", if_id_instruction, if_id_pc, if_id_pcplusfour) @[cpu.scala 179:27]
    printf(clock, and(and(UInt<1>("h1"), _T_42), UInt<1>("h1")), "DASM(%x)\n", if_id_instruction) @[cpu.scala 289:27]
    printf(clock, and(and(UInt<1>("h1"), _T_44), UInt<1>("h1")), "ID/EX: IDEXBundle(writereg -> %d, opcode -> %d, funct7 -> %d, funct3 -> %d, imm -> %d, readdata2 -> %d, readdata1 -> %d, pc -> %d, pcplusfour -> %d, excontrol -> EXControl(add -> %d, immediate -> %d, alusrc1 -> %d, branch -> %d, jump -> %d, prediction -> %d), mcontrol -> MControl(memread -> %d, memwrite -> %d, taken -> %d, maskmode -> %d, sext -> %d), wbcontrol -> WBControl(toreg -> %d, regwrite -> %d), rs1 -> %d, rs2 -> %d, branchpc -> %d)\n", id_ex_writereg, id_ex_opcode, id_ex_funct7, id_ex_funct3, id_ex_imm, id_ex_readdata2, id_ex_readdata1, id_ex_pc, id_ex_pcplusfour, id_ex_excontrol_add, id_ex_excontrol_immediate, id_ex_excontrol_alusrc1, id_ex_excontrol_branch, id_ex_excontrol_jump, id_ex_excontrol_prediction, id_ex_mcontrol_memread, id_ex_mcontrol_memwrite, id_ex_mcontrol_taken, id_ex_mcontrol_maskmode, id_ex_mcontrol_sext, id_ex_wbcontrol_toreg, id_ex_wbcontrol_regwrite, id_ex_rs1, id_ex_rs2, id_ex_branchpc) @[cpu.scala 290:27]
    printf(clock, and(and(UInt<1>("h1"), _T_78), UInt<1>("h1")), "EX/MEM: EXMEMBundle(writereg -> %d, readdata2 -> %d, aluresult -> %d, nextpc -> %d, pcplusfour -> %d, mcontrol -> MControl(memread -> %d, memwrite -> %d, taken -> %d, maskmode -> %d, sext -> %d), wbcontrol -> WBControl(toreg -> %d, regwrite -> %d))\n", ex_mem_writereg, ex_mem_readdata2, ex_mem_aluresult, ex_mem_nextpc, ex_mem_pcplusfour, ex_mem_mcontrol_memread, ex_mem_mcontrol_memwrite, ex_mem_mcontrol_taken, ex_mem_mcontrol_maskmode, ex_mem_mcontrol_sext, ex_mem_wbcontrol_toreg, ex_mem_wbcontrol_regwrite) @[cpu.scala 426:27]
    printf(clock, and(and(UInt<1>("h1"), _T_80), UInt<1>("h1")), "MEM/WB: MEMWBBundle(writereg -> %d, aluresult -> %d, readdata -> %d, pcplusfour -> %d, wbcontrol -> WBControl(toreg -> %d, regwrite -> %d))\n", mem_wb_writereg, mem_wb_aluresult, mem_wb_readdata, mem_wb_pcplusfour, mem_wb_wbcontrol_toreg, mem_wb_wbcontrol_regwrite) @[cpu.scala 466:27]
    printf(clock, and(and(UInt<1>("h1"), _T_90), UInt<1>("h1")), "---------------------------------------------\n") @[cpu.scala 487:27]
