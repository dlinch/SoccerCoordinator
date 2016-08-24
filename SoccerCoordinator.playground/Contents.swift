//: Playground - noun: a place where people can play

import UIKit

// Assigning player info to variables.
let players: [String] = ["Joe Smith", "Jill Tanner", "Bill Bon", "Eva Gordon", "Matt Gill", "Kimmy Stein", "Sammy Adams", "Karl Saygan", "Suzane Greenberg", "Sal Dali", "Joe Kavalier", "Ben Finkelstein", "Diego Soto", "Chloe Alaska", "Arnold Willis", "Philip Helm", "Les Clay", "Herschel Krustofski"]

var playerInfo: [String: [String]] = ["Joe Smith": ["42", "true", "Jim and Jan Smith"], "Jill Tanner": ["36", "true", "Clara Tanner"], "Bill Bon": ["43", "true", "Sara and Jenny Bon"], "Eva Gordon": ["45", "false", "Wendy and Mike Gordon"], "Matt Gill": ["40", "false", "Charles and Sylvia Gill"], "Kimmy Stein": ["41", "false", "Bill and Hillary Stein"], "Sammy Adams": ["45", "false", "Jeff Adams"], "Karl Saygan": ["42", "true", "Heather Bledsoe"], "Suzane Greenberg": ["44", "true", "Henrietta Dumas"], "Sal Dali": ["41", "false", "Gala Dali"], "Joe Kavalier": ["41", "false", "Sam and Elaine Kavalier"], "Ben Finkelstein": ["44", "false", "Aaron and Jill Finkelstein"], "Diego Soto": ["41", "true", "Robin and Sarika Soto"], "Chloe Alaska": ["47", "false", "David and Jamie Alaska"], "Arnold Willis": ["43", "false", "Claire Willis"], "Philip Helm": ["44", "true", "Thomas Helm and Eva Jones"], "Les Clay": ["42", "true", "Wynonna Brown"], "Herschel Krustofski": ["45", "true", "Hyman and Rachel Krustofski"]]
// Useful variables, including the creation of the team data collections, as well numbers to help do math against in future code
let playerCount = players.count
let teamCount: Int = 3
let playersPerTeam: Int = players.count/teamCount
var Sharks: [String] = []
var Dragons: [String] = []
var Raptors: [String] = []
var experiencedPlayerCount: Int = 0
var inexperiencedPlayerCount: Int = 0

// Function to help figure out how many children of each experience level there are in total
func experienceAnalysis() -> Void {
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

// Function to sort the students.
func sort() -> Void {
    experienceAnalysis()
    var index: Int = 0
    var experiencedRaptors: Int = 0
    var inexperiencedRaptors: Int = 0
    var experiencedSharks: Int = 0
    var inexperiencedSharks: Int = 0
    var experiencedDragons: Int = 0
    var inexperiencedDragons: Int = 0

    while index < playerCount {
        if Sharks.count < playersPerTeam && experiencedSharks < experiencedPlayerCount/teamCount {
            if playerInfo[players[index]]![1] == "true" {
                Sharks.append(players[index])
                playerInfo[players[index]]!.append("Sharks")
                experiencedSharks+=1
                index+=1
                continue
            }
        }
        if Sharks.count < playersPerTeam && inexperiencedSharks < inexperiencedPlayerCount/teamCount {
            if playerInfo[players[index]]![1] == "false" {
            Sharks.append(players[index])
            playerInfo[players[index]]!.append("Sharks")
            inexperiencedSharks+=1
            index+=1
            continue
            }
        }
        if Raptors.count < playersPerTeam && experiencedRaptors < experiencedPlayerCount/teamCount {
            if playerInfo[players[index]]![1] == "true" {
                Raptors.append(players[index])
                playerInfo[players[index]]!.append("Raptors")
                experiencedRaptors+=1
                index+=1
                continue
            }
        }
        if Raptors.count < playersPerTeam && inexperiencedRaptors < inexperiencedPlayerCount/teamCount {
            if playerInfo[players[index]]![1] == "false" {
                Raptors.append(players[index])
                playerInfo[players[index]]!.append("Raptors")
                inexperiencedRaptors+=1
                index+=1
                continue
            }
        }
        if Dragons.count < playersPerTeam && experiencedDragons < experiencedPlayerCount/teamCount {
            if playerInfo[players[index]]![1] == "true" {
                Dragons.append(players[index])
                playerInfo[players[index]]!.append("Dragons")
                experiencedDragons+=1
                index+=1
                continue
            }
        }
        if Dragons.count < playersPerTeam && inexperiencedDragons < inexperiencedPlayerCount/teamCount {
            if playerInfo[players[index]]![1] == "false" {
                Dragons.append(players[index])
                playerInfo[players[index]]!.append("Dragons")
                inexperiencedDragons+=1
                index+=1
                continue
            }
        }
            index+=1
    }
}

// Function to print the personalized letters to all the parents
func letterGenerator() -> Void {
    var index: Int = 0
    while index < playerCount {
        let letter: String = "Hello \(playerInfo[players[index]]![2]), I wanted you to know that your child \(players[index]) has officially been assigned to the \(playerInfo[players[index]]![3]). We're super excited, and wanted to let you know that their first practice is this Sunday at 7 p.m."
        print(letter)
    index+=1
    }
}

// Function that turns the program
func soccerScheduler() -> Void {
    sort()
    print(Sharks)
    print(Dragons)
    print(Raptors)
    letterGenerator()
}

// Invocation of the program
soccerScheduler()

