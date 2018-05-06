//
//  Player2ViewController.swift
//  Rock Paper Scissors
//
//  Created by Rachel Bhadra on 5/5/18.
//  Copyright © 2018 Rachel Bhadra. All rights reserved.
//

import UIKit

class Player2ViewController: UIViewController {
    
    var player1 = Int()
    var chosen = Int()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func chooseRock(_ sender: Any) {
        chosen = 0
        performSegue(withIdentifier: "toResults2", sender: nil)
    }
    
    @IBAction func choosePaper(_ sender: Any) {
        chosen = 1
        performSegue(withIdentifier: "toResults2", sender: nil)
    }
    
    @IBAction func chooseScissors(_ sender: Any) {
        chosen = 2
        performSegue(withIdentifier: "toResults2", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResults2" {
            if let dest = segue.destination as? ResultViewController {
                dest.player1 = player1
                dest.player2 = chosen
                dest.gameType = 1
            }
        }
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
