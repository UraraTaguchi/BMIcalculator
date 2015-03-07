//
//  ViewController.swift
//  BMIcalculator
//
//  Created by 田口うらら on 2015/03/07.
//  Copyright (c) 2015年 田口うらら. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var textfield:UITextField!
    var number:Int = 0
    
    @IBOutlet var textfield2:UITextField!
    var number2:Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func clear(){
        number = 0
        textfield.text = "\(number)"
    }
    @IBAction func check(){
        number3 = number / (number2 * number2)
    }


}

