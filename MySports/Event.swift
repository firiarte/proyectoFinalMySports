//
//  Event.swift
//  MySports
//
//  Created by jbian on 8/4/15.
//  Copyright (c) 2015 boa.bo. All rights reserved.
//

import Foundation


class Event
{
    var event = "name"
    var codeEvent = "CODE"
    var imgEvent = "blank"
    var imgBannerEvent = "blank"
    var dateEvent = "12/06/2015 14:30"
    var dateEndEvent = "12/09/2015 14:30"
    var status = "E" //E = ejecucion  ;  P = planificacion  ;  H = historico
    var description = "descripcion"
    var imgSport = "blank"
    var nameSport = "nameSport"
    var eventID = 1
    var typeSportID = 1
    
    init(dataEvent: String, dataCodeEvent: String, dataImgEvent: String, dataImgBannerEvent: String,  dataDateEvent: String, dataDateEndEvent: String, dataStatus: String, dataDescription: String, dataImgSport: String, dataNameSport: String, dataEventID: Int, dataTypeSportID: Int)
    {
        self.event = dataEvent
        self.codeEvent = dataCodeEvent
        self.imgEvent = dataImgEvent
        self.imgBannerEvent = dataImgBannerEvent
        self.dateEvent = dataDateEvent
        self.dateEndEvent = dataDateEndEvent
        self.status = dataStatus
        self.description = dataDescription
        self.imgSport = dataImgSport
        self.nameSport = dataNameSport
        self.eventID = dataEventID
        self.typeSportID = dataTypeSportID
    }
    
}
