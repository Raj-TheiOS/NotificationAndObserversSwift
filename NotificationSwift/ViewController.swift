//
//  ViewController.swift
//  NotificationSwift
//
//  Created by Raj on 05/06/17.
//  Copyright © 2017 Raj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var img: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        NotificationCenter.default.addObserver(self, selector: #selector(facebook(notification:)), name: .facebook, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(twitter(notification:)), name: .twitter, object: nil)
    }
    @objc func facebook(notification:Notification) {
        lbl.text = "Facebook"
        img.image = #imageLiteral(resourceName: "fb")
    }
  
    @objc func twitter(notification : Notification) {
        lbl.text = "Twitter"
        img.image = #imageLiteral(resourceName: "twitter")
    }

    @IBAction func btnChoose(_ sender: UIButton) {
        let  secondVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    
}

extension Notification.Name {
    static let facebook = Notification.Name("Facebook")
    static let twitter = Notification.Name("Twitter")
}
