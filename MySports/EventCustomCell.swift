//
//  EventCustomCell.swift
//  MySports
//
//  Created by jbian on 8/8/15.
//  Copyright (c) 2015 boa.bo. All rights reserved.
//

import UIKit

class EventCustomCell: UITableViewCell {
    
    
    @IBOutlet weak var imgEvent: UIImageView!
    @IBOutlet weak var nameEvent: UILabel!
    @IBOutlet weak var imgSport: UIImageView!
    @IBOutlet weak var nameSport: UILabel!
    @IBOutlet weak var statusEvent: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func setCell(dataEvent: String, dataCodeEvent: String, dataImgEvent: String, dataImgBannerEvent: String,  dataDateEvent: String, dataDateEndEvent: String, dataStatus: String, dataDescription: String, dataImgSport: String, dataNameSport: String, dataEventID: Int, dataTypeSportID: Int)
    {
        self.imgEvent.image = UIImage(named: dataImgEvent)
        self.nameEvent.text = dataEvent
        self.imgSport.image = UIImage(named: dataImgSport)
        //println(dataNameSport)
        //println(dataImgSport)
        self.nameSport.text = dataNameSport
        //println(dataStatus)
        if dataStatus == "E"{
            self.statusEvent.text = "Estado: Ejecución"
        } else if dataStatus == "P"{
            self.statusEvent.text = "Estado: Planificación"
        } else {
            self.statusEvent.text = "Estado: Cerrrado"
        }
        
        
    }
    
}
