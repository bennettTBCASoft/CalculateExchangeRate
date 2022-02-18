//
//  ViewController.swift
//  ExchangeRateCaculator
//
//  Created by TBCASoft-Bennett on 2022/2/18.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func gotoCalculator(_ sender: Any) {
       
//        let rootVC = UIViewController()
//        rootVC.title = "Welcome"
//        let nav
        
        
        let vc = CalculateExchangeRateViewController(nibName: "CalculateExchangeRateViewController", bundle: nil)
        vc.title = "Calculator View Controller"
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

