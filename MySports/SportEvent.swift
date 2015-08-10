//
//  SportEvent.swift
//  MySports
//
//  Created by jbian on 7/22/15.
//  Copyright (c) 2015 boa.bo. All rights reserved.
//

import Foundation

class SportEvent
{
    var event = "name"
    var team1 = "BoA DTI"
    var team2 = "Finanzas BoA"
    var imgTeam1 = "blank"
    var imgTeam2 = "blank"
    var imgEvent = "blank"
    var dateTimeEvent = "12/06/2015 14:30"
    var latitudeMap = "67"
    var lengthMap = "65"
    var address = "Virrey Toledo"
    var result1 = 2
    var result2 = 0
    var status = "P" // E = en juego  ;  F = finalizado  ;  P = planificado  ;  PP = postergado
    var eventID = 1
    var sportEventID = 1
    
    init(event: String, team1: String, team2: String,  imgTeam1: String, imgTeam2: String,
        imgEvent: String, dateTimeEvent: String, latitudeMap: String, lengthMap: String,
        address: String, result1: Int, result2: Int, status: String, eventID: Int, sportEventID: Int)
    {
        self.event = event
        self.team1 = team1
        self.team2 = team2
        self.imgTeam1 = imgTeam1
        self.imgTeam2 = imgTeam2
        self.imgEvent = imgEvent
        self.dateTimeEvent = dateTimeEvent
        self.latitudeMap = latitudeMap
        self.lengthMap = lengthMap
        self.address = address
        self.result1 = result1
        self.result2 = result2
        self.status = status
        self.eventID = eventID
        self.sportEventID = sportEventID
    }

}
