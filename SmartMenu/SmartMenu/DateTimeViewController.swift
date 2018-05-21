//
//  DateTimeViewController.swift
//  SmartMenu
//
//  Created by David Lang on 21/5/18.
//  Copyright © 2018 Group-13. All rights reserved.
//

import UIKit

class DateTimeViewController: UIViewController {
    var returnDelegate: ReturnPreviewDateDelegate!

    @IBOutlet weak var previewDateTimePicker: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()
        assert(returnDelegate != nil)
    }


    @IBAction func cancelButton(_ sender: Any) {
        returnDelegate.dismissContainer()
    }
    
    @IBAction func setPreview(_ sender: Any) {
        returnDelegate.setPreviewDateTime(previewDateTimePicker.date)
        returnDelegate.dismissContainer()
    }
    
    @IBAction func clearPreview(_ sender: Any) {
        returnDelegate.setPreviewDateTime(nil)
        returnDelegate.dismissContainer()
    }
}
