//
//  EventosTableViewController.swift
//  MySports
//
//  Created by jbian on 8/3/15.
//  Copyright (c) 2015 boa.bo. All rights reserved.
//

import UIKit

class EventosTableViewController: UITableViewController {

    
    @IBOutlet var tableEvent: UITableView!
    var arrayOfEvents: [Event] = [Event]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setUpEvents()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell: EventCustomCell = tableView.dequeueReusableCellWithIdentifier("cellCustom") as EventCustomCell
        
        let event = arrayOfEvents[indexPath.row]
        
        cell.setCell(event.event, dataCodeEvent: event.codeEvent, dataImgEvent: event.imgEvent, dataImgBannerEvent: event.imgBannerEvent, dataDateEvent: event.dateEvent, dataDateEndEvent: event.dateEndEvent, dataStatus: event.status, dataDescription: event.description, dataImgSport: event.imgSport, dataNameSport: event.nameSport, dataEventID: event.eventID, dataTypeSportID: event.typeSportID)
        
        
        return cell;
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return arrayOfEvents.count
    }
    
    var eventCel: Event!
    
    override func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        
        let cellSelect = arrayOfEvents[indexPath.row]
        
        /*var detailEventViewController: DetailEventViewController = self.storyboard?.instantiateViewControllerWithIdentifier("detailEvent") as DetailEventViewController
        
        detailEventViewController.eventLocal = cellSelect
        
        self.presentViewController(detailEventViewController, animated: true, completion: nil)*/
        
        self.eventCel = cellSelect
        
        performSegueWithIdentifier("showEvent", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if (segue.identifier == "showEvent")
        {
            var upcoming: DetailEventViewController = segue.destinationViewController as DetailEventViewController
            
            let indexPathh = self.tableEvent.indexPathForSelectedRow()
            
            upcoming.eventLocal = eventCel
            
            
        }
        
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    /*
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete
        {
            arrayOfEvents.removeAtIndex(indexPath.row)
            self.tableEvent.reloadData()
        } /*else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }   */
    }*/

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */
    func setUpEvents()
    {
        var newEvent = Event(dataEvent: "INTEGRACION BOA 2015", dataCodeEvent: "IBOA2015", dataImgEvent: "imgEvento1.png", dataImgBannerEvent: "imgEvento1.png", dataDateEvent: "01/05/2015", dataDateEndEvent: "12/10/2015", dataStatus: "E", dataDescription: "Evento de futbol integracion personal de Boliviana de Aviacion, con el objetivo de sociabilizar entre areas a manera de hacer deporte, por que el deporte es salud.", dataImgSport: "eventFutOficial.png", dataNameSport: "Futbol", dataEventID: 1, dataTypeSportID: 1)
        
        var newEvent1 = Event(dataEvent: "WALLY BOA 2015", dataCodeEvent: "WBOA2015", dataImgEvent: "imgEvento2.jpg", dataImgBannerEvent: "imgEvento2.jpg", dataDateEvent: "01/03/2015", dataDateEndEvent: "12/09/2015", dataStatus: "E", dataDescription: "Evento de WALLY para personal de Boliviana de Aviacion, con el objetivo de integrar entre areas a manera de hacer deporte, por que el deporte es salud.", dataImgSport: "eventVoleyOficial.png", dataNameSport: "Voley", dataEventID: 2, dataTypeSportID: 2)
        
        var newEvent2 = Event(dataEvent: "FUTSAL BOA 2014", dataCodeEvent: "FBOA2014", dataImgEvent: "imgEvento3.jpg", dataImgBannerEvent: "imgEvento3.jpg", dataDateEvent: "01/06/2014", dataDateEndEvent: "12/11/2014", dataStatus: "C", dataDescription: "Evento de Futbol de salon exclusividad de personal de Boliviana de Aviacion, con el objetivo de integrar las diferentes areas a manera de hacer deporte.", dataImgSport: "eventFutOficial.png", dataNameSport: "Futsal", dataEventID: 3, dataTypeSportID: 3)
        
        var newEvent3 = Event(dataEvent: "SOFTWARE LEAGUE 2015", dataCodeEvent: "SBOA2015", dataImgEvent: "imgEvento4.jpg", dataImgBannerEvent: "imgEvento4.jpg", dataDateEvent: "01/05/2015", dataDateEndEvent: "12/10/2015", dataStatus: "P", dataDescription: "Evento de futbol integracion organizado por el departamento de Sistemas, con el objetivo de sociabilizar entre areas a manera de hacer deporte.", dataImgSport: "eventFutOficial.png", dataNameSport: "Futbol", dataEventID: 4, dataTypeSportID: 1)
        
        
        arrayOfEvents.append(newEvent)
        arrayOfEvents.append(newEvent1)
        arrayOfEvents.append(newEvent2)
        arrayOfEvents.append(newEvent3)
        
    }
    

}
