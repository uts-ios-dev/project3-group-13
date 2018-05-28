//
//  PreviewViewController.swift
//  SmartMenu
//
//  Created by David Lang on 21/5/18.
//  Copyright © 2018 Group-13. All rights reserved.
//

import UIKit

class PreviewViewController: UIViewController {
    var returnDelegate: ReturnPreviewDateDelegate!
    var date: Date?

    @IBOutlet weak var previewDateTimePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        assert(returnDelegate != nil)
        if let validDate = date {
            previewDateTimePicker.date = validDate
        }
    }
    
    @IBAction func setPreview(_ sender: Any) {
        returnDelegate.setPreviewDateTime(previewDateTimePicker.date)
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func clearPreview(_ sender: Any) {
        returnDelegate.setPreviewDateTime(nil)
        navigationController?.popViewController(animated: true)
    }
}
