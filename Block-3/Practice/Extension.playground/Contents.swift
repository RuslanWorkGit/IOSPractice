import UIKit

extension Int {
    func square() -> Int {
        return self * self
    }
}

let hundred = 10.square()

extension String {
    
    func firstWord() -> String? {
        guard let firstWord = components(separatedBy: .whitespaces).first else {
            return "Empty"
        }
        return firstWord
    }
    
    func beforeComma() -> String? {
        guard let firstPart = components(separatedBy: ",").first else {
            return "Empty"
        }
        return firstPart
    }
        
    func firstSentence() -> String? {
            let sentenceDelimiter = CharacterSet(charactersIn: ".!?")
            if let range = self.rangeOfCharacter(from: sentenceDelimiter) {
                return String(self[..<range.lowerBound])
            }
            return nil
        }
    
    func sentenceWithExclamation() -> String? {
        if let exclamationRange = self.range(of: "!") {
            return String(self[..<exclamationRange.upperBound])
        }
        
        return nil
    }
    
}

let text = "Це перше речення. А ось друге, третє! І четверте речення з окликом!"

let firstWord = text.firstWord()
print("Перше слово: \(firstWord ?? "Не знайдено")")

let firstPart = text.beforeComma()
print("Перша частина до коми: \(firstPart ?? "Не знайдено")")

let firstSentence = text.firstSentence()
print("Перше речення: \(firstSentence ?? "Не знайдено")")

let sentenceWithExclamation = text.sentenceWithExclamation()
print("Речення з окликом: \(sentenceWithExclamation ?? "Не знайдено")")

//----------------------------------------------2--------------------------

protocol Runable {
    func run()
}

protocol Flyable {
    func fly()
}

protocol Alive {
    func breath()
    func eat()
    func grow()
}

extension Alive {
    func breath() {
        print("breath")
    }
    
    func eat() {
        print("eat")
    }
}

//create 6 hero

struct Runner: Runable {
    func run() {
        print("run")
    }
}

struct FlyMan: Flyable, Alive {
    func fly() {
        print("Fly Man - fly")
    }
    
    func grow() {
        print("grow")
    }
}

struct Bird: Flyable {
    func fly() {
        print("fly")
    }
}

struct Train: Runable {
    func run() {
        print("Train - run")
    }
}

struct SuperHero: Runable, Flyable, Alive {
    func run() {
        print("run")
    }
    
    func fly() {
        print("fly")
    }
    
    func grow() {
        print("Super herp - grow")
    }
}

struct Animal: Runable, Flyable {
    func run() {
        print("Animal - run")
    }
    
    func fly() {
        print("fly")
    }
}
