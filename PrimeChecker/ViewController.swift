//
//  ViewController.swift
//  PrimeChecker
//
//  Created by Sujeet Poudel on 8/5/19.
//  Copyright © 2019 Sujeet Poudel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ResultText: UILabel!

    @IBOutlet weak var TextInput: UITextField!
    @IBAction func Button(_ sender: Any) {
        
        let input : String = TextInput.text!
        let input_integer : Int = Int(input) ?? 0
        
        let result : Bool = primechecker(input_integer: input_integer)
        
        if result {
            ResultText.text = "Prime"
        } else {
            ResultText.text = "Not Prime"
        }
    }
    
    func primechecker (input_integer : Int)->Bool {
        var counter = 0
        for n in 1...input_integer {
            if input_integer%n == 0{
                counter += 1
            }
        }
        if counter == 2 {
            return true
        } else {
            return false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

