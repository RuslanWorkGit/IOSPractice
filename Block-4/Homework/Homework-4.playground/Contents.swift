import UIKit

enum CarType: String {
    case coupe = "Coupe"
    case cabriolet = "Cabriolet"
    case universal
    case sedan
    case van = "van"
    case liftback
    case hetchback = "hetchback"
}

enum Weather {
    case sunny
    case rainy
    case windy
    case stormy
    case cloudy
    case thunder
    
    func advice() -> String {
        switch self {
        case .sunny:
            return "It will be sunny day, u need take sun glasses"
        case .rainy:
            return "It will be rainy, u need take an umbrella"
        case .windy:
            return "It will be windy, u need take jacket"
        case .stormy:
            return "It will be stormy, u need stay home"
        case .cloudy:
            return "It will be cloudy, u need take an umbrella"
        case .thunder:
            return "It will be thunder, u need stay home"
        }
    }
}

//enum test

let myCar = CarType.hetchback
let friendsCar = CarType.sedan
print("My car is \(myCar.rawValue), friends car is \(friendsCar.rawValue)")

let todayWeather = Weather.stormy
let tomorowWeather: Weather = .sunny

print("Advice for today weather: \(todayWeather.advice())")
print("Advice for tomorrow weather: \(tomorowWeather.advice())")

enum Mark {
    case kindeGarden(String)
    case elementarySchool(Int)
    case midlSchool(Int)
    case highSchool(Float)
    case university(Double)
    case laborant(Bool)
}

func getResult(result: Mark) -> String {
    switch result {
    case .kindeGarden(let kinderMark):
        return "The kid in kindergarden have mark like a \(kinderMark)"
    case .elementarySchool(let elementaryMark):
        return "In elementary school i have \(elementaryMark)"
    case .midlSchool(let midlMark):
        return "In midl school i have \(midlMark)"
    case .highSchool(let highMark):
        return "In high school i have \(highMark)"
    case .university(let universityMark):
        return "In univercity I have \(universityMark)"
    case .laborant(let status):
        return "And I \(status ? "go to be laborant" : "don't go to be laborant")"
    }
}

let myMidlSchoolMark = Mark.midlSchool(10)
getResult(result: myMidlSchoolMark)
let myLaborantStatus = Mark.laborant(false)
getResult(result: myLaborantStatus)

//POP practice

enum VehicleType {
    case electric
    case noElectric
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
        case .electric: print("Charged")
        case .noElectric: print("Refuel")
        }
    }
    
    var canFly: Bool { return false }
    
}

protocol FlyableVehicle {
    func getMaxHight() -> Float
}

extension Vehicle where Self: FlyableVehicle {
    var type: VehicleType { return .noElectric }
    var canFly: Bool { return true }
    
    func getMaxHight() -> Float {
        switch self.type {
        case .electric: return weight + speed
        case .noElectric: return weight * speed
        }
    }
}

struct Car: Vehicle {
    var weight: Float
    
    var speed: Float
    
    var type: VehicleType
}

struct ElectricCar: Vehicle {
    var weight: Float
    
    var speed: Float
    
    var type: VehicleType
}

struct Airplane: Vehicle, FlyableVehicle {
    var weight: Float
    
    var speed: Float
}

let myNewCar = Car(weight: 3201, speed: 150, type: .noElectric)
let myElectricCar = ElectricCar(weight: 4319, speed: 229, type: .electric)
let airplane = Airplane(weight: 27018, speed: 763)

print("My new car \(myNewCar.canFly ? "can fly" : "cann't fly" )")
print("My electric car \(myElectricCar.canFly ? "can fly" : "cann't fly" )")
print("This is airplane \(airplane.canFly ? "can fly and max height is \(airplane.getMaxHight())" : "cann't fly and max hight is 0" ) ")

struct ElectricAirplane: Vehicle, FlyableVehicle {
    var weight: Float
    
    var speed: Float
    
    var type: VehicleType { return .electric }
}

let electricAirplane = ElectricAirplane(weight: 27018, speed: 763)
print("This us electic airplane \(electricAirplane.canFly ? "can fly and max height is \(electricAirplane.getMaxHight())" : "cann't fly and max hight is 0" ) ")
