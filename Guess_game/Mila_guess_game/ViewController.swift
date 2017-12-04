//
//  ViewController.swift
//  Mila_guess_game
//
//  Created by 蔡孟軒 on 2017/11/24.
//  Copyright © 2017年 Mila. All rights reserved.
//

import UIKit
import GameKit

class ViewController: UIViewController {
    
    var answer = GKRandomSource.sharedRandom().nextInt(upperBound:100)+1
    //make a random number
    
    var maxNumber = 100
    var minNumber = 1
    var isOver = false
    
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
    
    @IBOutlet weak var background: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        inputTextField.becomeFirstResponder()
        //push the keyboard on
        
    }
    
    
    @IBAction func makeAGuess(_ sender: UIButton) {
        
        print(answer)//檢查
        
        let inputText = inputTextField.text! //拿出輸入的內容
        inputTextField.text = "" //猜玩數字就清空
        print("inputText:\(inputText)") //檢查
        
        let inputNumber = Int(inputText)
        //因為"inputText"型別為"string"，所以需要轉換為整數
        
        
        
        if isOver == false{
         //playing game
            
        if inputText == nil{
                
                //wrong input
                //print("wrong input") //檢查
                messageLabel.text = "No input! Guess a number between \(minNumber)~\(maxNumber)"
                
            }else{
                //input ok
                print("input number = \(inputNumber)") //檢查
                
                if inputNumber! > maxNumber{
                    //print("too large")//user input too large
                    messageLabel.text = "Too large ! Guess a number between \(minNumber)~\(maxNumber)"
                    
                    
                }else if inputNumber! < minNumber{
                    //print("too small")//user input too small
                    messageLabel.text = "Too small ! Guess a number between \(minNumber)~\(maxNumber)"
                    
                }else if inputNumber == answer{
                    //bingo! right answer
                    //messageLabel.text = "you are right"
                    messageLabel.text = "You are right. press [Guess] to play again!"
                    isOver = true
                    
                    background.image = UIImage(named:"Finish")
                    
                }else{
                    //check answer
                    //print("check answer")
                    //messageLabel.text = "Your are wrong, try again"
                    
                    if inputNumber! > answer{
                        maxNumber = inputNumber!
                    }else{
                        //small than anwer
                        minNumber = inputNumber!
                    }
                    
                    messageLabel.text = "Try again! Guess a number between \(minNumber)~\(maxNumber)"
                    
                }
            
            }
            
            
            
        }else{
            
            //game is over
            maxNumber = 100
            minNumber = 1
            messageLabel.text = "Guess a number between \(minNumber) ~ \(maxNumber)"
            answer = GKRandomSource.sharedRandom().nextInt(upperBound:100)+1
            isOver = false
            background.image = UIImage(named:"BG")
        }
        
        
    }
 

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

