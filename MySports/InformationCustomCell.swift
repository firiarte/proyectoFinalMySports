//
//  InformationCustomCell.swift
//  MySports
//
//  Created by jbian on 8/9/15.
//  Copyright (c) 2015 boa.bo. All rights reserved.
//

import UIKit

class InformationCustomCell: UITableViewCell {

    @IBOutlet weak var imgInf: UIImageView!
    @IBOutlet weak var lblNameInf: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setCell(dataTitleInformation: String, dataDescriptionInformation: String, dataImgInformation: String, dataImgBannerInformation: String, dataDateTimeInformation: String, dataStatus: String, dataInformationID: Int)
    {
        self.imgInf.image = UIImage(named: dataImgInformation)
        //println(dataImgInformation)
        //println(dataTitleInformation)
        self.lblNameInf.text = dataTitleInformation
    }


}
