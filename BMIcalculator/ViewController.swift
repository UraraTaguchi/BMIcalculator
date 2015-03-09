//
//  ViewController.swift
//  BMIcalculator
//
//  Created by 田口うらら on 2015/03/07.
//  Copyright (c) 2015年 田口うらら. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    @IBOutlet weak var heightPickerView: UIPickerView!
    // UIPickerView.
    //var myUIPicker: UIPickerView = UIPickerView()
    
    // 表示する値の配列.
    var myValues = ["135","136","137","138","139","140","141","142","143","144","145","146","147","148","149","150","151","152","153","154","155","156","157","158","159","160","161","162","163","164","165","166","167","168","169","170","171","172","173","174","175","176","177","178","179","180","181","182","183","184","185","186","187","188","189","190","191","192","193","194","195","196","197","198","199"]
    
    var myValues2 = ["30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90","91","92","93","94","95","96","97","98","99","100","101","102","103","104","105","106","107","108","109","110"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // サイズを指定する.
//        myUIPicker.frame = CGRectMake(0,0,self.view.bounds.width, 180.0)
//        
//        // Delegateを設定する.
//        myUIPicker.delegate = self
//        
//        // DataSourceを設定する.
//        myUIPicker.dataSource = self
//        
//        // Viewに追加する.
//        self.view.addSubview(myUIPicker)
        
    }
    
    func numberOfComponentsInPickerView(heightpickerView: UIPickerView) -> Int {
        //項目の列数
        return 1
    }
    
    /*
    表示するデータの行を返す.
    */
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        var number:Int = 0
        
        if (pickerView.tag == 1) {
            number =  64;
        }
        if (pickerView.tag == 2) {
            number =  80;
        }
        return number;

       // return myValues.count
    }
    
    /*
    値を代入する.
    */
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String {
        var str: String = "0"
        
        if (pickerView.tag == 1) {
            str =  myValues[row];
        }
        if (pickerView.tag == 2) {
            str =  myValues2[row]
        }
        return str;
    }
    
    /*
    Pickerが選択された際に呼ばれる.
    */
//    func heightpickerView(heightpickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        //println("row: \(row)")
//        //println("value: \(myValues[row])")
//    }
    

    
//    class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
//        @IBOutlet weak var weightPickerView: UIPickerView!
//         
//
//    
//    
//        /*
//        表示するデータ数を返す.
//        */
//        func weightPickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//            return myValues.count
//        }
//        
//        /*
//        値を代入する.
//        */
//        func weightPickerView(weightPickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String {
//            return myValues[row] as String
//        }
//        
//        /*
//        Pickerが選択された際に呼ばれる.
//        */
//        func weightpickerView(weightPickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//            println("row: \(row)")
//            println("value: \(myValues[row])")
//        }
    
//        override func didReceiveMemoryWarning() {
//            super.didReceiveMemoryWarning()
//        }
    
        
    
    
    @IBAction func check(){
        
    }

    


}

