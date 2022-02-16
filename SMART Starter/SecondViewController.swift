//
//  SecondViewController.swift
//  SMART Starter
//
//  Created by Jeremiah Johnson on 5/30/15.
//  Copyright (c) 2015 DePaul University. All rights reserved.
//

import UIKit

let stations = ["88.9","92.3","96.3","102.7", "103.5", "106.3", "107.5", "107.9"]

class SecondViewController: UIViewController {
    
    @IBOutlet weak var engineOutput: UILabel!
    @IBOutlet weak var engineControl: UISegmentedControl!
    @IBAction func engine(sender: UISegmentedControl) {
        switch engineControl.selectedSegmentIndex
        {
        case 0:
            engineOutput.text = "Engine is ON";
        case 1:
            engineOutput.text = "Engine is OFF";
        default:
            break; 
        }
    }

    @IBAction func seatEquipped(sender: UISegmentedControl) {
        let enabled = (sender.selectedSegmentIndex == 0)
        seatControlOut.enabled = enabled
        seatWarmOut.enabled = enabled
        seatCoollOut.enabled = enabled

    }
    
    @IBAction func seatWarm(sender: UISegmentedControl) {
        switch seatWarmOut.selectedSegmentIndex
        {
        case 0:
            seatControlOut.text = "Seat Warmer is ON";
        case 1:
            seatControlOut.text = "Seat Warmer is OFF";
        default:
            break;
        }
    }
    
    @IBAction func seatCool(sender: UISegmentedControl) {
        switch seatCoollOut.selectedSegmentIndex
        {
        case 0:
            seatControlOut.text = "Seat Cooler is ON";
        case 1:
            seatControlOut.text = "Seat Cooler is OFF";
        default:
            break;
        }
    }
    
    @IBOutlet weak var seatControlOut: UILabel!
    @IBOutlet weak var seatWarmOut: UISegmentedControl!
    
    @IBOutlet weak var seatCoollOut: UISegmentedControl!
    
    
    @IBOutlet weak var picker: UIPickerView!
    @IBAction func radioButton(sender: UIButton) {
        let title = "Select A Radio Station"
        let message = "You have selected \(stations[picker.selectedRowInComponent(0)])"
        let alertController = UIAlertController(title: title,
            message: message, preferredStyle: .ActionSheet)
        let cancelAction = UIAlertAction(title: "Cancel",
            style: .Destructive) { action in let cancelController = UIAlertController(
                title: "No Problem", message: "Select another station.",
                preferredStyle: .Alert)
                let okayAction = UIAlertAction(title: "Okay",
                    style: .Default, handler: nil)
                cancelController.addAction(okayAction)
                self.presentViewController(cancelController,
                    animated: true, completion: nil)}
        let confirmAction = UIAlertAction(title: "Confirm",
            style: .Default) { action in let okayController = UIAlertController(
                title: "Done!", message: "Your radio is currenty on the Preset Station you selected",
                preferredStyle: .Alert)
                let okayAction = UIAlertAction(title: "Okay",
                    style: .Default, handler: nil)
                okayController.addAction(okayAction)
                self.presentViewController(okayController,
                    animated: true, completion: nil)}
        alertController.addAction(cancelAction)
        alertController.addAction(confirmAction)
        presentViewController(alertController, animated: true,
            completion: nil)
    }
    
    @IBOutlet weak var radioOut: UILabel!
    @IBAction func radioVolume(sender: UISlider) {
        var currentValue = Int(sender.value)
        
        radioOut.text = "\(currentValue)"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return stations.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return stations[row]
    }


}

