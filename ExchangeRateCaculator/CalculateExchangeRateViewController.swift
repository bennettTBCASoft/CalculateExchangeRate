//
//  CalculateExchangeRateViewController.swift
//  ExchangeRateCaculator
//
//  Created by TBCASoft-Bennett on 2022/2/18.
//

import UIKit

class CalculateExchangeRateViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var jpyTF: UITextField!
    @IBOutlet weak var twdTF: UITextField!
    
    @IBOutlet var calBtn: [CustomizedButton]! // tag10:c tag11:←
    
    @IBOutlet weak var type1LB: UILabel!    // 轉換貨幣類型
    @IBOutlet weak var exchangeLb: UILabel! // 被轉換貨幣
    @IBOutlet weak var type2LB: UILabel!    // 被轉換貨幣類型
    
    var changeBool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        jpyTF.isEnabled = true
        jpyTF.inputView?.isHidden = true
        jpyTF.delegate = self
        twdTF.isEnabled = false
        
//        jpyTF.addTarget(self, action: #selector(textFieldDidChangeSelection(_:)), for: .editingChanged)
        
        jpyTF.addObserver(self, forKeyPath: "text", options: NSKeyValueObservingOptions.new, context: nil)
    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == "text" && object as? NSObject == self.jpyTF {
//            print(jpyTF.text!)
            if let jpyNumber = Double(jpyTF.text!) {
                if let result = Optional(jpyNumber * 0.24135) {
                    print(result)
                    twdTF.text = String(lround(result)) // lround：整數四捨五入
                }
            }
        }
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return false
    }
    
    
    @IBAction func clickCalBtn(_ sender: UIButton) {
        
        switch sender.tag {
        case 0:
            jpyTF.text?.append("1")
        case 1:
            jpyTF.text?.append("2")
        case 2:
            jpyTF.text?.append("3")
        case 3:
            jpyTF.text?.append("4")
        case 4:
            jpyTF.text?.append("5")
        case 5:
            jpyTF.text?.append("6")
        case 6:
            jpyTF.text?.append("7")
        case 7:
            jpyTF.text?.append("8")
        case 8:
            jpyTF.text?.append("9")
        case 9:
            if ((jpyTF.text?.isEmpty) == true) {
                return
            }
            jpyTF.text?.append("0")
        case 10:    // C
            jpyTF.text?.removeAll()
            twdTF.text?.removeAll()
        case 11:    // ←
            if ((jpyTF.text?.isEmpty) == true) {
                return
            }
            jpyTF.text?.removeLast()
            if ((jpyTF.text?.isEmpty) == true) {
                twdTF.text?.removeAll()
            }
        default:
            return
        }
    }
    
    
    @IBAction func switchCurrencyAction(_ sender: Any) {
        if changeBool {
            // TWD -> JPY
            type1LB.text = "TWD"
            type2LB.text = "JPY"
            exchangeLb.text = "4.13"
            changeBool = false
        } else {
            // JPY -> TWD
            type1LB.text = "JPY"
            type2LB.text = "TWD"
            exchangeLb.text = "0.24135"
            changeBool = true
        }
        
        
        
    }
    

}
