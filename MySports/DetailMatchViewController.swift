//
//  DetailMatchViewController.swift
//  MySports
//
//  Created by jbian on 8/9/15.
//  Copyright (c) 2015 boa.bo. All rights reserved.
//

import UIKit

class DetailMatchViewController: UIViewController {
    
    @IBOutlet weak var imgEvent: UIImageView!
    @IBOutlet weak var nameEvent: UILabel!
    @IBOutlet weak var imgTeam1: UIImageView!
    @IBOutlet weak var imgTeam2: UIImageView!
    @IBOutlet weak var lblNameTeam1: UILabel!
    @IBOutlet weak var lblNameTeam2: UILabel!
    @IBOutlet weak var lblStatus: UILabel!
    @IBOutlet weak var lblScore1: UILabel!
    @IBOutlet weak var lblScore2: UILabel!
    @IBOutlet weak var lblFoul1: UILabel!
    @IBOutlet weak var lblFoul2: UILabel!
    @IBOutlet weak var lblCardRed1: UILabel!
    @IBOutlet weak var lblCardRed2: UILabel!
    @IBOutlet weak var lblCarYellow1: UILabel!
    @IBOutlet weak var lblCardYellow2: UILabel!
    @IBOutlet weak var imgStadio: UIImageView!
    @IBOutlet weak var lblNameStadio: UILabel!
    @IBOutlet weak var lblStreetStadio: UILabel!
    
    var sportEventLocal : SportEvent!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.imgEvent.image = UIImage(named: sportEventLocal.imgEvent)
        self.nameEvent.text = sportEventLocal.event
        self.imgTeam1.image = UIImage(named: sportEventLocal.imgTeam1)
        self.imgTeam2.image = UIImage(named: sportEventLocal.imgTeam2)
        // E = en juego  ;  F = finalizado  ;  P = planificado  ;  PP = postergado
        if(sportEventLocal.status == "E")
        {
            lblStatus.text = "En juego"
        }
        else if(sportEventLocal.status == "F")
        {
            lblStatus.text = "Juego finalizado"
        }
        else if(sportEventLocal.status == "PP")
        {
            lblStatus.text = "Juego postergado"
        }
        else
        {
            lblStatus.text = "Juego programado"
        }
        
        self.lblNameTeam1.text = sportEventLocal.team1
        self.lblNameTeam2.text = sportEventLocal.team2
        self.lblScore1.text = (String)(sportEventLocal.result1)
        self.lblScore2.text = (String)(sportEventLocal.result2)
        self.lblNameStadio.text = sportEventLocal.address
        
        
        //obtener datos de servicio
        self.lblFoul1.text = "0"
        self.lblFoul2.text = "0"
        self.lblCardRed1.text = "0"
        self.lblCardRed2.text = "0"
        self.lblCarYellow1.text = "0"
        self.lblCardYellow2.text = "0"
        self.imgStadio.image = UIImage(named: "estadio1.png")
        self.lblStreetStadio.text = "Calle Ramon Diaz entre Av. Peru y C. Ruben Dario. Zona NorOEste de la ciudad de Cochabamba"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
