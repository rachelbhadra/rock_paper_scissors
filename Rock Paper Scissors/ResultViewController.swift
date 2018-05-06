//
//  ResultViewController.swift
//  Rock Paper Scissors
//
//  Created by Rachel Bhadra on 5/5/18.
//  Copyright © 2018 Rachel Bhadra. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var player1 = Int()
    var player2 = Int()
    var gameType = Int()
    
    let player1Win = ["YOU WIN!", "PLAYER ONE WINS!"]
    let player2Win = ["YOU LOSE!", "PLAYER TWO WINS!"]
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var playAgain: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playAgain.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
        if player1 == 0 {
            if player2 == 0 {
                resultLabel.text = "IT'S A TIE!"
            }
            if player2 == 1 {
                resultLabel.text = player2Win[gameType]
            }
            if player2 == 2 {
                resultLabel.text = player1Win[gameType]
            }
        }
        if player1 == 1 {
            if player2 == 1 {
                resultLabel.text = "IT'S A TIE!"
            }
            if player2 == 2 {
                resultLabel.text = player2Win[gameType]
            }
            if player2 == 0 {
                resultLabel.text = player1Win[gameType]
            }
        }
        if player1 == 2 {
            if player2 == 2 {
                resultLabel.text = "IT'S A TIE!"
            }
            if player2 == 0 {
                resultLabel.text = player2Win[gameType]
            }
            if player2 == 1 {
                resultLabel.text = player1Win[gameType]
            }
            
        }
        
    }
    
    @IBAction func playAgain(_ sender: Any) {
        performSegue(withIdentifier: "toStart", sender: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
