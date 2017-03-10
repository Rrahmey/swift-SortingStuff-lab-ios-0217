//
//  ViewController.swift
//  ClosuresAreGreat
//
//  Created by Jim Campagno on 10/24/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func performOperation (_ numbers: Double..., operation: (Double,Double) -> (Double)) -> Double {
        let answer = numbers.reduce(0) { (number: Double, total: Double) -> Double in
            operation(number, total)
        }
        return answer
    }
    
    
}

