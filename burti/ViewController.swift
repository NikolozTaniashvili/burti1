//
//  ViewController.swift
//  burti
//
//  Created by nika taniashvili on 6/23/21.
//  Copyright © 2021 nika taniashvili. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomDiceIndex1 : Int = 0
    let diceArrey = ["ball1","ball2","ball3","ball4","ball5"]

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    func updateball() {
        randomDiceIndex1 = Int(arc4random_uniform(5))
       
        ballimage.image =  UIImage(named:diceArrey[randomDiceIndex1])
        
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateball()
    }
    @IBOutlet weak var ballimage: UIImageView!
    
    

    
    @IBAction func mkitxeaba(_ sender: UIButton) {updateball()
    }

    
}

