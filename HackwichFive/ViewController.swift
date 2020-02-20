//
//  ViewController.swift
//  HackwichFive
//
//  Created by CM Student on 2/20/20.
//  Copyright © 2020 Joseph Payongayong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Variable declarations
    var currentIndex = 0
    
    var foodNames = ["Burgers" , "Sushi" , "Mexican" , "Poke" , "Lau lau"]

    @IBOutlet weak var topLabelPressed: UILabel!
    
    @IBOutlet weak var bottomLabelPressed: UILabel!
    
    override func viewDidLoad(){
        self.topLabelPressed.text = "My Favorite Foods"
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        
        self.bottomLabelPressed.text = foodNames[currentIndex]
        
    }
    
}

