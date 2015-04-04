//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Ronald Hernandez on 4/4/15.
//  Copyright (c) 2015 Ron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultsLabel: UILabel!
    @IBOutlet weak var numberTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()


    }



    @IBAction func guessButtonTapped(sender: AnyObject) {

        var randomNumber = arc4random_uniform(6)

        var guessInt = numberTextField.text.toInt()

        if guessInt != nil{
            
            if(guessInt == Int(randomNumber)){

            resultsLabel.text = "You got it Right!"

            }else {
               resultsLabel.text = "Please try again!"
            }


        } else {

            numberTextField.text = "Please enter a number"
        }

    }

}

