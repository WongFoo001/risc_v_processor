circuit Top :
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
      reset => (UInt<1>("h0"), regs_0) @[register-file.scala 50:17]
    reg regs_1 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_1) @[register-file.scala 50:17]
    reg regs_2 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_2) @[register-file.scala 50:17]
    reg regs_3 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_3) @[register-file.scala 50:17]
    reg regs_4 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_4) @[register-file.scala 50:17]
    reg regs_5 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_5) @[register-file.scala 50:17]
    reg regs_6 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_6) @[register-file.scala 50:17]
    reg regs_7 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_7) @[register-file.scala 50:17]
    reg regs_8 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_8) @[register-file.scala 50:17]
    reg regs_9 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_9) @[register-file.scala 50:17]
    reg regs_10 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_10) @[register-file.scala 50:17]
    reg regs_11 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_11) @[register-file.scala 50:17]
    reg regs_12 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_12) @[register-file.scala 50:17]
    reg regs_13 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_13) @[register-file.scala 50:17]
    reg regs_14 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_14) @[register-file.scala 50:17]
    reg regs_15 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_15) @[register-file.scala 50:17]
    reg regs_16 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_16) @[register-file.scala 50:17]
    reg regs_17 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_17) @[register-file.scala 50:17]
    reg regs_18 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_18) @[register-file.scala 50:17]
    reg regs_19 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_19) @[register-file.scala 50:17]
    reg regs_20 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_20) @[register-file.scala 50:17]
    reg regs_21 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_21) @[register-file.scala 50:17]
    reg regs_22 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_22) @[register-file.scala 50:17]
    reg regs_23 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_23) @[register-file.scala 50:17]
    reg regs_24 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_24) @[register-file.scala 50:17]
    reg regs_25 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_25) @[register-file.scala 50:17]
    reg regs_26 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_26) @[register-file.scala 50:17]
    reg regs_27 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_27) @[register-file.scala 50:17]
    reg regs_28 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_28) @[register-file.scala 50:17]
    reg regs_29 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_29) @[register-file.scala 50:17]
    reg regs_30 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_30) @[register-file.scala 50:17]
    reg regs_31 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_31) @[register-file.scala 50:17]
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
    node _T = eq(io_readreg1, io_writereg) @[register-file.scala 64:23]
    node _T_1 = and(_T, io_wen) @[register-file.scala 64:39]
    node _T_2 = eq(io_readreg2, io_writereg) @[register-file.scala 66:30]
    node _T_3 = and(_T_2, io_wen) @[register-file.scala 66:46]
    node _regs_io_readreg2 = _GEN_127 @[register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16 register-file.scala 60:16]
    node _GEN_128 = mux(_T_3, io_writedata, _regs_io_readreg2) @[register-file.scala 66:57]
    node _regs_io_readreg1 = _GEN_95 @[register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16 register-file.scala 59:16]
    node _GEN_129 = mux(_T_1, io_writedata, _regs_io_readreg1) @[register-file.scala 64:50]
    node _GEN_130 = mux(_T_1, _regs_io_readreg2, _GEN_128) @[register-file.scala 64:50]
    io_readdata1 <= _GEN_129 @[register-file.scala 59:16 register-file.scala 65:20]
    io_readdata2 <= _GEN_130 @[register-file.scala 60:16 register-file.scala 67:20]
    regs_0 <= _GEN_32 @[register-file.scala 54:23]
    regs_1 <= _GEN_33 @[register-file.scala 54:23]
    regs_2 <= _GEN_34 @[register-file.scala 54:23]
    regs_3 <= _GEN_35 @[register-file.scala 54:23]
    regs_4 <= _GEN_36 @[register-file.scala 54:23]
    regs_5 <= _GEN_37 @[register-file.scala 54:23]
    regs_6 <= _GEN_38 @[register-file.scala 54:23]
    regs_7 <= _GEN_39 @[register-file.scala 54:23]
    regs_8 <= _GEN_40 @[register-file.scala 54:23]
    regs_9 <= _GEN_41 @[register-file.scala 54:23]
    regs_10 <= _GEN_42 @[register-file.scala 54:23]
    regs_11 <= _GEN_43 @[register-file.scala 54:23]
    regs_12 <= _GEN_44 @[register-file.scala 54:23]
    regs_13 <= _GEN_45 @[register-file.scala 54:23]
    regs_14 <= _GEN_46 @[register-file.scala 54:23]
    regs_15 <= _GEN_47 @[register-file.scala 54:23]
    regs_16 <= _GEN_48 @[register-file.scala 54:23]
    regs_17 <= _GEN_49 @[register-file.scala 54:23]
    regs_18 <= _GEN_50 @[register-file.scala 54:23]
    regs_19 <= _GEN_51 @[register-file.scala 54:23]
    regs_20 <= _GEN_52 @[register-file.scala 54:23]
    regs_21 <= _GEN_53 @[register-file.scala 54:23]
    regs_22 <= _GEN_54 @[register-file.scala 54:23]
    regs_23 <= _GEN_55 @[register-file.scala 54:23]
    regs_24 <= _GEN_56 @[register-file.scala 54:23]
    regs_25 <= _GEN_57 @[register-file.scala 54:23]
    regs_26 <= _GEN_58 @[register-file.scala 54:23]
    regs_27 <= _GEN_59 @[register-file.scala 54:23]
    regs_28 <= _GEN_60 @[register-file.scala 54:23]
    regs_29 <= _GEN_61 @[register-file.scala 54:23]
    regs_30 <= _GEN_62 @[register-file.scala 54:23]
    regs_31 <= _GEN_63 @[register-file.scala 54:23]

  module ALUControl :
    input clock : Clock
    input reset : UInt<1>
    input io_add : UInt<1>
    input io_immediate : UInt<1>
    input io_funct7 : UInt<7>
    input io_funct3 : UInt<3>
    output io_operation : UInt<4>
  
    node _T = eq(UInt<1>("h0"), io_funct3) @[Conditional.scala 37:30]
    node _T_1 = eq(io_funct7, UInt<1>("h0")) @[alucontrol.scala 37:41]
    node _T_2 = or(io_immediate, _T_1) @[alucontrol.scala 37:28]
    node _GEN_0 = mux(_T_2, UInt<2>("h2"), UInt<2>("h3")) @[alucontrol.scala 37:59]
    node _T_3 = eq(UInt<1>("h1"), io_funct3) @[Conditional.scala 37:30]
    node _T_4 = eq(UInt<2>("h2"), io_funct3) @[Conditional.scala 37:30]
    node _T_5 = eq(UInt<2>("h3"), io_funct3) @[Conditional.scala 37:30]
    node _T_6 = eq(UInt<3>("h4"), io_funct3) @[Conditional.scala 37:30]
    node _T_7 = eq(UInt<3>("h5"), io_funct3) @[Conditional.scala 37:30]
    node _T_8 = eq(io_funct7, UInt<1>("h0")) @[alucontrol.scala 48:25]
    node _GEN_1 = mux(_T_8, UInt<3>("h7"), UInt<4>("h8")) @[alucontrol.scala 48:43]
    node _T_9 = eq(UInt<3>("h6"), io_funct3) @[Conditional.scala 37:30]
    node _T_10 = eq(UInt<3>("h7"), io_funct3) @[Conditional.scala 37:30]
    node _GEN_2 = mux(_T_10, UInt<1>("h0"), UInt<4>("hf")) @[Conditional.scala 39:67]
    node _GEN_3 = mux(_T_9, UInt<1>("h1"), _GEN_2) @[Conditional.scala 39:67]
    node _GEN_4 = mux(_T_7, _GEN_1, _GEN_3) @[Conditional.scala 39:67]
    node _GEN_5 = mux(_T_6, UInt<4>("h9"), _GEN_4) @[Conditional.scala 39:67]
    node _GEN_6 = mux(_T_5, UInt<3>("h5"), _GEN_5) @[Conditional.scala 39:67]
    node _GEN_7 = mux(_T_4, UInt<3>("h4"), _GEN_6) @[Conditional.scala 39:67]
    node _GEN_8 = mux(_T_3, UInt<3>("h6"), _GEN_7) @[Conditional.scala 39:67]
    node _GEN_9 = mux(_T, _GEN_0, _GEN_8) @[Conditional.scala 40:58]
    node _GEN_10 = mux(io_add, UInt<2>("h2"), _GEN_9) @[alucontrol.scala 32:17]
    io_operation <= _GEN_10 @[alucontrol.scala 30:16 alucontrol.scala 33:18 alucontrol.scala 38:24 alucontrol.scala 40:24 alucontrol.scala 43:36 alucontrol.scala 44:36 alucontrol.scala 45:36 alucontrol.scala 46:36 alucontrol.scala 49:24 alucontrol.scala 51:24 alucontrol.scala 54:36 alucontrol.scala 55:36]

  module ALU :
    input clock : Clock
    input reset : UInt<1>
    input io_operation : UInt<4>
    input io_inputx : UInt<32>
    input io_inputy : UInt<32>
    output io_result : UInt<32>
  
    node _T = eq(UInt<1>("h0"), io_operation) @[Conditional.scala 37:30]
    node _T_1 = and(io_inputx, io_inputy) @[alu.scala 30:30]
    node _T_2 = eq(UInt<1>("h1"), io_operation) @[Conditional.scala 37:30]
    node _T_3 = or(io_inputx, io_inputy) @[alu.scala 33:30]
    node _T_4 = eq(UInt<2>("h2"), io_operation) @[Conditional.scala 37:30]
    node _T_5 = add(io_inputx, io_inputy) @[alu.scala 36:30]
    node _T_6 = tail(_T_5, 1) @[alu.scala 36:30]
    node _T_7 = eq(UInt<2>("h3"), io_operation) @[Conditional.scala 37:30]
    node _T_8 = sub(io_inputx, io_inputy) @[alu.scala 39:30]
    node _T_9 = tail(_T_8, 1) @[alu.scala 39:30]
    node _T_10 = eq(UInt<3>("h4"), io_operation) @[Conditional.scala 37:30]
    node _T_11 = asSInt(io_inputx) @[alu.scala 42:31]
    node _T_12 = asSInt(io_inputy) @[alu.scala 42:50]
    node _T_13 = lt(_T_11, _T_12) @[alu.scala 42:38]
    node _T_14 = eq(UInt<3>("h5"), io_operation) @[Conditional.scala 37:30]
    node _T_15 = lt(io_inputx, io_inputy) @[alu.scala 45:31]
    node _T_16 = eq(UInt<3>("h6"), io_operation) @[Conditional.scala 37:30]
    node _T_17 = bits(io_inputy, 4, 0) @[alu.scala 48:42]
    node _T_18 = dshl(io_inputx, _T_17) @[alu.scala 48:30]
    node _T_19 = eq(UInt<3>("h7"), io_operation) @[Conditional.scala 37:30]
    node _T_20 = bits(io_inputy, 4, 0) @[alu.scala 51:42]
    node _T_21 = dshr(io_inputx, _T_20) @[alu.scala 51:30]
    node _T_22 = eq(UInt<4>("h8"), io_operation) @[Conditional.scala 37:30]
    node _T_23 = asSInt(io_inputx) @[alu.scala 54:31]
    node _T_24 = bits(io_inputy, 4, 0) @[alu.scala 54:50]
    node _T_25 = dshr(_T_23, _T_24) @[alu.scala 54:38]
    node _T_26 = asUInt(_T_25) @[alu.scala 54:57]
    node _T_27 = eq(UInt<4>("h9"), io_operation) @[Conditional.scala 37:30]
    node _T_28 = xor(io_inputx, io_inputy) @[alu.scala 57:30]
    node _T_29 = eq(UInt<4>("ha"), io_operation) @[Conditional.scala 37:30]
    node _T_30 = or(io_inputx, io_inputy) @[alu.scala 60:32]
    node _T_31 = not(_T_30) @[alu.scala 60:20]
    node _GEN_0 = mux(_T_29, _T_31, UInt<1>("h0")) @[Conditional.scala 39:67]
    node _GEN_1 = mux(_T_27, _T_28, _GEN_0) @[Conditional.scala 39:67]
    node _GEN_2 = mux(_T_22, _T_26, _GEN_1) @[Conditional.scala 39:67]
    node _GEN_3 = mux(_T_19, _T_21, _GEN_2) @[Conditional.scala 39:67]
    node _GEN_4 = mux(_T_16, _T_18, _GEN_3) @[Conditional.scala 39:67]
    node _GEN_5 = mux(_T_14, _T_15, _GEN_4) @[Conditional.scala 39:67]
    node _GEN_6 = mux(_T_10, _T_13, _GEN_5) @[Conditional.scala 39:67]
    node _GEN_7 = mux(_T_7, _T_9, _GEN_6) @[Conditional.scala 39:67]
    node _GEN_8 = mux(_T_4, _T_6, _GEN_7) @[Conditional.scala 39:67]
    node _GEN_9 = mux(_T_2, _T_3, _GEN_8) @[Conditional.scala 39:67]
    node _GEN_10 = mux(_T, _T_1, _GEN_9) @[Conditional.scala 40:58]
    io_result <= bits(_GEN_10, 31, 0) @[alu.scala 26:13 alu.scala 30:17 alu.scala 33:17 alu.scala 36:17 alu.scala 39:17 alu.scala 42:17 alu.scala 45:17 alu.scala 48:17 alu.scala 51:17 alu.scala 54:17 alu.scala 57:17 alu.scala 60:17]

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
    output io_pcwrite : UInt<2>
    output io_ifid_bubble : UInt<1>
    output io_idex_bubble : UInt<1>
    output io_exmem_bubble : UInt<1>
    output io_ifid_flush : UInt<1>
  
    node _T = eq(io_idex_rd, io_rs1) @[hazard.scala 57:21]
    node _T_1 = eq(io_idex_rd, io_rs2) @[hazard.scala 57:46]
    node _T_2 = or(_T, _T_1) @[hazard.scala 57:32]
    node _T_3 = and(io_idex_memread, _T_2) @[hazard.scala 56:32]
    node _GEN_0 = mux(io_id_branch, UInt<2>("h3"), UInt<1>("h0")) @[hazard.scala 62:30]
    node _GEN_1 = mux(io_id_branch, UInt<1>("h1"), UInt<1>("h0")) @[hazard.scala 62:30]
    node _GEN_2 = mux(io_id_branch, UInt<1>("h0"), UInt<1>("h0")) @[hazard.scala 62:30]
    node _GEN_3 = mux(_T_3, UInt<2>("h2"), _GEN_0) @[hazard.scala 57:59]
    node _GEN_4 = mux(_T_3, UInt<1>("h1"), _GEN_2) @[hazard.scala 57:59]
    node _GEN_5 = mux(_T_3, UInt<1>("h0"), _GEN_1) @[hazard.scala 57:59]
    node _GEN_6 = mux(_T_3, UInt<1>("h0"), _GEN_2) @[hazard.scala 57:59]
    node _GEN_7 = mux(io_exmem_taken, UInt<1>("h1"), _GEN_3) @[hazard.scala 50:25]
    node _GEN_8 = mux(io_exmem_taken, UInt<1>("h1"), _GEN_5) @[hazard.scala 50:25]
    node _GEN_9 = mux(io_exmem_taken, UInt<1>("h1"), _GEN_4) @[hazard.scala 50:25]
    node _GEN_10 = mux(io_exmem_taken, UInt<1>("h1"), _GEN_6) @[hazard.scala 50:25]
    node _GEN_11 = mux(io_exmem_taken, UInt<1>("h0"), _GEN_4) @[hazard.scala 50:25]
    io_pcwrite <= _GEN_7 @[hazard.scala 44:19 hazard.scala 52:16 hazard.scala 59:20 hazard.scala 64:16 hazard.scala 67:21]
    io_ifid_bubble <= _GEN_11 @[hazard.scala 45:19 hazard.scala 60:20 hazard.scala 68:21]
    io_idex_bubble <= _GEN_9 @[hazard.scala 46:19 hazard.scala 54:21 hazard.scala 61:20 hazard.scala 69:21]
    io_exmem_bubble <= _GEN_10 @[hazard.scala 47:19 hazard.scala 55:21 hazard.scala 70:21]
    io_ifid_flush <= _GEN_8 @[hazard.scala 48:19 hazard.scala 53:20 hazard.scala 65:19 hazard.scala 71:21]

  module LocalPredictor :
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
    io_prediction <= UInt<1>("h0") @[branchpred.scala 79:17]
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
    inst predictor of LocalPredictor @[cpu.scala 101:26]
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
    reg bpCorrect : UInt<32>, clock with :
      reset => (UInt<1>("h0"), bpCorrect) @[cpu.scala 113:28]
    reg bpIncorrect : UInt<32>, clock with :
      reset => (UInt<1>("h0"), bpIncorrect) @[cpu.scala 114:28]
    node _T_8 = shl(UInt<1>("h1"), 20) @[cpu.scala 115:26]
    node _T_9 = gt(bpCorrect, _T_8) @[cpu.scala 115:19]
    node _T_10 = asUInt(reset) @[cpu.scala 117:11]
    node _T_11 = eq(_T_10, UInt<1>("h0")) @[cpu.scala 117:11]
    node _T_12 = eq(hazard.io_pcwrite, UInt<1>("h0")) @[cpu.scala 138:36]
    node _T_13 = eq(hazard.io_pcwrite, UInt<1>("h1")) @[cpu.scala 139:36]
    node _T_14 = eq(hazard.io_pcwrite, UInt<2>("h2")) @[cpu.scala 140:36]
    node _T_15 = eq(hazard.io_pcwrite, UInt<2>("h3")) @[cpu.scala 141:36]
    node id_next_pc = branchAdd.io_result @[cpu.scala 126:24 cpu.scala 202:14]
    node _T_16 = mux(_T_15, id_next_pc, UInt<1>("h0")) @[Mux.scala 87:16]
    node _T_17 = mux(_T_14, pc, _T_16) @[Mux.scala 87:16]
    node mem_next_pc = ex_mem_nextpc @[cpu.scala 123:25 cpu.scala 375:15]
    node _T_18 = mux(_T_13, mem_next_pc, _T_17) @[Mux.scala 87:16]
    node _T_19 = mux(_T_12, pcPlusFour.io_result, _T_18) @[Mux.scala 87:16]
    node _T_20 = not(hazard.io_ifid_bubble) @[cpu.scala 154:9]
    node _GEN_2 = mux(_T_20, io_imem_instruction, if_id_instruction) @[cpu.scala 154:33]
    node _GEN_3 = mux(_T_20, pc, if_id_pc) @[cpu.scala 154:33]
    node _GEN_4 = mux(_T_20, pcPlusFour.io_result, if_id_pcplusfour) @[cpu.scala 154:33]
    node _GEN_5 = mux(hazard.io_ifid_flush, UInt<1>("h0"), _GEN_2) @[cpu.scala 161:31]
    node _GEN_6 = mux(hazard.io_ifid_flush, UInt<1>("h0"), _GEN_3) @[cpu.scala 161:31]
    node _GEN_7 = mux(hazard.io_ifid_flush, UInt<1>("h0"), _GEN_4) @[cpu.scala 161:31]
    node rs1 = bits(if_id_instruction, 19, 15) @[cpu.scala 173:30]
    node rs2 = bits(if_id_instruction, 24, 20) @[cpu.scala 174:30]
    node _T_21 = and(control.io_branch, predictor.io_prediction) @[cpu.scala 185:44]
    node _T_22 = bits(if_id_instruction, 6, 0) @[cpu.scala 188:41]
    node _T_23 = bits(if_id_instruction, 11, 7) @[cpu.scala 205:40]
    node _T_24 = bits(if_id_instruction, 31, 25) @[cpu.scala 208:40]
    node _T_25 = bits(if_id_instruction, 14, 12) @[cpu.scala 209:40]
    node _T_26 = bits(if_id_instruction, 13, 12) @[cpu.scala 228:47]
    node _T_27 = bits(if_id_instruction, 14, 14) @[cpu.scala 229:48]
    node _T_28 = not(_T_27) @[cpu.scala 229:30]
    node _T_29_prediction = UInt<1>("h0") @[cpu.scala 237:36 cpu.scala 237:36]
    node _GEN_8 = mux(hazard.io_idex_bubble, _T_29_prediction, predictor.io_prediction) @[cpu.scala 235:32]
    node _T_29_jump = UInt<2>("h0") @[cpu.scala 237:36 cpu.scala 237:36]
    node _GEN_9 = mux(hazard.io_idex_bubble, _T_29_jump, control.io_jump) @[cpu.scala 235:32]
    node _T_29_branch = UInt<1>("h0") @[cpu.scala 237:36 cpu.scala 237:36]
    node _GEN_10 = mux(hazard.io_idex_bubble, _T_29_branch, control.io_branch) @[cpu.scala 235:32]
    node _T_29_alusrc1 = UInt<2>("h0") @[cpu.scala 237:36 cpu.scala 237:36]
    node _GEN_11 = mux(hazard.io_idex_bubble, _T_29_alusrc1, control.io_alusrc1) @[cpu.scala 235:32]
    node _T_29_immediate = UInt<1>("h0") @[cpu.scala 237:36 cpu.scala 237:36]
    node _GEN_12 = mux(hazard.io_idex_bubble, _T_29_immediate, control.io_immediate) @[cpu.scala 235:32]
    node _T_29_add = UInt<1>("h0") @[cpu.scala 237:36 cpu.scala 237:36]
    node _GEN_13 = mux(hazard.io_idex_bubble, _T_29_add, control.io_add) @[cpu.scala 235:32]
    node _T_30_sext = UInt<1>("h0") @[cpu.scala 238:36 cpu.scala 238:36]
    node _GEN_14 = mux(hazard.io_idex_bubble, _T_30_sext, _T_28) @[cpu.scala 235:32]
    node _T_30_maskmode = UInt<2>("h0") @[cpu.scala 238:36 cpu.scala 238:36]
    node _GEN_15 = mux(hazard.io_idex_bubble, _T_30_maskmode, _T_26) @[cpu.scala 235:32]
    node _T_30_taken = UInt<1>("h0") @[cpu.scala 238:36 cpu.scala 238:36]
    node _GEN_16 = mux(hazard.io_idex_bubble, _T_30_taken, id_ex_mcontrol_taken) @[cpu.scala 235:32]
    node _T_30_memwrite = UInt<1>("h0") @[cpu.scala 238:36 cpu.scala 238:36]
    node _GEN_17 = mux(hazard.io_idex_bubble, _T_30_memwrite, control.io_memwrite) @[cpu.scala 235:32]
    node _T_30_memread = UInt<1>("h0") @[cpu.scala 238:36 cpu.scala 238:36]
    node _GEN_18 = mux(hazard.io_idex_bubble, _T_30_memread, control.io_memread) @[cpu.scala 235:32]
    node _T_31_regwrite = UInt<1>("h0") @[cpu.scala 239:36 cpu.scala 239:36]
    node _GEN_19 = mux(hazard.io_idex_bubble, _T_31_regwrite, control.io_regwrite) @[cpu.scala 235:32]
    node _T_31_toreg = UInt<2>("h0") @[cpu.scala 239:36 cpu.scala 239:36]
    node _GEN_20 = mux(hazard.io_idex_bubble, _T_31_toreg, control.io_toreg) @[cpu.scala 235:32]
    node _T_32 = eq(forwarding.io_forwardA, UInt<1>("h0")) @[cpu.scala 266:52]
    node _T_33 = eq(forwarding.io_forwardA, UInt<1>("h1")) @[cpu.scala 267:52]
    node _T_34 = eq(forwarding.io_forwardA, UInt<2>("h2")) @[cpu.scala 268:52]
    node _T_64 = eq(mem_wb_wbcontrol_toreg, UInt<1>("h0")) @[cpu.scala 399:48]
    node _T_65 = eq(mem_wb_wbcontrol_toreg, UInt<1>("h1")) @[cpu.scala 400:48]
    node _T_66 = eq(mem_wb_wbcontrol_toreg, UInt<2>("h2")) @[cpu.scala 401:48]
    node _T_67 = mux(_T_66, mem_wb_pcplusfour, mem_wb_aluresult) @[Mux.scala 87:16]
    node _T_68 = mux(_T_65, mem_wb_readdata, _T_67) @[Mux.scala 87:16]
    node _T_69 = mux(_T_64, mem_wb_aluresult, _T_68) @[Mux.scala 87:16]
    node write_data = _T_69 @[cpu.scala 129:24 cpu.scala 398:14]
    node _T_35 = mux(_T_34, write_data, UInt<1>("h0")) @[Mux.scala 87:16]
    node _T_36 = mux(_T_33, ex_mem_aluresult, _T_35) @[Mux.scala 87:16]
    node _T_37 = mux(_T_32, id_ex_readdata1, _T_36) @[Mux.scala 87:16]
    node _T_38 = eq(UInt<1>("h0"), id_ex_excontrol_alusrc1) @[Conditional.scala 37:30]
    node _T_39 = eq(UInt<1>("h1"), id_ex_excontrol_alusrc1) @[Conditional.scala 37:30]
    node _T_40 = eq(UInt<2>("h2"), id_ex_excontrol_alusrc1) @[Conditional.scala 37:30]
    node _GEN_21 = validif(_T_40, id_ex_pc) @[Conditional.scala 39:67]
    node _GEN_22 = mux(_T_39, UInt<1>("h0"), _GEN_21) @[Conditional.scala 39:67]
    node forward_inputx = _T_37 @[cpu.scala 264:28 cpu.scala 265:19]
    node _GEN_23 = mux(_T_38, forward_inputx, _GEN_22) @[Conditional.scala 40:58]
    node _T_41 = eq(forwarding.io_forwardB, UInt<1>("h0")) @[cpu.scala 283:52]
    node _T_42 = eq(forwarding.io_forwardB, UInt<1>("h1")) @[cpu.scala 284:52]
    node _T_43 = eq(forwarding.io_forwardB, UInt<2>("h2")) @[cpu.scala 285:52]
    node _T_44 = mux(_T_43, write_data, UInt<1>("h0")) @[Mux.scala 87:16]
    node _T_45 = mux(_T_42, ex_mem_aluresult, _T_44) @[Mux.scala 87:16]
    node forward_inputy = mux(_T_41, id_ex_readdata2, _T_45) @[Mux.scala 87:16]
    node alu_inputy = forward_inputy @[cpu.scala 287:24 cpu.scala 288:14]
    node _T_46 = mux(id_ex_excontrol_immediate, id_ex_imm, alu_inputy) @[cpu.scala 291:23]
    node _T_47 = not(hazard.io_exmem_bubble) @[cpu.scala 311:35]
    node _T_48 = and(id_ex_excontrol_branch, _T_47) @[cpu.scala 311:32]
    node _T_49 = eq(id_ex_excontrol_prediction, branchCtrl.io_taken) @[cpu.scala 317:38]
    node _T_50 = add(bpCorrect, UInt<1>("h1")) @[cpu.scala 318:32]
    node _T_51 = tail(_T_50, 1) @[cpu.scala 318:32]
    node _T_52 = add(bpIncorrect, UInt<1>("h1")) @[cpu.scala 320:34]
    node _T_53 = tail(_T_52, 1) @[cpu.scala 320:34]
    node _GEN_24 = mux(_T_49, _T_51, bpCorrect) @[cpu.scala 317:63]
    node _GEN_25 = mux(_T_49, bpIncorrect, _T_53) @[cpu.scala 317:63]
    node _GEN_26 = mux(_T_48, UInt<1>("h1"), UInt<1>("h0")) @[cpu.scala 311:60]
    node _GEN_27 = validif(_T_48, branchCtrl.io_taken) @[cpu.scala 311:60]
    node _GEN_28 = mux(_T_48, _GEN_24, bpCorrect) @[cpu.scala 311:60]
    node _GEN_29 = mux(_T_48, _GEN_25, bpIncorrect) @[cpu.scala 311:60]
    node _T_54 = bits(id_ex_excontrol_jump, 1, 1) @[cpu.scala 330:29]
    node _T_55 = bits(id_ex_excontrol_jump, 0, 0) @[cpu.scala 332:31]
    node _T_56 = eq(_T_55, UInt<1>("h0")) @[cpu.scala 332:35]
    node _T_57 = mux(UInt<1>("h1"), UInt<31>("h7fffffff"), UInt<31>("h0")) @[Bitwise.scala 72:12]
    node _T_58 = cat(_T_57, UInt<1>("h0")) @[Cat.scala 29:58]
    node _T_59 = and(alu.io_result, _T_58) @[cpu.scala 338:38]
    node _GEN_30 = mux(_T_56, id_ex_branchpc, _T_59) @[cpu.scala 332:44]
    node _GEN_31 = mux(_T_56, UInt<1>("h1"), UInt<1>("h1")) @[cpu.scala 332:44]
    node _T_60 = neq(branchCtrl.io_taken, id_ex_excontrol_prediction) @[cpu.scala 343:31]
    node _T_61 = and(_T_60, id_ex_excontrol_branch) @[cpu.scala 343:62]
    node _GEN_32 = mux(branchCtrl.io_taken, id_ex_branchpc, id_ex_pcplusfour) @[cpu.scala 344:34]
    node _GEN_33 = validif(_T_61, _GEN_32) @[cpu.scala 343:89]
    node _GEN_34 = mux(_T_61, UInt<1>("h1"), UInt<1>("h0")) @[cpu.scala 343:89]
    node _GEN_35 = mux(_T_54, _GEN_30, _GEN_33) @[cpu.scala 330:34]
    node _GEN_36 = mux(_T_54, _GEN_31, _GEN_34) @[cpu.scala 330:34]
    node _T_62_sext = UInt<1>("h0") @[cpu.scala 356:37 cpu.scala 356:37]
    node _GEN_37 = mux(hazard.io_exmem_bubble, _T_62_sext, id_ex_mcontrol_sext) @[cpu.scala 354:33]
    node _T_62_maskmode = UInt<2>("h0") @[cpu.scala 356:37 cpu.scala 356:37]
    node _GEN_38 = mux(hazard.io_exmem_bubble, _T_62_maskmode, id_ex_mcontrol_maskmode) @[cpu.scala 354:33]
    node _T_62_taken = UInt<1>("h0") @[cpu.scala 356:37 cpu.scala 356:37]
    node _GEN_39 = mux(hazard.io_exmem_bubble, _T_62_taken, _GEN_36) @[cpu.scala 354:33]
    node _T_62_memwrite = UInt<1>("h0") @[cpu.scala 356:37 cpu.scala 356:37]
    node _GEN_40 = mux(hazard.io_exmem_bubble, _T_62_memwrite, id_ex_mcontrol_memwrite) @[cpu.scala 354:33]
    node _T_62_memread = UInt<1>("h0") @[cpu.scala 356:37 cpu.scala 356:37]
    node _GEN_41 = mux(hazard.io_exmem_bubble, _T_62_memread, id_ex_mcontrol_memread) @[cpu.scala 354:33]
    node _T_63_regwrite = UInt<1>("h0") @[cpu.scala 357:37 cpu.scala 357:37]
    node _GEN_42 = mux(hazard.io_exmem_bubble, _T_63_regwrite, id_ex_wbcontrol_regwrite) @[cpu.scala 354:33]
    node _T_63_toreg = UInt<2>("h0") @[cpu.scala 357:37 cpu.scala 357:37]
    node _GEN_43 = mux(hazard.io_exmem_bubble, _T_63_toreg, id_ex_wbcontrol_toreg) @[cpu.scala 354:33]
    node _T_70 = neq(registers.io_writereg, UInt<1>("h0")) @[cpu.scala 406:81]
    node _T_71 = and(mem_wb_wbcontrol_regwrite, _T_70) @[cpu.scala 406:55]
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
    node alu_inputx = _GEN_23 @[cpu.scala 271:24 cpu.scala 275:26 cpu.scala 276:26 cpu.scala 277:26]
    io_imem_address <= pc @[cpu.scala 146:19]
    io_dmem_address <= ex_mem_aluresult @[cpu.scala 367:21]
    io_dmem_writedata <= ex_mem_readdata2 @[cpu.scala 368:21]
    io_dmem_memread <= ex_mem_mcontrol_memread @[cpu.scala 369:21]
    io_dmem_memwrite <= ex_mem_mcontrol_memwrite @[cpu.scala 370:21]
    io_dmem_maskmode <= ex_mem_mcontrol_maskmode @[cpu.scala 371:21]
    io_dmem_sext <= ex_mem_mcontrol_sext @[cpu.scala 372:21]
    pc <= mux(reset, UInt<1>("h0"), _T_19) @[cpu.scala 137:6]
    control.clock <= clock
    control.reset <= reset
    control.io_opcode <= _T_22 @[cpu.scala 188:21]
    branchCtrl.clock <= clock
    branchCtrl.reset <= reset
    branchCtrl.io_branch <= id_ex_excontrol_branch @[cpu.scala 294:24]
    branchCtrl.io_funct3 <= id_ex_funct3 @[cpu.scala 295:24]
    branchCtrl.io_inputx <= forward_inputx @[cpu.scala 296:24]
    branchCtrl.io_inputy <= forward_inputy @[cpu.scala 297:24]
    registers.clock <= clock
    registers.reset <= reset
    registers.io_readreg1 <= rs1 @[cpu.scala 191:25]
    registers.io_readreg2 <= rs2 @[cpu.scala 192:25]
    registers.io_writereg <= mem_wb_writereg @[cpu.scala 405:26]
    registers.io_writedata <= write_data @[cpu.scala 404:26]
    registers.io_wen <= _T_71 @[cpu.scala 406:26]
    aluControl.clock <= clock
    aluControl.reset <= reset
    aluControl.io_add <= id_ex_excontrol_add @[cpu.scala 258:27]
    aluControl.io_immediate <= id_ex_excontrol_immediate @[cpu.scala 259:27]
    aluControl.io_funct7 <= id_ex_funct7 @[cpu.scala 260:27]
    aluControl.io_funct3 <= id_ex_funct3 @[cpu.scala 261:27]
    alu.clock <= clock
    alu.reset <= reset
    alu.io_operation <= aluControl.io_operation @[cpu.scala 300:20]
    alu.io_inputx <= alu_inputx @[cpu.scala 279:17]
    alu.io_inputy <= _T_46 @[cpu.scala 291:17]
    immGen.clock <= clock
    immGen.reset <= reset
    immGen.io_instruction <= if_id_instruction @[cpu.scala 195:25]
    pcPlusFour.clock <= clock
    pcPlusFour.reset <= reset
    pcPlusFour.io_inputx <= pc @[cpu.scala 149:24]
    pcPlusFour.io_inputy <= UInt<3>("h4") @[cpu.scala 150:24]
    branchAdd.clock <= clock
    branchAdd.reset <= reset
    branchAdd.io_inputx <= if_id_pc @[cpu.scala 198:23]
    branchAdd.io_inputy <= immGen.io_sextImm @[cpu.scala 199:23]
    forwarding.clock <= clock
    forwarding.reset <= reset
    forwarding.io_rs1 <= id_ex_rs1 @[cpu.scala 254:21]
    forwarding.io_rs2 <= id_ex_rs2 @[cpu.scala 255:21]
    forwarding.io_exmemrd <= ex_mem_writereg @[cpu.scala 381:25]
    forwarding.io_exmemrw <= ex_mem_wbcontrol_regwrite @[cpu.scala 382:25]
    forwarding.io_memwbrd <= mem_wb_writereg @[cpu.scala 409:25]
    forwarding.io_memwbrw <= mem_wb_wbcontrol_regwrite @[cpu.scala 410:25]
    hazard.clock <= clock
    hazard.reset <= reset
    hazard.io_rs1 <= rs1 @[cpu.scala 177:17]
    hazard.io_rs2 <= rs2 @[cpu.scala 178:17]
    hazard.io_id_branch <= _T_21 @[cpu.scala 185:23]
    hazard.io_idex_memread <= id_ex_mcontrol_memread @[cpu.scala 250:26]
    hazard.io_idex_rd <= id_ex_writereg @[cpu.scala 251:26]
    hazard.io_exmem_taken <= ex_mem_mcontrol_taken @[cpu.scala 378:25]
    predictor.clock <= clock
    predictor.reset <= reset
    predictor.io_pc <= if_id_pc @[cpu.scala 181:19]
    predictor.io_update <= _GEN_26 @[cpu.scala 313:25 cpu.scala 325:25]
    predictor.io_taken <= _GEN_27 @[cpu.scala 314:25]
    value <= mux(reset, UInt<30>("h0"), _GEN_0) @[Counter.scala 39:13]
    if_id_instruction <= mux(reset, _T_4_instruction, _GEN_5) @[cpu.scala 155:23 cpu.scala 162:23]
    if_id_pc <= mux(reset, _T_4_pc, _GEN_6) @[cpu.scala 156:23 cpu.scala 163:23]
    if_id_pcplusfour <= mux(reset, _T_4_pcplusfour, _GEN_7) @[cpu.scala 157:23 cpu.scala 164:23]
    id_ex_writereg <= mux(reset, _T_5_writereg, _T_23) @[cpu.scala 205:20]
    id_ex_funct7 <= mux(reset, _T_5_funct7, _T_24) @[cpu.scala 208:20]
    id_ex_funct3 <= mux(reset, _T_5_funct3, _T_25) @[cpu.scala 209:20]
    id_ex_imm <= mux(reset, _T_5_imm, immGen.io_sextImm) @[cpu.scala 210:20]
    id_ex_readdata2 <= mux(reset, _T_5_readdata2, registers.io_readdata2) @[cpu.scala 211:20]
    id_ex_readdata1 <= mux(reset, _T_5_readdata1, registers.io_readdata1) @[cpu.scala 212:20]
    id_ex_pc <= mux(reset, _T_5_pc, if_id_pc) @[cpu.scala 213:20]
    id_ex_pcplusfour <= mux(reset, _T_5_pcplusfour, if_id_pcplusfour) @[cpu.scala 214:20]
    id_ex_excontrol_add <= mux(reset, _T_5_excontrol_add, _GEN_13) @[cpu.scala 218:29 cpu.scala 237:21]
    id_ex_excontrol_immediate <= mux(reset, _T_5_excontrol_immediate, _GEN_12) @[cpu.scala 219:29 cpu.scala 237:21]
    id_ex_excontrol_alusrc1 <= mux(reset, _T_5_excontrol_alusrc1, _GEN_11) @[cpu.scala 220:29 cpu.scala 237:21]
    id_ex_excontrol_branch <= mux(reset, _T_5_excontrol_branch, _GEN_10) @[cpu.scala 221:29 cpu.scala 237:21]
    id_ex_excontrol_jump <= mux(reset, _T_5_excontrol_jump, _GEN_9) @[cpu.scala 222:29 cpu.scala 237:21]
    id_ex_excontrol_prediction <= mux(reset, _T_5_excontrol_prediction, _GEN_8) @[cpu.scala 223:29 cpu.scala 237:21]
    id_ex_mcontrol_memread <= mux(reset, _T_5_mcontrol_memread, _GEN_18) @[cpu.scala 226:27 cpu.scala 238:21]
    id_ex_mcontrol_memwrite <= mux(reset, _T_5_mcontrol_memwrite, _GEN_17) @[cpu.scala 227:27 cpu.scala 238:21]
    id_ex_mcontrol_taken <= mux(reset, _T_5_mcontrol_taken, _GEN_16) @[cpu.scala 238:21]
    id_ex_mcontrol_maskmode <= mux(reset, _T_5_mcontrol_maskmode, _GEN_15) @[cpu.scala 228:27 cpu.scala 238:21]
    id_ex_mcontrol_sext <= mux(reset, _T_5_mcontrol_sext, _GEN_14) @[cpu.scala 229:27 cpu.scala 238:21]
    id_ex_wbcontrol_toreg <= mux(reset, _T_5_wbcontrol_toreg, _GEN_20) @[cpu.scala 232:28 cpu.scala 239:21]
    id_ex_wbcontrol_regwrite <= mux(reset, _T_5_wbcontrol_regwrite, _GEN_19) @[cpu.scala 233:28 cpu.scala 239:21]
    id_ex_rs1 <= mux(reset, _T_5_rs1, rs1) @[cpu.scala 206:20]
    id_ex_rs2 <= mux(reset, _T_5_rs2, rs2) @[cpu.scala 207:20]
    id_ex_branchpc <= mux(reset, _T_5_branchpc, branchAdd.io_result) @[cpu.scala 215:20]
    ex_mem_writereg <= mux(reset, _T_6_writereg, id_ex_writereg) @[cpu.scala 305:21]
    ex_mem_readdata2 <= mux(reset, _T_6_readdata2, alu_inputy) @[cpu.scala 303:21]
    ex_mem_aluresult <= mux(reset, _T_6_aluresult, alu.io_result) @[cpu.scala 304:21]
    ex_mem_nextpc <= mux(reset, _T_6_nextpc, _GEN_35) @[cpu.scala 334:21 cpu.scala 338:21 cpu.scala 344:50 cpu.scala 345:34]
    ex_mem_pcplusfour <= mux(reset, _T_6_pcplusfour, id_ex_pcplusfour) @[cpu.scala 306:21]
    ex_mem_mcontrol_memread <= mux(reset, _T_6_mcontrol_memread, _GEN_41) @[cpu.scala 307:21 cpu.scala 356:22]
    ex_mem_mcontrol_memwrite <= mux(reset, _T_6_mcontrol_memwrite, _GEN_40) @[cpu.scala 307:21 cpu.scala 356:22]
    ex_mem_mcontrol_taken <= mux(reset, _T_6_mcontrol_taken, _GEN_39) @[cpu.scala 307:21 cpu.scala 335:29 cpu.scala 339:29 cpu.scala 346:29 cpu.scala 348:30 cpu.scala 356:22]
    ex_mem_mcontrol_maskmode <= mux(reset, _T_6_mcontrol_maskmode, _GEN_38) @[cpu.scala 307:21 cpu.scala 356:22]
    ex_mem_mcontrol_sext <= mux(reset, _T_6_mcontrol_sext, _GEN_37) @[cpu.scala 307:21 cpu.scala 356:22]
    ex_mem_wbcontrol_toreg <= mux(reset, _T_6_wbcontrol_toreg, _GEN_43) @[cpu.scala 308:21 cpu.scala 357:22]
    ex_mem_wbcontrol_regwrite <= mux(reset, _T_6_wbcontrol_regwrite, _GEN_42) @[cpu.scala 308:21 cpu.scala 357:22]
    mem_wb_writereg <= mux(reset, _T_7_writereg, ex_mem_writereg) @[cpu.scala 385:21]
    mem_wb_aluresult <= mux(reset, _T_7_aluresult, ex_mem_aluresult) @[cpu.scala 386:21]
    mem_wb_readdata <= mux(reset, _T_7_readdata, io_dmem_readdata) @[cpu.scala 388:21]
    mem_wb_pcplusfour <= mux(reset, _T_7_pcplusfour, ex_mem_pcplusfour) @[cpu.scala 387:21]
    mem_wb_wbcontrol_toreg <= mux(reset, _T_7_wbcontrol_toreg, ex_mem_wbcontrol_toreg) @[cpu.scala 389:21]
    mem_wb_wbcontrol_regwrite <= mux(reset, _T_7_wbcontrol_regwrite, ex_mem_wbcontrol_regwrite) @[cpu.scala 389:21]
    bpCorrect <= mux(reset, UInt<32>("h0"), _GEN_28) @[cpu.scala 318:19]
    bpIncorrect <= mux(reset, UInt<32>("h0"), _GEN_29) @[cpu.scala 320:19]
    printf(clock, and(and(and(UInt<1>("h1"), _T_9), _T_11), UInt<1>("h1")), "BP correct: %d; incorrect: %d\n", bpCorrect, bpIncorrect) @[cpu.scala 117:11]

  module DualPortedMemory :
    input clock : Clock
    input reset : UInt<1>
    input io_imem_address : UInt<32>
    output io_imem_instruction : UInt<32>
    input io_dmem_address : UInt<32>
    input io_dmem_writedata : UInt<32>
    input io_dmem_memread : UInt<1>
    input io_dmem_memwrite : UInt<1>
    input io_dmem_maskmode : UInt<2>
    input io_dmem_sext : UInt<1>
    output io_dmem_readdata : UInt<32>
  
    mem memory : @[memory.scala 60:19]
      data-type => UInt<32>
      depth => 16384
      read-latency => 0
      write-latency => 1
      reader => _T_3
      reader => _T_13
      reader => _T_19
      reader => _T_23
      reader => _T_27
      reader => _T_49
      writer => _T_62
      writer => _T_68
      read-under-write => undefined
    node _T = geq(io_imem_address, UInt<17>("h10000")) @[memory.scala 63:25]
    node _T_1 = shr(io_imem_address, 2) @[memory.scala 66:51]
    node _T_2 = bits(_T_1, 13, 0) @[memory.scala 66:34]
    node _GEN_0 = mux(_T, UInt<1>("h0"), memory._T_3.data) @[memory.scala 63:36]
    node _GEN_1 = validif(eq(_T, UInt<1>("h0")), _T_2) @[memory.scala 63:36]
    node _GEN_2 = validif(eq(_T, UInt<1>("h0")), clock) @[memory.scala 63:36]
    node _GEN_3 = mux(_T, UInt<1>("h0"), UInt<1>("h1")) @[memory.scala 63:36]
    node _T_4 = lt(io_dmem_address, UInt<17>("h10000")) @[memory.scala 70:28]
    node _T_5 = asUInt(reset) @[memory.scala 70:11]
    node _T_6 = or(_T_4, _T_5) @[memory.scala 70:11]
    node _T_7 = eq(_T_6, UInt<1>("h0")) @[memory.scala 70:11]
    node _T_9 = neq(io_dmem_maskmode, UInt<2>("h2")) @[memory.scala 73:28]
    node _T_10 = bits(io_dmem_address, 1, 0) @[memory.scala 74:35]
    node _T_11 = shr(io_dmem_address, 2) @[memory.scala 75:42]
    node _T_12 = bits(_T_11, 13, 0) @[memory.scala 75:25]
    node _T_14 = mul(_T_10, UInt<4>("h8")) @[memory.scala 75:59]
    node _T_15 = dshr(memory._T_13.data, _T_14) @[memory.scala 75:48]
    node _T_16 = eq(io_dmem_maskmode, UInt<1>("h0")) @[memory.scala 76:30]
    node _T_17 = shr(io_dmem_address, 2) @[memory.scala 77:44]
    node _T_18 = bits(_T_17, 13, 0) @[memory.scala 77:27]
    node _T_20 = and(memory._T_19.data, UInt<8>("hff")) @[memory.scala 77:50]
    node _T_21 = shr(io_dmem_address, 2) @[memory.scala 79:44]
    node _T_22 = bits(_T_21, 13, 0) @[memory.scala 79:27]
    node _T_24 = and(memory._T_23.data, UInt<16>("hffff")) @[memory.scala 79:50]
    node _GEN_4 = validif(_T_16, _T_18) @[memory.scala 76:39]
    node _GEN_5 = validif(_T_16, clock) @[memory.scala 76:39]
    node _GEN_6 = mux(_T_16, UInt<1>("h1"), UInt<1>("h0")) @[memory.scala 76:39]
    node _GEN_7 = mux(_T_16, _T_20, _T_24) @[memory.scala 76:39]
    node _GEN_8 = validif(eq(_T_16, UInt<1>("h0")), _T_22) @[memory.scala 76:39]
    node _GEN_9 = validif(eq(_T_16, UInt<1>("h0")), clock) @[memory.scala 76:39]
    node _GEN_10 = mux(_T_16, UInt<1>("h0"), UInt<1>("h1")) @[memory.scala 76:39]
    node _T_25 = shr(io_dmem_address, 2) @[memory.scala 82:42]
    node _T_26 = bits(_T_25, 13, 0) @[memory.scala 82:25]
    node _GEN_11 = validif(_T_9, _T_12) @[memory.scala 73:37]
    node _GEN_12 = validif(_T_9, clock) @[memory.scala 73:37]
    node _GEN_13 = mux(_T_9, UInt<1>("h1"), UInt<1>("h0")) @[memory.scala 73:37]
    node _GEN_14 = mux(_T_9, _GEN_7, memory._T_27.data) @[memory.scala 73:37]
    node _GEN_15 = validif(_T_9, _GEN_4) @[memory.scala 73:37]
    node _GEN_16 = validif(_T_9, _GEN_5) @[memory.scala 73:37]
    node _GEN_17 = mux(_T_9, _GEN_6, UInt<1>("h0")) @[memory.scala 73:37]
    node _GEN_18 = validif(_T_9, _GEN_8) @[memory.scala 73:37]
    node _GEN_19 = validif(_T_9, _GEN_9) @[memory.scala 73:37]
    node _GEN_20 = mux(_T_9, _GEN_10, UInt<1>("h0")) @[memory.scala 73:37]
    node _GEN_21 = validif(eq(_T_9, UInt<1>("h0")), _T_26) @[memory.scala 73:37]
    node _GEN_22 = validif(eq(_T_9, UInt<1>("h0")), clock) @[memory.scala 73:37]
    node _GEN_23 = mux(_T_9, UInt<1>("h0"), UInt<1>("h1")) @[memory.scala 73:37]
    node _T_28 = eq(io_dmem_maskmode, UInt<1>("h0")) @[memory.scala 86:30]
    node _T_8 = _GEN_14 @[memory.scala 71:24 memory.scala 75:16 memory.scala 77:18 memory.scala 79:18 memory.scala 82:16]
    node _T_29 = bits(_T_8, 7, 7) @[memory.scala 87:50]
    node _T_30 = bits(_T_29, 0, 0) @[Bitwise.scala 72:15]
    node _T_31 = mux(_T_30, UInt<24>("hffffff"), UInt<24>("h0")) @[Bitwise.scala 72:12]
    node _T_32 = bits(_T_8, 7, 0) @[memory.scala 87:64]
    node _T_33 = cat(_T_31, _T_32) @[Cat.scala 29:58]
    node _T_34 = eq(io_dmem_maskmode, UInt<1>("h1")) @[memory.scala 88:36]
    node _T_35 = bits(_T_8, 15, 15) @[memory.scala 89:50]
    node _T_36 = bits(_T_35, 0, 0) @[Bitwise.scala 72:15]
    node _T_37 = mux(_T_36, UInt<16>("hffff"), UInt<16>("h0")) @[Bitwise.scala 72:12]
    node _T_38 = bits(_T_8, 15, 0) @[memory.scala 89:65]
    node _T_39 = cat(_T_37, _T_38) @[Cat.scala 29:58]
    node _GEN_24 = mux(_T_34, _T_39, _T_8) @[memory.scala 88:45]
    node _GEN_25 = mux(_T_28, _T_33, _GEN_24) @[memory.scala 86:39]
    node _GEN_26 = mux(io_dmem_sext, _GEN_25, _T_8) @[memory.scala 85:25]
    node _GEN_27 = validif(io_dmem_memread, _GEN_11) @[memory.scala 69:26]
    node _GEN_28 = validif(io_dmem_memread, _GEN_12) @[memory.scala 69:26]
    node _GEN_29 = mux(io_dmem_memread, _GEN_13, UInt<1>("h0")) @[memory.scala 69:26]
    node _GEN_30 = validif(io_dmem_memread, _GEN_15) @[memory.scala 69:26]
    node _GEN_31 = validif(io_dmem_memread, _GEN_16) @[memory.scala 69:26]
    node _GEN_32 = mux(io_dmem_memread, _GEN_17, UInt<1>("h0")) @[memory.scala 69:26]
    node _GEN_33 = validif(io_dmem_memread, _GEN_18) @[memory.scala 69:26]
    node _GEN_34 = validif(io_dmem_memread, _GEN_19) @[memory.scala 69:26]
    node _GEN_35 = mux(io_dmem_memread, _GEN_20, UInt<1>("h0")) @[memory.scala 69:26]
    node _GEN_36 = validif(io_dmem_memread, _GEN_21) @[memory.scala 69:26]
    node _GEN_37 = validif(io_dmem_memread, _GEN_22) @[memory.scala 69:26]
    node _GEN_38 = mux(io_dmem_memread, _GEN_23, UInt<1>("h0")) @[memory.scala 69:26]
    node _GEN_39 = validif(io_dmem_memread, _GEN_26) @[memory.scala 69:26]
    node _T_40 = lt(io_dmem_address, UInt<17>("h10000")) @[memory.scala 99:28]
    node _T_41 = asUInt(reset) @[memory.scala 99:11]
    node _T_42 = or(_T_40, _T_41) @[memory.scala 99:11]
    node _T_43 = eq(_T_42, UInt<1>("h0")) @[memory.scala 99:11]
    node _T_44 = neq(io_dmem_maskmode, UInt<2>("h2")) @[memory.scala 100:28]
    node _T_45 = bits(io_dmem_address, 1, 0) @[memory.scala 101:35]
    node _T_47 = shr(io_dmem_address, 2) @[memory.scala 104:42]
    node _T_48 = bits(_T_47, 13, 0) @[memory.scala 104:25]
    node _T_51 = eq(io_dmem_maskmode, UInt<1>("h0")) @[memory.scala 107:30]
    node _T_52 = mul(_T_45, UInt<4>("h8")) @[memory.scala 108:48]
    node _T_53 = dshl(UInt<8>("hff"), _T_52) @[memory.scala 108:37]
    node _T_54 = not(_T_53) @[memory.scala 108:28]
    node _T_46 = memory._T_49.data @[memory.scala 103:26 memory.scala 104:16]
    node _T_55 = and(_T_46, _T_54) @[memory.scala 108:26]
    node _T_56 = mul(_T_45, UInt<4>("h8")) @[memory.scala 110:50]
    node _T_57 = dshl(UInt<16>("hffff"), _T_56) @[memory.scala 110:39]
    node _T_58 = not(_T_57) @[memory.scala 110:28]
    node _T_59 = and(_T_46, _T_58) @[memory.scala 110:26]
    node _GEN_40 = mux(_T_51, _T_55, _T_59) @[memory.scala 107:39]
    node _T_60 = shr(io_dmem_address, 2) @[memory.scala 112:30]
    node _T_61 = bits(_T_60, 13, 0) @[memory.scala 112:13]
    node _T_63 = mul(_T_45, UInt<4>("h8")) @[memory.scala 112:76]
    node _T_64 = dshl(io_dmem_writedata, _T_63) @[memory.scala 112:65]
    node _T_50 = bits(_GEN_40, 31, 0) @[memory.scala 106:22 memory.scala 108:14 memory.scala 110:14]
    node _T_65 = or(_T_50, _T_64) @[memory.scala 112:44]
    node _T_66 = shr(io_dmem_address, 2) @[memory.scala 114:30]
    node _T_67 = bits(_T_66, 13, 0) @[memory.scala 114:13]
    node _GEN_41 = validif(_T_44, _T_48) @[memory.scala 100:37]
    node _GEN_42 = validif(_T_44, clock) @[memory.scala 100:37]
    node _GEN_43 = mux(_T_44, UInt<1>("h1"), UInt<1>("h0")) @[memory.scala 100:37]
    node _GEN_44 = validif(_T_44, _T_61) @[memory.scala 100:37]
    node _GEN_45 = validif(_T_44, UInt<1>("h1")) @[memory.scala 100:37]
    node _GEN_46 = validif(_T_44, _T_65) @[memory.scala 100:37]
    node _GEN_47 = validif(eq(_T_44, UInt<1>("h0")), _T_67) @[memory.scala 100:37]
    node _GEN_48 = validif(eq(_T_44, UInt<1>("h0")), clock) @[memory.scala 100:37]
    node _GEN_49 = mux(_T_44, UInt<1>("h0"), UInt<1>("h1")) @[memory.scala 100:37]
    node _GEN_50 = validif(eq(_T_44, UInt<1>("h0")), UInt<1>("h1")) @[memory.scala 100:37]
    node _GEN_51 = validif(eq(_T_44, UInt<1>("h0")), io_dmem_writedata) @[memory.scala 100:37]
    node _GEN_52 = validif(io_dmem_memwrite, _GEN_41) @[memory.scala 98:27]
    node _GEN_53 = validif(io_dmem_memwrite, _GEN_42) @[memory.scala 98:27]
    node _GEN_54 = mux(io_dmem_memwrite, _GEN_43, UInt<1>("h0")) @[memory.scala 98:27]
    node _GEN_55 = validif(io_dmem_memwrite, _GEN_44) @[memory.scala 98:27]
    node _GEN_56 = validif(io_dmem_memwrite, _GEN_45) @[memory.scala 98:27]
    node _GEN_57 = validif(io_dmem_memwrite, _GEN_46) @[memory.scala 98:27]
    node _GEN_58 = validif(io_dmem_memwrite, _GEN_47) @[memory.scala 98:27]
    node _GEN_59 = validif(io_dmem_memwrite, _GEN_48) @[memory.scala 98:27]
    node _GEN_60 = mux(io_dmem_memwrite, _GEN_49, UInt<1>("h0")) @[memory.scala 98:27]
    node _GEN_61 = validif(io_dmem_memwrite, _GEN_50) @[memory.scala 98:27]
    node _GEN_62 = validif(io_dmem_memwrite, _GEN_51) @[memory.scala 98:27]
    io_imem_instruction <= _GEN_0 @[memory.scala 64:25 memory.scala 66:25]
    io_dmem_readdata <= _GEN_39 @[memory.scala 87:26 memory.scala 89:26 memory.scala 91:26 memory.scala 94:24]
    memory._T_3.addr <= _GEN_1 @[memory.scala 66:34]
    memory._T_3.en <= _GEN_3 @[memory.scala 60:19 memory.scala 66:34]
    memory._T_3.clk <= _GEN_2 @[memory.scala 66:34]
    memory._T_13.addr <= _GEN_27 @[memory.scala 75:25]
    memory._T_13.en <= _GEN_29 @[memory.scala 60:19 memory.scala 75:25]
    memory._T_13.clk <= _GEN_28 @[memory.scala 75:25]
    memory._T_19.addr <= _GEN_30 @[memory.scala 77:27]
    memory._T_19.en <= _GEN_32 @[memory.scala 60:19 memory.scala 77:27]
    memory._T_19.clk <= _GEN_31 @[memory.scala 77:27]
    memory._T_23.addr <= _GEN_33 @[memory.scala 79:27]
    memory._T_23.en <= _GEN_35 @[memory.scala 60:19 memory.scala 79:27]
    memory._T_23.clk <= _GEN_34 @[memory.scala 79:27]
    memory._T_27.addr <= _GEN_36 @[memory.scala 82:25]
    memory._T_27.en <= _GEN_38 @[memory.scala 60:19 memory.scala 82:25]
    memory._T_27.clk <= _GEN_37 @[memory.scala 82:25]
    memory._T_49.addr <= _GEN_52 @[memory.scala 104:25]
    memory._T_49.en <= _GEN_54 @[memory.scala 60:19 memory.scala 104:25]
    memory._T_49.clk <= _GEN_53 @[memory.scala 104:25]
    memory._T_62.addr <= _GEN_55 @[memory.scala 112:13]
    memory._T_62.en <= _GEN_54 @[memory.scala 60:19 memory.scala 112:13]
    memory._T_62.clk <= _GEN_53 @[memory.scala 112:13]
    memory._T_62.data <= bits(_GEN_57, 31, 0) @[memory.scala 112:36]
    memory._T_62.mask <= _GEN_56 @[memory.scala 112:13 memory.scala 112:36]
    memory._T_68.addr <= _GEN_58 @[memory.scala 114:13]
    memory._T_68.en <= _GEN_60 @[memory.scala 60:19 memory.scala 114:13]
    memory._T_68.clk <= _GEN_59 @[memory.scala 114:13]
    memory._T_68.data <= _GEN_62 @[memory.scala 114:36]
    memory._T_68.mask <= _GEN_61 @[memory.scala 114:13 memory.scala 114:36]
    printf(clock, and(and(and(UInt<1>("h1"), io_dmem_memread), _T_7), UInt<1>("h1")), "Assertion failed\n    at memory.scala:70 assert(io.dmem.address < size.U)\n") @[memory.scala 70:11]
    stop(clock, and(and(and(UInt<1>("h1"), io_dmem_memread), _T_7), UInt<1>("h1")), 1) @[memory.scala 70:11]
    printf(clock, and(and(and(UInt<1>("h1"), io_dmem_memwrite), _T_43), UInt<1>("h1")), "Assertion failed\n    at memory.scala:99 assert(io.dmem.address < size.U)\n") @[memory.scala 99:11]
    stop(clock, and(and(and(UInt<1>("h1"), io_dmem_memwrite), _T_43), UInt<1>("h1")), 1) @[memory.scala 99:11]

  module Top :
    input clock : Clock
    input reset : UInt<1>
    output io_success : UInt<1>
  
    inst cpu of PipelinedCPU @[top.scala 14:21]
    inst mem of DualPortedMemory @[top.scala 15:20]
    io_success is invalid
    cpu.clock <= clock
    cpu.reset <= reset
    cpu.io_imem_instruction <= mem.io_imem_instruction @[top.scala 17:15]
    cpu.io_dmem_readdata <= mem.io_dmem_readdata @[top.scala 18:15]
    mem.clock <= clock
    mem.reset <= reset
    mem.io_imem_address <= cpu.io_imem_address @[top.scala 17:15]
    mem.io_dmem_address <= cpu.io_dmem_address @[top.scala 18:15]
    mem.io_dmem_writedata <= cpu.io_dmem_writedata @[top.scala 18:15]
    mem.io_dmem_memread <= cpu.io_dmem_memread @[top.scala 18:15]
    mem.io_dmem_memwrite <= cpu.io_dmem_memwrite @[top.scala 18:15]
    mem.io_dmem_maskmode <= cpu.io_dmem_maskmode @[top.scala 18:15]
    mem.io_dmem_sext <= cpu.io_dmem_sext @[top.scala 18:15]
