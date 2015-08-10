//
//  Information.swift
//  MySports
//
//  Created by jbian on 8/8/15.
//  Copyright (c) 2015 boa.bo. All rights reserved.
//

import Foundation

class Information
{
    var titleInformation = "title"
    var descriptionInformation = "description"
    var imgInformation = "blank"
    var imgBannerInformation = "blank"
    var dateTimeInformation = "12/06/2015 14:30"
    var status = "A" //A = activo  ;   H = historico
    var informationID = 1
    
    init(dataTitleInformation: String, dataDescriptionInformation: String, dataImgInformation: String, dataImgBannerInformation: String, dataDateTimeInformation: String, dataStatus: String, dataInformationID: Int)
    {
        self.titleInformation = dataTitleInformation
        self.descriptionInformation = dataDescriptionInformation
        self.imgInformation = dataImgInformation
        self.imgBannerInformation = dataImgBannerInformation
        self.dateTimeInformation = dataDateTimeInformation
        self.status = dataStatus
        self.informationID = dataInformationID
        
    }
    
}