circuit Booth8Cycle :
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
