//
//  ViewController.swift
//  HW3
//
//  Created by Sean Narvasa on 1/4/16.
//  Copyright © 2016 Sean Narvasa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var continueButton: UIButton!
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var ageStatus: UILabel!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var sumLabel: UILabel!
    @IBOutlet weak var firstNumberField: UITextField!
    @IBOutlet weak var secondNumberField: UITextField!
    @IBOutlet weak var sumTotal: UILabel!
    @IBOutlet weak var evenOddField: UITextField!
    @IBOutlet weak var evenOddOutput: UILabel!
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func didTapContinueButton(sender: AnyObject) {
        //TODO #1: 
        //welcomeLabel.text = "Hello, world"
        
        //TODO #2:
        self.welcomeLabel.text = "Hello \(nameField.text!), you are \(ageField.text!) years old"
        
        //TODO #3: Modified from the homework
    
        //let age:Int? = Int(ageField.text!)
        //
        //if age < 16 {
        //    self.ageStatus.text = "Aww, you're a baby."
        //} else if age >= 16 && age < 18 {
        //    self.ageStatus.text = "You can drive."
        //} else if age >= 18 && age < 21 {
        //    self.ageStatus.text = "You can vote."
        //} else if age >= 21 && age < 120 {
        //    self.ageStatus.text = "You can drink."
        //} else {
        //    self.ageStatus.text = "You are way too old"
        //}
        
        //TODO #4:
        let age:Int? = Int(ageField.text!)
        
        if age < 16 {
            self.ageStatus.text = "Aww, you're a baby."
        } else if age >= 16 && age < 18 {
            self.ageStatus.text = "You can drive."
        } else if age >= 18 && age < 21 {
            self.ageStatus.text = "You can drive and vote."
        } else if age >= 21 && age < 120 {
            self.ageStatus.text = "You can drive, vote, and drink (but not at the same time!)"
        } else {
            self.ageStatus.text = "You are way too old to do anything."
        }
    }
    
    //TODO #5:
    @IBAction func didTapAddButton(sender: AnyObject) {
        
        let numberOne:Int? = Int(firstNumberField.text!)
        let numberTwo:Int? = Int(secondNumberField.text!)
        let sumNumber:Int
        
        sumNumber = numberOne! + numberTwo!
        
        self.sumTotal?.text = "\(sumNumber)"
    }
    
    //TODO #6:
    @IBAction func didTapEvenOddButton(sender: AnyObject) {
        
        let evenOddNum:Int? = Int(evenOddField.text!)
        print("\(evenOddNum)")
        
        if evenOddNum! % 2 == 0 {
            self.evenOddOutput.text = "Even"
        } else {
            self.evenOddOutput.text = "Odd"
        }
    }
}

