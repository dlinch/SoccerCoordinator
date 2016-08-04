//: Playground - noun: a place where people can play

import UIKit
let players: [String] = ["Joe Smith", "Jill Tanner", "Bill Bon", "Eva Gordon", "Matt Gill", "Kimmy Stein", "Sammy Adams", "Karl Saygan", "Suzane Greenberg", "Sal Dali", "Joe Kavalier", "Ben Finkelstein", "Diego Soto", "Chloe Alaska", "Arnold Willis", "Philip Helm", "Les Clay", "Herschel Krustofski"]
let playerCount = players.count
let playerInfo: [String: [String]] = ["Joe Smith": ["42", "true", "Jim and Jan Smith"], "Jill Tanner": ["36", "true", "Clara Tanner"], "Bill Bon": ["43", "true", "Sara and Jenny Bon"], "Eva Gordon": ["45", "false", "Wendy and Mike Gordon"], "Matt Gill": ["40", "false", "Charles and Sylvia Gill"], "Kimmy Stein": ["41", "false", "Bill and Hillary Stein"], "Sammy Adams": ["45", "false", "Jeff Adams"], "Karl Saygan": ["42", "true", "Heather Bledsoe"], "Suzane Greenberg": ["44", "true", "Henrietta Dumas"], "Sal Dali": ["41", "false", "Gala Dali"], "Joe Kavalier": ["41", "false", "Sam and Elaine Kavalier"], "Ben Finkelstein": ["44", "false", "Aaron and Jill Finkelstein"], "Diego Soto": ["41", "true", "Robin and Sarika Soto"], "Chloe Alaska": ["47", "false", "David and Jamie Alaska"], "Arnold Willis": ["43", "false", "Claire Willis"], "Philip Helm": ["44", "true", "Thomas Helm and Eva Jones"], "Les Clay": ["42", "true", "Wynonna Brown"], "Herschel Krustofski": ["45", "true", "Hyman and Rachel Krustofski"]]

var Sharks: [String] = []
var Dragons: [String] = []
var Raptors: [String] = []
func switchActiveTeam(team: [String])-> [String] {
    print("I was here")
    if team == Sharks {
        return Dragons
    } else if team == Dragons {
        return Raptors
    } else {
        return Sharks
    }
    
}
var lastAppended: [String] = Sharks

func sort() -> Void {
    var index: Int = 0
    while index < playerCount {
        if index == 0 {
            Sharks.append(players[index])
            
        } else if playerInfo[players[index-1]]![1] == playerInfo[players[index]]![1] {
            if lastAppended == Sharks {
                print(players[index])
                Dragons.append(players[index])
                lastAppended = Dragons
            }
            else if lastAppended == Dragons {
                print(players[index])
                Raptors.append(players[index])
                lastAppended = Raptors
            }
            else {
                print(players[index])
                Sharks.append(players[index])
                lastAppended = Sharks
            }
        } else {
                if lastAppended == Sharks {
                    print(players[index])
                    Sharks.append(players[index])
                }
                else if lastAppended == Dragons {
                    print(players[index])
                    Dragons.append(players[index])
                }
                else {
                    print(players[index])
                    Raptors.append(players[index])
                }
            }
        index+=1
    }
}
sort()
print(Sharks)
print(Dragons)
print(Raptors)