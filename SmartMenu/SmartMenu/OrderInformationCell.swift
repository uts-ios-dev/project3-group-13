//
//  OrderInformationCell.swift
//  SmartMenu
//
//  Created by Rhys Biddle on 23/5/18.
//  Copyright © 2018 Group-13. All rights reserved.
//

import UIKit

class OrderInformationCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBAction func sendToKitchen(_ sender: Any) {
    }
    @IBOutlet weak var orderTotal: UILabel!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
