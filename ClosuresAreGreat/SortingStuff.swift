//
//  SortingStuff.swift
//  ClosuresAreGreat
//
//  Created by Ron Don Volante on 10/25/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


struct ToyBin {
    
    var ships: [Ship] = []
    var books: [Book] = []
    var bowlingPins: [BowlingPin] = []
    var musicCDs: [MusicCD] = []
    
    mutating func sortShips() {
        var shipSorted: [Ship] = []
        shipSorted = ships.sorted(by: {$0.age > $1.age})
        for (index, ship) in shipSorted.enumerated() {
            if ship.name == "Titanic" {
                let titatic = ship
                shipSorted.remove(at: index)
                shipSorted.insert(titatic, at: 0)
                ships =  shipSorted
                
            }
    }
    }
    mutating func sortBooks() {
        books = books.sorted(by: {$0.name < $1.name})
        
    }
    mutating func sortBowlingPins() {
        bowlingPins = bowlingPins.sorted(by: {$0.color.rawValue < $1.color.rawValue})
        
    }
    
    mutating func sortMusicCDs() {
        var sortedCDs: [MusicCD] = []
        sortedCDs = musicCDs.sorted(by: {$0.name < $1.name})
        sortedCDs = sortedCDs.filter({return $0.name != "Drake"})
        var drakeCd = musicCDs.filter { return $0.name == "Drake"}
        drakeCd += sortedCDs
        musicCDs = drakeCd
//        sortedCDs = musicCDs.sorted(by: {$0.name < $1.name})
//            for (index, cd) in sortedCDs.enumerated() {
//                if cd.name == "Drake" {
//                    let drakeCD = cd
//                    sortedCDs.remove(at: index)
//                    sortedCDs.insert(drakeCD, at: 0)
//                }
//                musicCDs = sortedCDs
//            }
        
        }
    mutating func changeColorOfAllPins(to color: Color) {
        bowlingPins = bowlingPins.map({
            var bowlingPin = $0
            bowlingPin.changeColor(to: color)
            return bowlingPin})
        }
    }



struct Ship {
    var name: String
    var age: Int
}


struct Book {
    var name: String
    var year: Int
    var author: String
}


struct BowlingPin {
    var name: String
    var film: String
    var color: Color
}


extension BowlingPin {
    mutating func changeColor(to color: Color) {
        self.color = color
    }
}


enum Color: Int {
    case red, orange, yellow, green, blue, indigo, violet
}

struct MusicCD {
    var name: String
    var year: Int
    var songs: [String]
}
