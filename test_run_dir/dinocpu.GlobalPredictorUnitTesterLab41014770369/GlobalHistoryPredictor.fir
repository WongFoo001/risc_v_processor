;buildInfoPackage: chisel3, version: 3.2.6, scalaVersion: 2.12.10, sbtVersion: 1.3.2
circuit GlobalHistoryPredictor : 
  module GlobalHistoryPredictor : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip pc : UInt<32>, flip update : UInt<1>, flip taken : UInt<1>, prediction : UInt<1>}
    
    wire _T : UInt<1>[8] @[branchpred.scala 36:40]
    _T[0] <= UInt<1>("h01") @[branchpred.scala 36:40]
    _T[1] <= UInt<1>("h01") @[branchpred.scala 36:40]
    _T[2] <= UInt<1>("h01") @[branchpred.scala 36:40]
    _T[3] <= UInt<1>("h01") @[branchpred.scala 36:40]
    _T[4] <= UInt<1>("h01") @[branchpred.scala 36:40]
    _T[5] <= UInt<1>("h01") @[branchpred.scala 36:40]
    _T[6] <= UInt<1>("h01") @[branchpred.scala 36:40]
    _T[7] <= UInt<1>("h01") @[branchpred.scala 36:40]
    reg predictionTable : UInt<1>[8], clock with : (reset => (reset, _T)) @[branchpred.scala 36:32]
    io.prediction is invalid @[branchpred.scala 87:6]
    io.taken is invalid @[branchpred.scala 87:6]
    io.update is invalid @[branchpred.scala 87:6]
    io.pc is invalid @[branchpred.scala 87:6]
    io.prediction <= UInt<1>("h00") @[branchpred.scala 88:17]
    
