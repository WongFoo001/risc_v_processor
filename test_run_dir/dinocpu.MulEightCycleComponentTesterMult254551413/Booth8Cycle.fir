;buildInfoPackage: chisel3, version: 3.2.6, scalaVersion: 2.12.10, sbtVersion: 1.3.2
circuit Booth8Cycle : 
  module Booth8Cycle : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip multiplicand : UInt<16>, flip multiplier : UInt<16>, flip start : UInt<1>, finished : UInt<1>, product : UInt<32>}
    
    reg accUpper : UInt<16>, clock with : (reset => (reset, UInt<16>("h00"))) @[Booth8Cycle.scala 140:26]
    reg accLower : UInt<16>, clock with : (reset => (reset, UInt<16>("h00"))) @[Booth8Cycle.scala 141:26]
    reg mcd : UInt<16>, clock with : (reset => (reset, UInt<16>("h00"))) @[Booth8Cycle.scala 142:26]
    reg mpl : UInt<17>, clock with : (reset => (reset, UInt<17>("h00"))) @[Booth8Cycle.scala 143:26]
    reg iter : UInt<5>, clock with : (reset => (reset, UInt<5>("h00"))) @[Booth8Cycle.scala 144:26]
    reg res : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Booth8Cycle.scala 145:26]
    reg multFin : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Booth8Cycle.scala 146:26]
    wire nextIter : UInt<5> @[Booth8Cycle.scala 150:23]
    wire accCalc : UInt<16> @[Booth8Cycle.scala 151:23]
    wire accShift : UInt<32> @[Booth8Cycle.scala 152:23]
    wire operation : UInt<3> @[Booth8Cycle.scala 153:23]
    wire doubleMCD : UInt<16> @[Booth8Cycle.scala 154:23]
    wire nextMPL : UInt<17> @[Booth8Cycle.scala 155:23]
    wire accumulatorUpper : UInt<16> @[Booth8Cycle.scala 157:30]
    wire calcMultiplicand : UInt<16> @[Booth8Cycle.scala 158:30]
    wire temp_upAcc : UInt<16> @[Booth8Cycle.scala 159:30]
    wire temp_mcd : UInt<16> @[Booth8Cycle.scala 160:30]
    wire temp_op : UInt<3> @[Booth8Cycle.scala 161:30]
    nextIter is invalid @[Booth8Cycle.scala 164:13]
    accCalc is invalid @[Booth8Cycle.scala 165:13]
    accShift is invalid @[Booth8Cycle.scala 166:13]
    operation is invalid @[Booth8Cycle.scala 167:13]
    doubleMCD is invalid @[Booth8Cycle.scala 168:13]
    nextMPL is invalid @[Booth8Cycle.scala 169:13]
    temp_upAcc <= UInt<1>("h00") @[Booth8Cycle.scala 172:14]
    temp_mcd <= io.multiplicand @[Booth8Cycle.scala 173:14]
    node _T = bits(io.multiplier, 1, 0) @[Booth8Cycle.scala 174:34]
    node _T_1 = cat(_T, UInt<1>("h00")) @[Cat.scala 29:58]
    temp_op <= _T_1 @[Booth8Cycle.scala 174:14]
    node _T_2 = eq(iter, UInt<1>("h00")) @[Booth8Cycle.scala 177:14]
    when _T_2 : @[Booth8Cycle.scala 177:23]
      operation <= temp_op @[Booth8Cycle.scala 178:22]
      accumulatorUpper <= temp_upAcc @[Booth8Cycle.scala 179:22]
      calcMultiplicand <= temp_mcd @[Booth8Cycle.scala 180:22]
      node _T_3 = bits(accCalc, 15, 15) @[Booth8Cycle.scala 181:36]
      node _T_4 = bits(accCalc, 15, 15) @[Booth8Cycle.scala 181:49]
      node _T_5 = cat(UInt<1>("h00"), UInt<1>("h00")) @[Cat.scala 29:58]
      node _T_6 = cat(UInt<1>("h00"), UInt<1>("h00")) @[Cat.scala 29:58]
      node _T_7 = cat(_T_6, _T_5) @[Cat.scala 29:58]
      node _T_8 = cat(UInt<1>("h00"), UInt<1>("h00")) @[Cat.scala 29:58]
      node _T_9 = cat(UInt<1>("h00"), UInt<1>("h00")) @[Cat.scala 29:58]
      node _T_10 = cat(_T_9, _T_8) @[Cat.scala 29:58]
      node _T_11 = cat(_T_10, _T_7) @[Cat.scala 29:58]
      node _T_12 = cat(UInt<1>("h00"), UInt<1>("h00")) @[Cat.scala 29:58]
      node _T_13 = cat(UInt<1>("h00"), UInt<1>("h00")) @[Cat.scala 29:58]
      node _T_14 = cat(_T_13, _T_12) @[Cat.scala 29:58]
      node _T_15 = cat(UInt<1>("h00"), UInt<1>("h00")) @[Cat.scala 29:58]
      node _T_16 = cat(_T_3, _T_4) @[Cat.scala 29:58]
      node _T_17 = cat(_T_16, accCalc) @[Cat.scala 29:58]
      node _T_18 = cat(_T_17, _T_15) @[Cat.scala 29:58]
      node _T_19 = cat(_T_18, _T_14) @[Cat.scala 29:58]
      node _T_20 = cat(_T_19, _T_11) @[Cat.scala 29:58]
      accShift <= _T_20 @[Booth8Cycle.scala 181:22]
      skip @[Booth8Cycle.scala 177:23]
    else : @[Booth8Cycle.scala 183:14]
      node _T_21 = bits(mpl, 2, 0) @[Booth8Cycle.scala 184:28]
      operation <= _T_21 @[Booth8Cycle.scala 184:22]
      accumulatorUpper <= accUpper @[Booth8Cycle.scala 185:22]
      calcMultiplicand <= mcd @[Booth8Cycle.scala 186:22]
      node _T_22 = bits(accCalc, 15, 15) @[Booth8Cycle.scala 187:36]
      node _T_23 = bits(accCalc, 15, 15) @[Booth8Cycle.scala 187:49]
      node _T_24 = bits(accLower, 15, 2) @[Booth8Cycle.scala 187:72]
      node _T_25 = cat(accCalc, _T_24) @[Cat.scala 29:58]
      node _T_26 = cat(_T_22, _T_23) @[Cat.scala 29:58]
      node _T_27 = cat(_T_26, _T_25) @[Cat.scala 29:58]
      accShift <= _T_27 @[Booth8Cycle.scala 187:22]
      skip @[Booth8Cycle.scala 183:14]
    node _T_28 = eq(UInt<1>("h00"), operation) @[Conditional.scala 37:30]
    when _T_28 : @[Conditional.scala 40:58]
      accCalc <= accumulatorUpper @[Booth8Cycle.scala 193:15]
      node _T_29 = bits(reset, 0, 0) @[Booth8Cycle.scala 194:13]
      node _T_30 = eq(_T_29, UInt<1>("h00")) @[Booth8Cycle.scala 194:13]
      when _T_30 : @[Booth8Cycle.scala 194:13]
        printf(clock, UInt<1>(1), "    000: Do Nothing\n") @[Booth8Cycle.scala 194:13]
        skip @[Booth8Cycle.scala 194:13]
      skip @[Conditional.scala 40:58]
    else : @[Conditional.scala 39:67]
      node _T_31 = eq(UInt<1>("h01"), operation) @[Conditional.scala 37:30]
      when _T_31 : @[Conditional.scala 39:67]
        node _T_32 = add(accumulatorUpper, calcMultiplicand) @[Booth8Cycle.scala 197:35]
        node _T_33 = tail(_T_32, 1) @[Booth8Cycle.scala 197:35]
        accCalc <= _T_33 @[Booth8Cycle.scala 197:15]
        node _T_34 = bits(reset, 0, 0) @[Booth8Cycle.scala 198:13]
        node _T_35 = eq(_T_34, UInt<1>("h00")) @[Booth8Cycle.scala 198:13]
        when _T_35 : @[Booth8Cycle.scala 198:13]
          printf(clock, UInt<1>(1), "    001: Add Multiplicand\n") @[Booth8Cycle.scala 198:13]
          skip @[Booth8Cycle.scala 198:13]
        node _T_36 = bits(reset, 0, 0) @[Booth8Cycle.scala 199:13]
        node _T_37 = eq(_T_36, UInt<1>("h00")) @[Booth8Cycle.scala 199:13]
        when _T_37 : @[Booth8Cycle.scala 199:13]
          printf(clock, UInt<1>(1), "     --> Adding %d to %d\n", calcMultiplicand, accumulatorUpper) @[Booth8Cycle.scala 199:13]
          skip @[Booth8Cycle.scala 199:13]
        skip @[Conditional.scala 39:67]
      else : @[Conditional.scala 39:67]
        node _T_38 = eq(UInt<2>("h02"), operation) @[Conditional.scala 37:30]
        when _T_38 : @[Conditional.scala 39:67]
          node _T_39 = add(accumulatorUpper, calcMultiplicand) @[Booth8Cycle.scala 202:35]
          node _T_40 = tail(_T_39, 1) @[Booth8Cycle.scala 202:35]
          accCalc <= _T_40 @[Booth8Cycle.scala 202:15]
          node _T_41 = bits(reset, 0, 0) @[Booth8Cycle.scala 203:13]
          node _T_42 = eq(_T_41, UInt<1>("h00")) @[Booth8Cycle.scala 203:13]
          when _T_42 : @[Booth8Cycle.scala 203:13]
            printf(clock, UInt<1>(1), "    010: Add Multiplicand\n") @[Booth8Cycle.scala 203:13]
            skip @[Booth8Cycle.scala 203:13]
          node _T_43 = bits(reset, 0, 0) @[Booth8Cycle.scala 204:13]
          node _T_44 = eq(_T_43, UInt<1>("h00")) @[Booth8Cycle.scala 204:13]
          when _T_44 : @[Booth8Cycle.scala 204:13]
            printf(clock, UInt<1>(1), "     --> Adding %d to %d\n", calcMultiplicand, accumulatorUpper) @[Booth8Cycle.scala 204:13]
            skip @[Booth8Cycle.scala 204:13]
          skip @[Conditional.scala 39:67]
        else : @[Conditional.scala 39:67]
          node _T_45 = eq(UInt<2>("h03"), operation) @[Conditional.scala 37:30]
          when _T_45 : @[Conditional.scala 39:67]
            node _T_46 = dshl(calcMultiplicand, UInt<1>("h01")) @[Booth8Cycle.scala 207:55]
            node _T_47 = add(accumulatorUpper, _T_46) @[Booth8Cycle.scala 207:35]
            node _T_48 = tail(_T_47, 1) @[Booth8Cycle.scala 207:35]
            accCalc <= _T_48 @[Booth8Cycle.scala 207:15]
            node _T_49 = bits(reset, 0, 0) @[Booth8Cycle.scala 208:13]
            node _T_50 = eq(_T_49, UInt<1>("h00")) @[Booth8Cycle.scala 208:13]
            when _T_50 : @[Booth8Cycle.scala 208:13]
              printf(clock, UInt<1>(1), "    011: Add 2 * Multiplicand\n") @[Booth8Cycle.scala 208:13]
              skip @[Booth8Cycle.scala 208:13]
            node _T_51 = dshl(calcMultiplicand, UInt<1>("h01")) @[Booth8Cycle.scala 209:62]
            node _T_52 = bits(reset, 0, 0) @[Booth8Cycle.scala 209:13]
            node _T_53 = eq(_T_52, UInt<1>("h00")) @[Booth8Cycle.scala 209:13]
            when _T_53 : @[Booth8Cycle.scala 209:13]
              printf(clock, UInt<1>(1), "     --> Adding %d to %d\n", _T_51, accumulatorUpper) @[Booth8Cycle.scala 209:13]
              skip @[Booth8Cycle.scala 209:13]
            skip @[Conditional.scala 39:67]
          else : @[Conditional.scala 39:67]
            node _T_54 = eq(UInt<3>("h04"), operation) @[Conditional.scala 37:30]
            when _T_54 : @[Conditional.scala 39:67]
              node _T_55 = dshl(calcMultiplicand, UInt<1>("h01")) @[Booth8Cycle.scala 212:55]
              node _T_56 = sub(accumulatorUpper, _T_55) @[Booth8Cycle.scala 212:35]
              node _T_57 = tail(_T_56, 1) @[Booth8Cycle.scala 212:35]
              accCalc <= _T_57 @[Booth8Cycle.scala 212:15]
              node _T_58 = bits(reset, 0, 0) @[Booth8Cycle.scala 213:13]
              node _T_59 = eq(_T_58, UInt<1>("h00")) @[Booth8Cycle.scala 213:13]
              when _T_59 : @[Booth8Cycle.scala 213:13]
                printf(clock, UInt<1>(1), "    100: Subtract 2 * Multiplicand\n") @[Booth8Cycle.scala 213:13]
                skip @[Booth8Cycle.scala 213:13]
              node _T_60 = dshl(calcMultiplicand, UInt<1>("h01")) @[Booth8Cycle.scala 214:69]
              node _T_61 = bits(reset, 0, 0) @[Booth8Cycle.scala 214:13]
              node _T_62 = eq(_T_61, UInt<1>("h00")) @[Booth8Cycle.scala 214:13]
              when _T_62 : @[Booth8Cycle.scala 214:13]
                printf(clock, UInt<1>(1), "     --> Subtracting %d from %d\n", _T_60, accumulatorUpper) @[Booth8Cycle.scala 214:13]
                skip @[Booth8Cycle.scala 214:13]
              skip @[Conditional.scala 39:67]
            else : @[Conditional.scala 39:67]
              node _T_63 = eq(UInt<3>("h05"), operation) @[Conditional.scala 37:30]
              when _T_63 : @[Conditional.scala 39:67]
                node _T_64 = sub(accumulatorUpper, calcMultiplicand) @[Booth8Cycle.scala 217:35]
                node _T_65 = tail(_T_64, 1) @[Booth8Cycle.scala 217:35]
                accCalc <= _T_65 @[Booth8Cycle.scala 217:15]
                node _T_66 = bits(reset, 0, 0) @[Booth8Cycle.scala 218:13]
                node _T_67 = eq(_T_66, UInt<1>("h00")) @[Booth8Cycle.scala 218:13]
                when _T_67 : @[Booth8Cycle.scala 218:13]
                  printf(clock, UInt<1>(1), "    101: Subtract Multiplicand\n") @[Booth8Cycle.scala 218:13]
                  skip @[Booth8Cycle.scala 218:13]
                node _T_68 = bits(reset, 0, 0) @[Booth8Cycle.scala 219:13]
                node _T_69 = eq(_T_68, UInt<1>("h00")) @[Booth8Cycle.scala 219:13]
                when _T_69 : @[Booth8Cycle.scala 219:13]
                  printf(clock, UInt<1>(1), "     --> Subtracting %d from %d\n", calcMultiplicand, accumulatorUpper) @[Booth8Cycle.scala 219:13]
                  skip @[Booth8Cycle.scala 219:13]
                skip @[Conditional.scala 39:67]
              else : @[Conditional.scala 39:67]
                node _T_70 = eq(UInt<3>("h06"), operation) @[Conditional.scala 37:30]
                when _T_70 : @[Conditional.scala 39:67]
                  node _T_71 = sub(accumulatorUpper, calcMultiplicand) @[Booth8Cycle.scala 222:35]
                  node _T_72 = tail(_T_71, 1) @[Booth8Cycle.scala 222:35]
                  accCalc <= _T_72 @[Booth8Cycle.scala 222:15]
                  node _T_73 = bits(reset, 0, 0) @[Booth8Cycle.scala 223:13]
                  node _T_74 = eq(_T_73, UInt<1>("h00")) @[Booth8Cycle.scala 223:13]
                  when _T_74 : @[Booth8Cycle.scala 223:13]
                    printf(clock, UInt<1>(1), "    110: Subtract Multiplicand\n") @[Booth8Cycle.scala 223:13]
                    skip @[Booth8Cycle.scala 223:13]
                  node _T_75 = bits(reset, 0, 0) @[Booth8Cycle.scala 224:13]
                  node _T_76 = eq(_T_75, UInt<1>("h00")) @[Booth8Cycle.scala 224:13]
                  when _T_76 : @[Booth8Cycle.scala 224:13]
                    printf(clock, UInt<1>(1), "     --> Subtracting %d from %d\n", calcMultiplicand, accumulatorUpper) @[Booth8Cycle.scala 224:13]
                    skip @[Booth8Cycle.scala 224:13]
                  skip @[Conditional.scala 39:67]
                else : @[Conditional.scala 39:67]
                  node _T_77 = eq(UInt<3>("h07"), operation) @[Conditional.scala 37:30]
                  when _T_77 : @[Conditional.scala 39:67]
                    accCalc <= accumulatorUpper @[Booth8Cycle.scala 228:15]
                    node _T_78 = bits(reset, 0, 0) @[Booth8Cycle.scala 229:13]
                    node _T_79 = eq(_T_78, UInt<1>("h00")) @[Booth8Cycle.scala 229:13]
                    when _T_79 : @[Booth8Cycle.scala 229:13]
                      printf(clock, UInt<1>(1), "    111: Do Nothing\n") @[Booth8Cycle.scala 229:13]
                      skip @[Booth8Cycle.scala 229:13]
                    skip @[Conditional.scala 39:67]
    node _T_80 = add(iter, UInt<1>("h01")) @[Booth8Cycle.scala 234:20]
    node _T_81 = tail(_T_80, 1) @[Booth8Cycle.scala 234:20]
    nextIter <= _T_81 @[Booth8Cycle.scala 234:12]
    node _T_82 = dshr(mpl, UInt<2>("h02")) @[Booth8Cycle.scala 237:19]
    nextMPL <= _T_82 @[Booth8Cycle.scala 237:12]
    node _T_83 = cat(accUpper, accLower) @[Cat.scala 29:58]
    io.product <= _T_83 @[Booth8Cycle.scala 244:15]
    io.finished <= multFin @[Booth8Cycle.scala 245:15]
    node _T_84 = eq(res, UInt<1>("h00")) @[Booth8Cycle.scala 247:25]
    node _T_85 = and(io.start, _T_84) @[Booth8Cycle.scala 247:18]
    when _T_85 : @[Booth8Cycle.scala 247:34]
      res <= UInt<1>("h01") @[Booth8Cycle.scala 248:14]
      node _T_86 = bits(accShift, 31, 16) @[Booth8Cycle.scala 249:25]
      accUpper <= _T_86 @[Booth8Cycle.scala 249:14]
      node _T_87 = bits(accShift, 15, 0) @[Booth8Cycle.scala 250:25]
      accLower <= _T_87 @[Booth8Cycle.scala 250:14]
      mcd <= io.multiplicand @[Booth8Cycle.scala 251:14]
      node _T_88 = cat(io.multiplier, UInt<1>("h00")) @[Cat.scala 29:58]
      node _T_89 = dshr(_T_88, UInt<2>("h02")) @[Booth8Cycle.scala 252:41]
      mpl <= _T_89 @[Booth8Cycle.scala 252:14]
      iter <= UInt<1>("h01") @[Booth8Cycle.scala 253:14]
      node _T_90 = bits(accShift, 31, 16) @[Booth8Cycle.scala 254:79]
      node _T_91 = bits(accShift, 15, 0) @[Booth8Cycle.scala 254:97]
      node _T_92 = cat(io.multiplier, UInt<1>("h00")) @[Cat.scala 29:58]
      node _T_93 = dshr(_T_92, UInt<2>("h02")) @[Booth8Cycle.scala 254:147]
      node _T_94 = bits(reset, 0, 0) @[Booth8Cycle.scala 254:11]
      node _T_95 = eq(_T_94, UInt<1>("h00")) @[Booth8Cycle.scala 254:11]
      when _T_95 : @[Booth8Cycle.scala 254:11]
        printf(clock, UInt<1>(1), "REGISTERS INITIALIZED  -- %b %b  ||  mcd: %b  mpl: %b\n", _T_90, _T_91, io.multiplicand, _T_93) @[Booth8Cycle.scala 254:11]
        skip @[Booth8Cycle.scala 254:11]
      skip @[Booth8Cycle.scala 247:34]
    else : @[Booth8Cycle.scala 258:14]
      node _T_96 = bits(reset, 0, 0) @[Booth8Cycle.scala 259:11]
      node _T_97 = eq(_T_96, UInt<1>("h00")) @[Booth8Cycle.scala 259:11]
      when _T_97 : @[Booth8Cycle.scala 259:11]
        printf(clock, UInt<1>(1), "Entered Register Otherwise\n") @[Booth8Cycle.scala 259:11]
        skip @[Booth8Cycle.scala 259:11]
      node _T_98 = lt(iter, UInt<4>("h08")) @[Booth8Cycle.scala 260:16]
      when _T_98 : @[Booth8Cycle.scala 260:23]
        node _T_99 = bits(reset, 0, 0) @[Booth8Cycle.scala 262:13]
        node _T_100 = eq(_T_99, UInt<1>("h00")) @[Booth8Cycle.scala 262:13]
        when _T_100 : @[Booth8Cycle.scala 262:13]
          printf(clock, UInt<1>(1), "Iteration: %d\n", iter) @[Booth8Cycle.scala 262:13]
          skip @[Booth8Cycle.scala 262:13]
        node _T_101 = bits(reset, 0, 0) @[Booth8Cycle.scala 263:13]
        node _T_102 = eq(_T_101, UInt<1>("h00")) @[Booth8Cycle.scala 263:13]
        when _T_102 : @[Booth8Cycle.scala 263:13]
          printf(clock, UInt<1>(1), "  Registered Values:\n") @[Booth8Cycle.scala 263:13]
          skip @[Booth8Cycle.scala 263:13]
        node _T_103 = bits(reset, 0, 0) @[Booth8Cycle.scala 264:13]
        node _T_104 = eq(_T_103, UInt<1>("h00")) @[Booth8Cycle.scala 264:13]
        when _T_104 : @[Booth8Cycle.scala 264:13]
          printf(clock, UInt<1>(1), "     * mpl: %b\n", mpl) @[Booth8Cycle.scala 264:13]
          skip @[Booth8Cycle.scala 264:13]
        node _T_105 = bits(reset, 0, 0) @[Booth8Cycle.scala 265:13]
        node _T_106 = eq(_T_105, UInt<1>("h00")) @[Booth8Cycle.scala 265:13]
        when _T_106 : @[Booth8Cycle.scala 265:13]
          printf(clock, UInt<1>(1), "     * AccUpper: %b | AccLower: %b \n", accUpper, accLower) @[Booth8Cycle.scala 265:13]
          skip @[Booth8Cycle.scala 265:13]
        multFin <= UInt<1>("h00") @[Booth8Cycle.scala 268:16]
        res <= UInt<1>("h01") @[Booth8Cycle.scala 269:16]
        mcd <= mcd @[Booth8Cycle.scala 270:16]
        mpl <= nextMPL @[Booth8Cycle.scala 271:16]
        node _T_107 = bits(accShift, 31, 16) @[Booth8Cycle.scala 272:27]
        accUpper <= _T_107 @[Booth8Cycle.scala 272:16]
        node _T_108 = bits(accShift, 15, 0) @[Booth8Cycle.scala 273:27]
        accLower <= _T_108 @[Booth8Cycle.scala 273:16]
        iter <= nextIter @[Booth8Cycle.scala 274:16]
        skip @[Booth8Cycle.scala 260:23]
      else : @[Booth8Cycle.scala 277:16]
        node _T_109 = bits(reset, 0, 0) @[Booth8Cycle.scala 278:13]
        node _T_110 = eq(_T_109, UInt<1>("h00")) @[Booth8Cycle.scala 278:13]
        when _T_110 : @[Booth8Cycle.scala 278:13]
          printf(clock, UInt<1>(1), "Iter: %d -- Multiplier Finished Calculating...\n", iter) @[Booth8Cycle.scala 278:13]
          skip @[Booth8Cycle.scala 278:13]
        node _T_111 = bits(reset, 0, 0) @[Booth8Cycle.scala 279:13]
        node _T_112 = eq(_T_111, UInt<1>("h00")) @[Booth8Cycle.scala 279:13]
        when _T_112 : @[Booth8Cycle.scala 279:13]
          printf(clock, UInt<1>(1), "    Start Signal: %b\n", io.start) @[Booth8Cycle.scala 279:13]
          skip @[Booth8Cycle.scala 279:13]
        res <= UInt<1>("h00") @[Booth8Cycle.scala 280:19]
        multFin <= UInt<1>("h01") @[Booth8Cycle.scala 281:19]
        iter <= iter @[Booth8Cycle.scala 282:19]
        node _T_113 = bits(reset, 0, 0) @[Booth8Cycle.scala 283:13]
        node _T_114 = eq(_T_113, UInt<1>("h00")) @[Booth8Cycle.scala 283:13]
        when _T_114 : @[Booth8Cycle.scala 283:13]
          printf(clock, UInt<1>(1), " ************************* TEST SEPERATED ******************************\n") @[Booth8Cycle.scala 283:13]
          skip @[Booth8Cycle.scala 283:13]
        skip @[Booth8Cycle.scala 277:16]
      skip @[Booth8Cycle.scala 258:14]
    
