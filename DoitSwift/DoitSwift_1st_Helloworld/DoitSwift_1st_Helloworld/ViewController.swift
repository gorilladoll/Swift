//
//  ViewController.swift
//  DoitSwift_1st_Helloworld
//
//  Created by JoJinKyu on 2017. 9. 5..
//  Copyright © 2017년 JoJinKyu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblHello: UILabel!
    @IBOutlet weak var txtName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnSendNew(_ sender: UIButton) {
        lblHello.text = "Hello, " + txtName.text!;
    }
}

