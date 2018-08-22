//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    var favoriteFlavorsOfIceCream: [String: String] = [
        "Joe" : "Peanut Butter and Chocolate",
        "Tim" : "Natural Vanilla",
        "Sophie" : "Mexican Chocolate",
        "Deniz" : "Natural Vanilla",
        "Tom" : "Mexican Chocolate",
        "Jim" : "Natural Vanilla",
        "Susan" : "Cookies 'N' Cream"
    ]
    
    
    
    
    // 2.
    func names(forFlavor flavor: String) -> [String] {
        var namesForFlavor: [String] = []
        for (name, flav) in favoriteFlavorsOfIceCream {
            if flav == flavor {
                namesForFlavor.append(name)
            }
        }
        return namesForFlavor
    }
    
    
    
    
    
    // 3.
    func count(forFlavor flavor: String) -> Int {
        var counter = 0
        for (_, flav) in favoriteFlavorsOfIceCream {
            if flav == flavor {
                counter += 1
            }
        }
        return counter
    }
    
    
    
    
    // 4.
    func flavor(forPerson person: String) -> String? {
        if favoriteFlavorsOfIceCream.keys.contains(person) {
            return favoriteFlavorsOfIceCream[person]
        }
        return nil
    }
    
    
    
    
    
    
    // 5.
    func replace(flavor: String, forPerson: String) -> Bool {
        if favoriteFlavorsOfIceCream.keys.contains(forPerson) {
            favoriteFlavorsOfIceCream[forPerson] = flavor
            return true
        }
        return false
    }
    
    
    
    
    
    
    // 6.
    func remove(person: String) -> Bool {
        if favoriteFlavorsOfIceCream.keys.contains(person) {
            favoriteFlavorsOfIceCream[person] = nil
            return true
        }
        return false
    }
    
    
    
    
    
    
    
    // 7.
    func numberOfAttendees() -> Int {
        return favoriteFlavorsOfIceCream.keys.count
    }
    
    
    
    
    
    
    
    // 8.
    func add(person: String, withFlavor flavor: String) -> Bool {
        if favoriteFlavorsOfIceCream.updateValue(flavor, forKey: person) == nil {
            favoriteFlavorsOfIceCream[person] = flavor
            return true
        }
        return false
    }
    
    
    
    
    
    
    
    
    // 9.
    func attendeeList() -> String {
        var attendeeList: String = ""
        var counter = 1
        let allNames = favoriteFlavorsOfIceCream.keys.sorted()
        for name in allNames {
            if let flavor = favoriteFlavorsOfIceCream[name] {
                if counter < 7 {
                    attendeeList = "\(attendeeList)\(name) likes \(flavor)\n"
                    counter += 1
                } else {
                    attendeeList = "\(attendeeList)\(name) likes \(flavor)"
                }
            }
        }
        return attendeeList
    }
    
    
    
    
    
    
    

}
