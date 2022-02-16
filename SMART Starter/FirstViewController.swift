//
//  FirstViewController.swift
//  SMART Starter
//
//  Created by Jeremiah Johnson on 5/30/15.
//  Copyright (c) 2015 DePaul University. All rights reserved.
//

import UIKit



class FirstViewController: UIViewController {

    @IBOutlet weak var lights: UILabel!
    @IBOutlet weak var airCondition: UILabel!
    @IBOutlet weak var radio: UILabel!
    @IBOutlet weak var doorsTrunk: UILabel!
    @IBOutlet weak var leftSwitch: UISwitch!
    @IBOutlet weak var rightSwitch: UISwitch!
    @IBOutlet weak var left2: UISwitch!
    @IBOutlet weak var right2: UISwitch!
    @IBOutlet weak var left3: UISwitch!
    @IBOutlet weak var right3: UISwitch!
    @IBOutlet weak var left4: UISwitch!
    @IBOutlet weak var right4: UISwitch!
    @IBOutlet weak var tempLabel: UILabel!
   
    @IBAction func interiorLight(sender: UISwitch) {
        lights.text = " " + (sender.on ? "On": "Off")
        //leftSwitch.on = sender.on
        //rightSwitch.on = sender.on
        leftSwitch.setOn(sender.on,animated: true)
        rightSwitch.setOn(sender.on, animated: true)
    }
    
    @IBAction func airCond(sender: UISwitch) {
        airCondition.text = " " + (sender.on ? "On": "Off")
        //left2.on = sender.on
        //right2.on = sender.on
        left2.setOn(sender.on,animated: true)
        right2.setOn(sender.on, animated: true)
    }
    
    @IBAction func acTemp(sender: UIStepper) {
        tempLabel.text = " \(Int(sender.value))"
    }
    
    
    @IBAction func radioLever(sender: UISwitch) {
        radio.text = " " + (sender.on ? "On": "Off")
        //left3.on = sender.on
        //right3.on = sender.on
        left3.setOn(sender.on,animated: true)
        right3.setOn(sender.on, animated: true)
    }
    
    @IBAction func doorLocks(sender: UISwitch) {
        doorsTrunk.text = " " + (sender.on ? "Locked": "Unlocked")
        //left4.on = sender.on
        //right4.on = sender.on
        left4.setOn(sender.on,animated: true)
        right4.setOn(sender.on, animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

