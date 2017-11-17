//
//  ViewController.swift
//  practise_hello_touch
//
//  Created by 蔡孟軒 on 2017/11/17.
//  Copyright © 2017年 Mila. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mytitle: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //print("What's up!!")
    }
    @IBAction func Startclick(_ sender: Any) {
        mytitle.text = "Mila gesture is working!!"
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

