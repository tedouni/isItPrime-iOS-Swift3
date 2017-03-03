//
//  ViewController.swift
//  isItPrime
//
//  Created by Tayseer Edouni on 2/28/17.
//  Copyright © 2017 Tayseer Edouni. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var integerNumber: Int?
    @IBOutlet weak var textField: UITextField!

    @IBOutlet weak var textLabel: UILabel!
    
    @IBAction func determinePrime(_ sender: Any) {
        if let integerNumber = Int(textField.text!){
            if(integerNumber == 0){
                textLabel.text = "Is it Prime?"
            }else{
                var isPrime: Bool = true
                
                print(integerNumber)
                for tempNum in 2...integerNumber-1{
                    if(integerNumber%tempNum == 0){
                        isPrime = false
                        
                        
                    }
                }
                if(isPrime){
                    textLabel.text = "is Prime"
                }else{
                    textLabel.text = "Not Prime"
                }

            }
            
        }else{
            print("Error")
            textLabel.text = "Is it Prime?"
        }
        

        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
             self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: Selector("endEditing:")))

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

