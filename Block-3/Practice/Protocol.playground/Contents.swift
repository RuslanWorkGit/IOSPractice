import UIKit

//MARK: - Protocols

protocol Movable {
    func run()
}

protocol Fightable {
    func fight()
}

protocol Hero: Movable, Fightable {
    var name: String {get set}
}

//MARK: - Struct
struct Farmer: Movable {
    func run() {
        print("Farmer run")
    }
}

struct Visitors: Movable {
    func run() {
        print("Visitors run")
    }
}

struct Butcher: Fightable {
    func fight() {
        print("Butcher fight")
    }

}

struct Killer: Fightable {
    func fight() {
        print("Killer fight")
    }
}

struct SuperMan: Hero {
    var name: String
    
    func run() {
        print("Hero \(name) run")
    }
    
    func fight() {
        print("Hero \(name) go to fight")
    }
}

struct SpiderMan: Hero {
    var name: String
    
    func run() {
        print("Hero \(name) run")
    }
    
    func fight() {
        print("Hero \(name) go to fight")
    }
}



//MARK: - class

class Tavern {
    var movers: [Movable] = []
    var fighters: [Fightable] = []
    
    func enterTavern(hero: Hero) {
        hero.fight()
        
        for move in movers {
            move.run()
        }
        
        for fight in fighters {
            fight.fight()
        }
    }
}

//MARK: - exemplars

var alice = Farmer()
var john = Visitors()

var annie = Butcher()
var milton = Killer()

var peter = SpiderMan(name: "spider-man")
var clark = SuperMan(name: "super-man")

var bar = Tavern()

//MARK: -

bar.movers = [alice, john]
bar.fighters = [annie, milton]

bar.enterTavern(hero: peter)
bar.enterTavern(hero: clark)
