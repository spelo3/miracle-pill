//
//  ViewController.swift
//  MiraclePill
//
//  Created by Scott Pelo on 3/9/17.
//  Copyright © 2017 Scott Pelo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryInput: UITextField!
    @IBOutlet weak var zipLabel: UILabel!
    @IBOutlet weak var zipInput: UITextField!
    @IBOutlet weak var successView: UIImageView!
    
    let states = ["California", "Arizona", "Oregon", "Washington"]

    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func statePickerPressed(_ sender: Any) {
        statePicker.isHidden = false
        countryLabel.isHidden = true
        countryInput.isHidden = true
        zipLabel.isHidden = true
        zipInput.isHidden = true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        countryLabel.isHidden = false
        countryInput.isHidden = false
        zipLabel.isHidden = false
        zipInput.isHidden = false
    }

    @IBAction func buyNowButtonPressed(_ sender: Any) {
        for view in self.view.subviews as [UIView] {
            view.isHidden = true
        }
        successView.isHidden = false
    }
}

