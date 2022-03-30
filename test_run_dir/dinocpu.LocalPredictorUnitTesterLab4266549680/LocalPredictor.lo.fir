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
    node _T_0 = UInt<2>("h2") @[branchpred.scala 36:40 branchpred.scala 36:40]
    node _T_1 = UInt<2>("h2") @[branchpred.scala 36:40 branchpred.scala 36:40]
    node _T_2 = UInt<2>("h2") @[branchpred.scala 36:40 branchpred.scala 36:40]
    node _T_3 = UInt<2>("h2") @[branchpred.scala 36:40 branchpred.scala 36:40]
    node _T_4 = UInt<2>("h2") @[branchpred.scala 36:40 branchpred.scala 36:40]
    node _T_5 = UInt<2>("h2") @[branchpred.scala 36:40 branchpred.scala 36:40]
    node _T_6 = UInt<2>("h2") @[branchpred.scala 36:40 branchpred.scala 36:40]
    node _T_7 = UInt<2>("h2") @[branchpred.scala 36:40 branchpred.scala 36:40]
    io_prediction <= UInt<1>("h0") @[branchpred.scala 79:17]
    predictionTable_0 <= mux(reset, _T_0, predictionTable_0)
    predictionTable_1 <= mux(reset, _T_1, predictionTable_1)
    predictionTable_2 <= mux(reset, _T_2, predictionTable_2)
    predictionTable_3 <= mux(reset, _T_3, predictionTable_3)
    predictionTable_4 <= mux(reset, _T_4, predictionTable_4)
    predictionTable_5 <= mux(reset, _T_5, predictionTable_5)
    predictionTable_6 <= mux(reset, _T_6, predictionTable_6)
    predictionTable_7 <= mux(reset, _T_7, predictionTable_7)
