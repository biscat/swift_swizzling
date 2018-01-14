//
//  ViewController.swift
//  Swizzle
//
//  Created by william wong on 14/01/2018.
//  Copyright © 2018 william wong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testLabek: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        testLabek.text = "Hello world"
        testLabek.accessibilityIdentifier = "a ni asheiyo"
        //testLabek.accessibilityLabel = "test label"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

