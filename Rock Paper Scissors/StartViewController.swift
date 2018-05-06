//
//  StartViewController.swift
//  Rock Paper Scissors
//
//  Created by Rachel Bhadra on 5/5/18.
//  Copyright © 2018 Rachel Bhadra. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

    @IBOutlet weak var onePlayer: UIButton!
    @IBOutlet weak var twoPlayer: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        onePlayer.layer.cornerRadius = 10
        twoPlayer.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func toOnePlayer(_ sender: Any) {
        performSegue(withIdentifier: "toOnePlayer", sender: nil)
    }
    
    @IBAction func toTwoPlayer(_ sender: Any) {
        performSegue(withIdentifier: "toPlayer1", sender: nil)
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
