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
    
    @IBOutlet weak var buttonLabel: UIButton!
    
    override func viewDidLoad(){
        self.topLabelPressed.text = "My Favorite Foods"
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonPressed(_ sender: Any) { //the button was pressed, will initiate tasks below
        
        self.bottomLabelPressed.text = foodNames[currentIndex] //shows the name of my favorite food at given index
        if self.currentIndex < self.foodNames.count //making sure that the index is less than the count of the number of foods
        {
            currentIndex+=1 //used to move onto the the next food
            
            buttonLabel.setTitle("Next", for: UIControl.State.normal)//when button is pressed once, the title displays"Next"
        }
        else
        {
            (sender as! UIButton).isEnabled = false //no more strings in array
        }
    }
    
}

