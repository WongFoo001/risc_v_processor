circuit LocalPredictor :
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
