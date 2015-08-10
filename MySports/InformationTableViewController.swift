//
//  InformationTableViewController.swift
//  MySports
//
//  Created by jbian on 8/9/15.
//  Copyright (c) 2015 boa.bo. All rights reserved.
//

import UIKit

class InformationTableViewController: UITableViewController {

    @IBOutlet var tableInf: UITableView!
    var arrayOfInfs: [Information] = [Information]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.setUpInfs()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell: InformationCustomCell = tableView.dequeueReusableCellWithIdentifier("infCellCustom") as InformationCustomCell
        
        let event = arrayOfInfs[indexPath.row]
        
        cell.setCell(event.titleInformation, dataDescriptionInformation: event.descriptionInformation, dataImgInformation: event.imgInformation, dataImgBannerInformation: event.imgBannerInformation, dataDateTimeInformation: event.dateTimeInformation, dataStatus: event.status, dataInformationID: event.informationID)
        
        
        return cell;
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return arrayOfInfs.count
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

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
    
    func setUpInfs()
    {
        var newInf = Information(dataTitleInformation: "Software League habilita inscripciones", dataDescriptionInformation: "Software League para la gestion 2015 habilita inscripciones para categoria varones y mujeres a partir del 12 de Mayo de la gestiòn en curso.", dataImgInformation: "inf1.jpg", dataImgBannerInformation: "inf1.jpg", dataDateTimeInformation: "01/04/2015 15:30", dataStatus: "A", dataInformationID: 1)
        
        var newInf1 = Information(dataTitleInformation: "Integracion BoA 2015", dataDescriptionInformation: "El comite organizador de deportes de la empresa Boliviana de Aviacion invita a sus funcionarios de las distintas areas al campeoanto de futbol Integracion BoA para la gestion 2015, comunicando que la modalidad de este mantendra mismos estatutos de la version anterior.", dataImgInformation: "inf2.jpg", dataImgBannerInformation: "inf2.jpg", dataDateTimeInformation: "01/02/2015 10:00", dataStatus: "A", dataInformationID: 2)
        
        var newInf2 = Information(dataTitleInformation: "Wally BoA", dataDescriptionInformation: "El comite organizador de deportes de la empresa Boliviana de Aviacion invita a sus funcionarios de las distintas areas al campeoanto de wally para la gestion actual 2015.", dataImgInformation: "inf3.jpg", dataImgBannerInformation: "inf3.jpg", dataDateTimeInformation: "01/04/2015 08:00", dataStatus: "A", dataInformationID: 3)
        
        arrayOfInfs.append(newInf)
        arrayOfInfs.append(newInf1)
        arrayOfInfs.append(newInf2)
    }
    

}
