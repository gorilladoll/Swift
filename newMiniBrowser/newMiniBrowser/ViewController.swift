//
//  ViewController.swift
//  newMiniBrowser
//
//  Created by JoJinKyu on 2017. 11. 6..
//  Copyright © 2017년 JoJinKyu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainView: UIWebView!
    @IBOutlet weak var spinningActivity: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        spinningActivity.startAnimating()
        let urlString = "https://www.homes.co.jp/trunkroom/"
        mainView.loadRequest(URLRequest(url: URL(string: urlString)!))
        spinningActivity.stopAnimating()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

