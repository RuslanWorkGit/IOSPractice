import UIKit

enum VehicleType {
    case electric
    case nonElectric
}

protocol Vehicle {
    var weight: Float { get }
    var speed: Float { get }
    var type: VehicleType { get }
    var canFly: Bool { get }
    
    func prepare()
}

extension Vehicle {
    func prepare() {
        
        switch self.type {
        case .electric: print("Charge")
        case .nonElectric: print("Refuel")
        }
        
    }
    
    var canFly: Bool { return false }
    
}

protocol FlyableVehicle {
    func getMaxHeight() -> Float
}

extension Vehicle where Self: FlyableVehicle {
    
    var canFly: Bool { return true }
    var type: VehicleType { return .nonElectric }
    
    func getMaxHeight() -> Float {
        switch self.type {
        case .electric: return weight + speed
        case .nonElectric: return weight * speed
        }
    }
    
}

struct Car: Vehicle {
    var weight: Float
    
    var speed: Float
    
    var type: VehicleType
    
    
}

struct ElectricCar: Vehicle{
    var weight: Float
    
    var speed: Float
    
    var type: VehicleType
    
    
}

struct AirPlane: Vehicle, FlyableVehicle {
    var weight: Float
    
    var speed: Float
}

let myCar = Car(weight: 2012.1, speed: 180.2, type: .nonElectric)
let neibourCar = ElectricCar(weight: 3011.6, speed: 233.1, type: .electric)
let airplane = AirPlane(weight: 3290, speed: 598)

print("This is my Car and it \(myCar.type)")

print("This is neibour Car and it \(neibourCar.type)")

print("This is airplane and it is \(airplane.canFly) and max height of fly is \(airplane.getMaxHeight())")

struct ElectricAirplane: Vehicle, FlyableVehicle {
    var weight: Float
    
    var speed: Float
    
    var type: VehicleType = .electric
}

let electricAirplane = ElectricAirplane(weight: 3290, speed: 598)

print("This is electric airplane and it is \(electricAirplane.canFly) and max height of fly is \(electricAirplane.getMaxHeight())")
