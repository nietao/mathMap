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
            
            //固定bc 边
            var des:String = "";
            let bd:Double = sqrt(a * a - e * e);
            let dc:Double = b - bd;
            des = getString(bd: bd, dc: dc, bc: e);
            
            //求最长边
//            var max = (a > b) ? a : b;
//            max = (max > c) ? max : c;
//            //最长边的高
//            if(max == b){ //b
//                let bd:Double = sqrt(a * a - e * e);
//                let dc:Double = b - bd;
//                des = getString(bd: bd, dc: dc, bc: e);
//            } else if(max == a) { //a
//                let ad:Double = sqrt(c * c - d * d);
//                let db:Double = a - ad;
//                des = getString(bd: ad, dc: db, bc: d);
//            } else if(max == c){ //c
//                let ad:Double = sqrt(a * a - f * f);
//                let dc:Double = c - ad;
//                des = getString(bd: ad, dc: dc, bc: f);
//            }
            
            
            //求最长高
//            //取最大值
//            var max = (d > e) ? d : e;
//            max = (max > f) ? max : f;
            //求 bd dc
//            //三种情况 ad为最长高。 对应高为
//            var des:String = "";
//            if(max == e){
//                let bd:Double = sqrt(a * a - e * e);
//                let dc:Double = b - bd;
//                des = getString(bd: bd, dc: dc, bc: e);
////                des = "当前高位于bc上 \n" + " bd = " + String(bd) + "\n dc = " + String(dc);
//            } else if(max == d) {
//                let ad:Double = sqrt(c * c - d * d);
//                let db:Double = a - ad;
////                des = "当前高位于ab上 \n " + "ad = " + String(ad) + "\n db = " + String(db);
//                des = getString(bd: ad, dc: db, bc: d);
//            } else if(max == f){
//                let ad:Double = sqrt(a * a - f * f);
//                let dc:Double = c - ad;
////                des = "当前高位于ac上, \n " + "ad = " + String(ad) + "\n dc = " + String(dc);
//                des = getString(bd: ad, dc: dc, bc: f);
//            }
//
//            let str:String = "d = " + String(d) + "\n" + "e = " + String(e) + "\n" + "f = " + String(f) + "\n" + "S = " + String(S) + "\n" + "p = " + String(p);

            TF_RESULT.text = des ;
        }
      
    }
    func getString(bd:Double, dc:Double, bc:Double)->String{
       let des = " bd = " + String(format: "%.2f",bd) + "\n dc = " + String(format: "%.2f",dc) + "\n ad = " + String(format: "%.2f",bc);
        return des;
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

