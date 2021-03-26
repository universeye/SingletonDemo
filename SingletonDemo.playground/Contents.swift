import Cocoa

class Helper {
    
    private init() {}
    static let shared = Helper()
    
    var state = "active"
    
    func logHelperState() {
        print("The current Helper State is: \(state)")
    }
}


//typical Static way
class StaticHelper {
    static var state = "active"
    
    static func logStaticHelperState() {
        print("the current static helper state is: \(StaticHelper.state)") //first difference
    }
}

//there is no struct singleton
struct StructHelper {
    private init() {}
    static let shared = StructHelper()
    
    var StrcutState = "active"
    
    func logStructHelperState() {
        print("The current Struct Helper State is: \(StrcutState)")
    }
}

Helper.shared.state
Helper.shared.logHelperState()
let helper = Helper.shared
helper.state = "InActive"
Helper.shared.state

StaticHelper.state
StaticHelper.logStaticHelperState()


var structHelper = StructHelper.shared
structHelper.StrcutState = "Inactive"
StructHelper.shared.StrcutState //not change to inactive because struct made a copy of it
//which is not Singleton anymore
