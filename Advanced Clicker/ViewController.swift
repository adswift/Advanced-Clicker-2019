//
//  ViewController.swift
//  Advanced Clicker
//
//  Created by Adeena Ansari on 3/8/19.
//  Copyright © 2019 Adeena Ansari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var counter = 0
    var time = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(update), userInfo: nil, repeats: true)
        // Do any additional setup after loading the view, typically from a nib.
    }
    @objc func update() {
        time += 0.1
    }
    
    @IBAction func tapped(_ sender: Any) {
        counter += 1
        label.text = "\(counter)"
        if counter == 30{
            print ("done")
        }
        
    }
    

}

