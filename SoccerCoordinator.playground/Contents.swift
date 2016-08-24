//: Playground - noun: a place where people can play

import UIKit
let players: [String] = ["Joe Smith", "Jill Tanner", "Bill Bon", "Eva Gordon", "Matt Gill", "Kimmy Stein", "Sammy Adams", "Karl Saygan", "Suzane Greenberg", "Sal Dali", "Joe Kavalier", "Ben Finkelstein", "Diego Soto", "Chloe Alaska", "Arnold Willis", "Philip Helm", "Les Clay", "Herschel Krustofski"]
let playerCount = players.count
let playerInfo: [String: [String]] = ["Joe Smith": ["42", "true", "Jim and Jan Smith"], "Jill Tanner": ["36", "true", "Clara Tanner"], "Bill Bon": ["43", "true", "Sara and Jenny Bon"], "Eva Gordon": ["45", "false", "Wendy and Mike Gordon"], "Matt Gill": ["40", "false", "Charles and Sylvia Gill"], "Kimmy Stein": ["41", "false", "Bill and Hillary Stein"], "Sammy Adams": ["45", "false", "Jeff Adams"], "Karl Saygan": ["42", "true", "Heather Bledsoe"], "Suzane Greenberg": ["44", "true", "Henrietta Dumas"], "Sal Dali": ["41", "false", "Gala Dali"], "Joe Kavalier": ["41", "false", "Sam and Elaine Kavalier"], "Ben Finkelstein": ["44", "false", "Aaron and Jill Finkelstein"], "Diego Soto": ["41", "true", "Robin and Sarika Soto"], "Chloe Alaska": ["47", "false", "David and Jamie Alaska"], "Arnold Willis": ["43", "false", "Claire Willis"], "Philip Helm": ["44", "true", "Thomas Helm and Eva Jones"], "Les Clay": ["42", "true", "Wynonna Brown"], "Herschel Krustofski": ["45", "true", "Hyman and Rachel Krustofski"]]
let teamCount: Int = 3
let playersPerTeam: Int = players.count/teamCount
var Sharks: [String] = []
var Dragons: [String] = []
var Raptors: [String] = []
func switchActiveTeam(team: [String])-> Void {
    print("I was here")
    if team == Sharks {
        lastAppended = Dragons
    } else if team == Dragons {
        lastAppended = Raptors
    } else {
        lastAppended = Sharks
    }
    
}
var lastAppended: [String] = Sharks
var experiencedPlayerCount: Int = 0
var inexperiencedPlayerCount: Int = 0

func sorty() -> Void {
    var index: Int = 0
    while index < playerCount {
        if playerInfo[players[index]]![1] == "true" {
            experiencedPlayerCount+=1
        } else {
            inexperiencedPlayerCount+=1
        }
        index+=1
    }
}

func sort() -> Void {
    sorty()
    var index: Int = 0
    var experiencedRaptors: Int = 0
    var inexperiencedRaptors: Int = 0
    var experiencedSharks: Int = 0
    var inexperiencedSharks: Int = 0
    var experiencedDragons: Int = 0
    var inexperiencedDragons: Int = 0

    while index < playerCount {
        if Sharks.count < playersPerTeam && experiencedSharks < experiencedPlayerCount/teamCount {
            print(experiencedSharks)
            if playerInfo[players[index]]![1] == "true" {
                Sharks.append(players[index])
                 experiencedSharks+=1
                index+=1
                continue
            }
        }
        if Sharks.count < playersPerTeam && inexperiencedSharks < inexperiencedPlayerCount/teamCount {
            print(inexperiencedSharks)
            if playerInfo[players[index]]![1] == "false" {
            Sharks.append(players[index])
            inexperiencedSharks+=1
                index+=1
            continue
            }
        }
        if Raptors.count < playersPerTeam && experiencedRaptors < experiencedPlayerCount/teamCount {
            if playerInfo[players[index]]![1] == "true" {
                Raptors.append(players[index])
                experiencedRaptors+=1
                index+=1
                continue
            }
        }
        if Raptors.count < playersPerTeam && inexperiencedRaptors < inexperiencedPlayerCount/teamCount {
            if playerInfo[players[index]]![1] == "false" {
                Raptors.append(players[index])
                inexperiencedRaptors+=1
                index+=1
                continue
            }
        }
        if Dragons.count < playersPerTeam && experiencedDragons < experiencedPlayerCount/teamCount {
            if playerInfo[players[index]]![1] == "true" {
                Dragons.append(players[index])
                experiencedDragons+=1
                index+=1
                continue
            }
        }
        if Dragons.count < playersPerTeam && inexperiencedDragons < inexperiencedPlayerCount/teamCount {
            if playerInfo[players[index]]![1] == "false" {
                Dragons.append(players[index])
                inexperiencedDragons+=1
                index+=1
                continue
            }
        }
            index+=1
    }
}

func letterGenerator() -> Void {
    
}


sort()
print(Sharks)
print(Dragons)
print(Raptors)
