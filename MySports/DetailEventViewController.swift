//
//  DetailEventViewController.swift
//  MySports
//
//  Created by jbian on 8/10/15.
//  Copyright (c) 2015 boa.bo. All rights reserved.
//

import UIKit

class DetailEventViewController: UIViewController {

    
    @IBOutlet weak var imgEvent: UIImageView!
    @IBOutlet weak var lblNameEvent: UILabel!
    @IBOutlet weak var lblNameSport: UILabel!
    @IBOutlet weak var lblDateEvent: UILabel!
    @IBOutlet weak var lblStatusEvent: UILabel!
    @IBOutlet weak var lblDescriptionEvent: UILabel!
    
    var eventLocal: Event!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        chargeEvent()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func chargeEvent()
    {
        self.imgEvent.image = UIImage(named: eventLocal.imgEvent)
        self.lblNameEvent.text = eventLocal.event
        self.lblNameSport.text = eventLocal.nameSport
        self.lblDateEvent.text = eventLocal.dateEvent
        self.lblStatusEvent.text = "Ejecución"
        self.lblDescriptionEvent.text = "Integracion BoA en su gestion 2015 da la bienvenida a todos los llamados futboleros y futboleras de la empresa BoA. El campeonato mas antiguo de la empresa apertura sus inicios para la gestion actual. En la modalidad de futbol 8 manteniendo estatutos y reglamento del campeonato de la gestion 2014."
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
