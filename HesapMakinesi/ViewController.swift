//
//  ViewController.swift
//  HesapMakinesi
//
//  Created by Oğuzhan Erdem on 22.08.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sonucEkraniLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
    }
    
    var removeLabelText = true
    func addNumberToInput(number:String) {
        
        var textNumber = String (sonucEkraniLbl.text!)
        if removeLabelText {
            textNumber = ""
            removeLabelText = false
        }
        textNumber = textNumber + number
        sonucEkraniLbl.text = textNumber
    }
    
    @IBAction func btnZero(_ sender: UIButton) {
        addNumberToInput(number: "0")
    }
    @IBAction func btnDot(_ sender: UIButton) {
        addNumberToInput(number: ".")

        
    }
    @IBAction func btnOne(_ sender: UIButton) {
        addNumberToInput(number: "1")
    }
    @IBAction func btnTwo(_ sender: UIButton) {
        addNumberToInput(number: "2")
    }
    @IBAction func btnThree(_ sender: UIButton) {
        addNumberToInput(number: "3")
    }
    @IBAction func btnFour(_ sender: UIButton) {
        addNumberToInput(number: "4")
    }
    @IBAction func btnFive(_ sender: UIButton) {
        addNumberToInput(number: "5")
    }
    @IBAction func btnSix(_ sender: UIButton) {
        addNumberToInput(number: "6")
    }
    @IBAction func btnSeven(_ sender: UIButton) {
        addNumberToInput(number: "7")
    }
    @IBAction func btnEight(_ sender: UIButton) {
        addNumberToInput(number: "8")
    }
    @IBAction func btnNine(_ sender: UIButton) {
        addNumberToInput(number: "9")
    }
    
    
    var op = "*"
    var number1:Double?
    
    @IBAction func btnCollection(_ sender: UIButton) {
        op = "+"
        number1 = Double(sonucEkraniLbl.text!)
        removeLabelText = true
        
    }
    
    @IBAction func btnEqual(_ sender: UIButton) {
        let number2 = Double(sonucEkraniLbl.text!)
        var results:Double?
        switch op {
        case  "+":
            results = number1! + number2!
        default:
            results = 0.0
        }
        sonucEkraniLbl.text = String(results!)
        removeLabelText = true
         
        
    }
    @IBAction func btnReset(_ sender: UIButton) {
        sonucEkraniLbl.text! = "0"
        removeLabelText = true
    }
    
    
    }
    
    


