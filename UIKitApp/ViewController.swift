//
//  ViewController.swift
//  UIKitApp
//
//  Created by Карен Узунян on 20.11.2022.
//

import UIKit

class ViewController: UIViewController {

 
    @IBOutlet var segmentedControl: UISegmentedControl!
    @IBOutlet var mainLabel: UILabel!
    @IBOutlet var sliderView: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // MARK: Segmented Control
        segmentedControl.insertSegment(withTitle: "Third", at: 2, animated: false)
        
        // MARK: Label
        mainLabel.text = "Karen"
        mainLabel.font = mainLabel.font.withSize(30)
        mainLabel.textAlignment = .center
        mainLabel.numberOfLines = 2
        
        // MARK: - Slider
        sliderView.value = 1
        sliderView.maximumValue = 1
        sliderView.maximumValue = 100
        sliderView.minimumTrackTintColor = .red
        sliderView.maximumTrackTintColor = .black
        sliderView.thumbTintColor = UIColor(red: 199/255, green: 0/255, blue: 0/255, alpha: 1)
        
    }


    @IBAction func segmentedControlAction(_ sender: UISegmentedControl) {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            mainLabel.text = "first"
            mainLabel.textColor = .red
        case 1:
            mainLabel.text = "second"
            mainLabel.textColor = .gray
            
        default:
            mainLabel.text = "third"
            mainLabel.textColor = .black

        }
    }
    
    @IBAction func sliderAction(_ sender: UISlider) {
        mainLabel.text = String(Int(sliderView.value))
        
    }
}

