//
//  ViewController.swift
//  MySports
//
//  Created by jbian on 7/21/15.
//  Copyright (c) 2015 boa.bo. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    @IBOutlet var miTablaActual: UITableView!
    var arrayOfSportEvents: [SportEvent] = [SportEvent]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //self.title = "MY SPORTS BOA"
        self.setUpSportEvents()
        
        //self.miTablaActual.delegate = self
        //self.miTablaActual.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell: CustomCell = tableView.dequeueReusableCellWithIdentifier("Cell") as CustomCell
        
        
        let event = arrayOfSportEvents[indexPath.row]
        
        cell.setCell(event.event, team1: event.team1, team2: event.team2, imgTeam1: event.imgTeam1, imgTeam2: event.imgTeam2, imgEvent: event.imgEvent, dateTimeEvent: event.dateTimeEvent, latitudeMap: event.latitudeMap, lengthMap: event.lengthMap, address: event.address, result1: event.result1, result2: event.result2, status: event.status, eventID: event.eventID, sportEventID: event.sportEventID)
        
        return cell;
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrayOfSportEvents.count
    }
    
    /*override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        if (editingStyle == UITableViewCellEditingStyle.Delete)
        {
            arrayOfSportEvents.removeAtIndex(indexPath.row)
            self.miTablaActual.reloadData()
        }
    }*/
    
    var sportEventSel: SportEvent!
    
    override func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        
        let cellSelect = arrayOfSportEvents[indexPath.row]
    
        /*var detailMatchViewController: DetailMatchViewController = self.storyboard?.instantiateViewControllerWithIdentifier("detailMatch") as DetailMatchViewController
        
        detailMatchViewController.sportEventLocal = cellSelect
        
        
        self.presentViewController(detailMatchViewController, animated: true, completion: nil)*/
        
        self.sportEventSel = cellSelect
        
        performSegueWithIdentifier("showSportEvent", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if (segue.identifier == "showSportEvent")
        {
            var upcoming: DetailMatchViewController = segue.destinationViewController as DetailMatchViewController
            
            let indexPathh = self.miTablaActual.indexPathForSelectedRow()
            
            upcoming.sportEventLocal = sportEventSel
            
            
        }
        
    }
    
    
    

    func setUpSportEvents()
    {
        var sportEvent = SportEvent(event: "INTEGRACION BOA 2015", team1: "BoA DTI", team2: "Finanzas BoA", imgTeam1: "BoaDTI.png", imgTeam2: "finanzasFC.png", imgEvent: "eventFutOficial.png", dateTimeEvent: "12/06/2015 13:45", latitudeMap: "67", lengthMap: "89", address: "Virrey Toledo zona Av. Peru", result1: 0, result2: 0, status: "P", eventID: 1, sportEventID: 1)
        
        var sportEvent1 = SportEvent(event: "INTEGRACION BOA 2015", team1: "Operaciones boa", team2: "BoA GAF", imgTeam1: "eq2operaciones.png", imgTeam2: "eq5gaf.png", imgEvent: "eventFutOficial.png", dateTimeEvent: "12/06/2015 15:00", latitudeMap: "67", lengthMap: "89", address: "Virrey Toledo zona Av. Peru", result1: 0, result2: 0, status: "P", eventID: 1, sportEventID: 2)
        
        var sportEvent2 = SportEvent(event: "INTEGRACION BOA 2015", team1: "ATO CBB BOA", team2: "RRHH BOA", imgTeam1: "eq3atoCBB.png", imgTeam2: "eq7mm.png", imgEvent: "eventFutOficial.png", dateTimeEvent: "12/06/2015 16:10", latitudeMap: "67", lengthMap: "89", address: "Virrey Toledo zona Av. Peru", result1: 0, result2: 0, status: "P", eventID: 1, sportEventID: 3)
        
        arrayOfSportEvents.append(sportEvent)
        arrayOfSportEvents.append(sportEvent1)
        arrayOfSportEvents.append(sportEvent2)
    }


}

