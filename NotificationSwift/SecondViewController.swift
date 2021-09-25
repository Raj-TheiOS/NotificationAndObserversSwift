//
//  SecondViewController.swift
//  NotificationSwift
//
//  Created by Raj on 05/06/17.
//  Copyright © 2017 Raj. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func btnFbClicked(_ sender: UIButton) {
        NotificationCenter.default.post(name: .facebook, object: nil)
    }
    @IBAction func btnTwitterClicked(_ sender: UIButton) {
        NotificationCenter.default.post(name: .twitter, object: nil)
    }

}
