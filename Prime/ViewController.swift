//
//  ViewController.swift
//  Prime
//
//  Created by MasterUNG on 7/27/2560 BE.
//  Copyright © 2560 MasterUNG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Impricit
    let strAlertHaveSpace = "Please Fill Number"
    let strAlertNumberFalse = "Please Fill Number Only"
    let strAlertNotPrime = " not Prime"
    let strAlertBePrime = " is Prime"
    
    
    
    
    
    @IBOutlet weak var numberTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBAction func checkButton(_ sender: Any) {
        
        let strNumberFromTextField = numberTextField.text!
        print("Number ==> \(strNumberFromTextField)")
        
        //Check Space
        if strNumberFromTextField != "" {
            print("No Space")
            
            //Check Number or Artical
            if let intNumberFromTextField = Int(strNumberFromTextField) {
                print("This is Number")
                
                //Check Prime
                if intNumberFromTextField != 1 {
                    // Not 1
                    
                }   else {
                    resultLabel.text = "\(intNumberFromTextField)" + strAlertNotPrime
                }
                
            }   else {
                print("This is Arical")
                resultLabel.text = strAlertNumberFalse
            }
            
            
            
        }   else {
            print("Have Space")
            resultLabel.text = strAlertHaveSpace
        }
        
        
    }   // checkButton
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

