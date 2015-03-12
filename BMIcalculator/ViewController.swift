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

    var myValues = ["135","136","137","138","139","140","141","142","143","144","145","146","147","148","149","150","151","152","153","154","155","156","157","158","159","160","161","162","163","164","165","166","167","168","169","170","171","172","173","174","175","176","177","178","179","180","181","182","183","184","185","186","187","188","189","190","191","192","193","194","195","196","197","198","199"]
    
    var myValues2 = ["30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90","91","92","93","94","95","96","97","98","99","100","101","102","103","104","105","106","107","108","109","110"]

    
    
    // Labelのアウトレット
    @IBOutlet weak var label3: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // saveボタンのアクション
    @IBAction func saveButton(sender: AnyObject) {
        
        let userDefaults = NSUserDefaults.standardUserDefaults()
        
        userDefaults.setObject(label2.text?, forKey: "saveText")
    }
    
    // loadボタンのアクション
    @IBAction func loadButton(sender: AnyObject) {
        // データ読み込み処理
        
        // NSUserDefaultsインスタンスの生成
        let userDefaults = NSUserDefaults.standardUserDefaults()
        
        // キーが"saveText"のStringをとります。
        var loadText : String! = userDefaults.stringForKey("saveText")
        
        // labelに表示
        label3.text = loadText
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
    
    @IBOutlet var label:UILabel!
    @IBOutlet var label2:UILabel!
    @IBOutlet var myImage:UIImageView!
    
    var bminumber: Int = 0
    
    @IBAction func check(){
        var str: String = "0"
        var myValues: Int = str.toInt()!
        var myValues2: Int = str.toInt()!
        
        String(bminumber) = myValues * myValues / myValues2
        label.text = "\(bminumber)"
        
        
        if bminumber >= 22 {
        label.text = ("ちょいぽちゃ")
            label2.text = ("ちょっと太り気味かも。適度な運動量と食事量にしてみよう")
            let myImage = UIImage(named: "どらえもん.jpg")
        } else if bminumber >= 20 {
            label.text = ("健康体")
            label2.text = ("いたって普通。健康な美ボディ。意地を目指そう！")
             let myImage = UIImage(named: "じゃいこ.jpg")
        } else if bminumber >= 17{
            label.text = ("モデル並み")
            label2.text = ("若干痩せ気味。モデルの様な美しいカラダ！痩せすぎには気をつけて！")
             let myImage = UIImage(named: "しずかちゃん.jpg")
        } else if bminumber <= 19{
            label.text = ("ガリガリ")
            label2.text = ("ちょっと痩せすぎかも。適度な運動量と食事量にしたほうがかわいいよ！")
             let myImage = UIImage(named: "すねお.jpg")
        }
        }
}

