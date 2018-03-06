//
//  ViewController.swift
//  MathApp
//
//  Created by nietao on 2018/3/6.
//  Copyright © 2018年 nietao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TF_A: UITextField!
    @IBOutlet weak var TF_B: UITextField!
    @IBOutlet weak var TF_C: UITextField!

    @IBOutlet weak var TF_RESULT: UILabel!
    
    var d:Double = 0,e:Double = 0,f:Double = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func onClick(_ sender: Any) {
        if (TF_A.text!.isEmpty ||
            TF_B.text!.isEmpty ||
            TF_C.text!.isEmpty){
            TF_RESULT.text = "abc都需要填才能计算哦";

        } else {
            
            let a:Double = Double(TF_A.text!)!;
            let b:Double = Double(TF_B.text!)!;
            let c:Double = Double(TF_C.text!)!;
            
            let p:Double = Double((a + b + c))/2.0;
            let S:Double = sqrt(p * (p - a)*(p - b)*(p - c));
            d = Double(Double(2*S)/Double(a));
            e = Double(Double(2*S)/Double(b));
            f = Double(Double(2*S)/Double(c));
            
            let str:String = "d = " + String(d) + "\n" + "e = " + String(e) + "\n" + "f = " + String(f) + "\n" + "S = " + String(S) + "\n" + "p = " + String(p);
            TF_RESULT.text = str;
        }
      
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

