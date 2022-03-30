circuit LocalPredictor :
  module LocalPredictor :
    input clock : Clock
    input reset : UInt<1>
    input io_pc : UInt<32>
    input io_update : UInt<1>
    input io_taken : UInt<1>
    output io_prediction : UInt<1>
  
    reg predictionTable_0 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), predictionTable_0) @[branchpred.scala 36:32]
    reg predictionTable_1 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), predictionTable_1) @[branchpred.scala 36:32]
    node _T_0 = UInt<1>("h1") @[branchpred.scala 36:40 branchpred.scala 36:40]
    node _T_1 = UInt<1>("h1") @[branchpred.scala 36:40 branchpred.scala 36:40]
    io_prediction <= UInt<1>("h0") @[branchpred.scala 79:17]
    predictionTable_0 <= mux(reset, _T_0, predictionTable_0)
    predictionTable_1 <= mux(reset, _T_1, predictionTable_1)
