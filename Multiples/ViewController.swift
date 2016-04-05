//
//  ViewController.swift
//  Multiples
//
//  Created by Caspar Chiquet on 5/4/2016.
//  Copyright © 2016 Carbon Star Group Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Properties
    var multiple = 0
    var result = 0
    
    //Outlets
    
    @IBOutlet weak var background: UIImageView!

    @IBOutlet weak var headingImg: UIImageView!

    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var inputTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var addBtn: UIButton!
    
    @IBAction func startPlay (sender: UIButton) {
        
        if inputTxt.text != nil && inputTxt.text != "" {
            
            headingImg.hidden = true
            inputTxt.hidden = true
            playBtn.hidden = true
            resultLbl.hidden = false
            addBtn.hidden = false
            multiple = Int(inputTxt.text!)!
            result = 0 + multiple
            resultLbl.text = "0 + \(multiple) = \(result)"
            
        }
    
    }
    
    @IBAction func onAddPress (sender: UIButton){
        
        if result <= 50 {
            result += multiple
            resultLbl.text = "\(result-multiple) + \(multiple) = \(result)"
        } else {
            initialize()
        }
        
    }
    
    func initialize(){
        headingImg.hidden = false
        inputTxt.hidden = false
        inputTxt.text = nil
        playBtn.hidden = false
        resultLbl.hidden = true
        addBtn.hidden = true
    }
}

