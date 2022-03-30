;buildInfoPackage: chisel3, version: 3.2.6, scalaVersion: 2.12.10, sbtVersion: 1.3.2
circuit GlobalHistoryPredictor : 
  module GlobalHistoryPredictor : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip pc : UInt<32>, flip update : UInt<1>, flip taken : UInt<1>, prediction : UInt<1>}
    
    wire _T : UInt<3>[16] @[branchpred.scala 36:40]
    _T[0] <= UInt<3>("h04") @[branchpred.scala 36:40]
    _T[1] <= UInt<3>("h04") @[branchpred.scala 36:40]
    _T[2] <= UInt<3>("h04") @[branchpred.scala 36:40]
    _T[3] <= UInt<3>("h04") @[branchpred.scala 36:40]
    _T[4] <= UInt<3>("h04") @[branchpred.scala 36:40]
    _T[5] <= UInt<3>("h04") @[branchpred.scala 36:40]
    _T[6] <= UInt<3>("h04") @[branchpred.scala 36:40]
    _T[7] <= UInt<3>("h04") @[branchpred.scala 36:40]
    _T[8] <= UInt<3>("h04") @[branchpred.scala 36:40]
    _T[9] <= UInt<3>("h04") @[branchpred.scala 36:40]
    _T[10] <= UInt<3>("h04") @[branchpred.scala 36:40]
    _T[11] <= UInt<3>("h04") @[branchpred.scala 36:40]
    _T[12] <= UInt<3>("h04") @[branchpred.scala 36:40]
    _T[13] <= UInt<3>("h04") @[branchpred.scala 36:40]
    _T[14] <= UInt<3>("h04") @[branchpred.scala 36:40]
    _T[15] <= UInt<3>("h04") @[branchpred.scala 36:40]
    reg predictionTable : UInt<3>[16], clock with : (reset => (reset, _T)) @[branchpred.scala 36:32]
    io.prediction is invalid @[branchpred.scala 87:6]
    io.taken is invalid @[branchpred.scala 87:6]
    io.update is invalid @[branchpred.scala 87:6]
    io.pc is invalid @[branchpred.scala 87:6]
    io.prediction <= UInt<1>("h00") @[branchpred.scala 88:17]
    
