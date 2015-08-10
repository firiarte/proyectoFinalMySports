//
//  CustomCell.swift
//  MySports
//
//  Created by jbian on 7/22/15.
//  Copyright (c) 2015 boa.bo. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var equipo1: UILabel!
    @IBOutlet weak var equipo2: UILabel!
    @IBOutlet weak var marcador1: UILabel!
    @IBOutlet weak var marcador2: UILabel!
    @IBOutlet weak var fechaHr: UILabel!
    @IBOutlet weak var evento: UILabel!
    @IBOutlet weak var imgEvento: UIImageView!
    @IBOutlet weak var imgEquipo1: UIImageView!
    @IBOutlet weak var imgEquipo2: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setCell(nameEvent: String, team1: String, team2: String,  imgTeam1: String, imgTeam2: String,
        imgEvent: String, dateTimeEvent: String, latitudeMap: String, lengthMap: String,
        address: String, result1: Int, result2: Int, status: String, eventID: Int, sportEventID: Int)
    {
        self.equipo1.text = team1
        self.equipo2.text = team2
        self.marcador1.text = String(result1)
        self.marcador2.text = String(result2)
        self.fechaHr.text = dateTimeEvent
        self.evento.text = nameEvent
        self.imgEvento.image = UIImage(named: imgEvent)
        self.imgEquipo1.image = UIImage(named: imgTeam1)
        self.imgEquipo2.image = UIImage(named: imgTeam2)
    }

}
