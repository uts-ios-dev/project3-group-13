//
//  OrderInformationCell.swift
//  SmartMenu
//
//  Created by Rhys Biddle on 23/5/18.
//  Copyright © 2018 Group-13. All rights reserved.
//

import UIKit

protocol OrderInformationCellDelegate : class {
    func pressedSendToKitchen(_ sender : OrderInformationCell)
}

class OrderInformationCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    weak var delegate : OrderInformationCellDelegate?
    
    @IBOutlet weak var sendToKitchenButton: UIButton!
    @IBOutlet weak var orderTotal: UILabel!
    
    @IBAction func sendToKitchenTapped(_ sender: UIButton) {
    
    self.delegate?.pressedSendToKitchen(self)
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
