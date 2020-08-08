//
//  ViewController.swift
//  RandomGame
//
//  Created by Samuel J. Lee on 8/8/20.
//  Copyright © 2020 Samuel J. Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var startField: UITextField!
    @IBOutlet weak var stopField: UITextField!
    @IBOutlet weak var player1GuessField: UITextField!
    @IBOutlet weak var player2GuessField: UITextField!

    @IBOutlet weak var outcomeLabel: UILabel!
    @IBOutlet weak var winnerLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func runRandom(_ sender: Any) {
        let startNum = Int(startField.text ?? "0")
        let stopNum = Int(stopField.text ?? "0")
        let outcome = Int.random(in: startNum!...stopNum!)
        outcomeLabel.text = String(outcome)

        let player1Guess = abs(outcome - Int(player1GuessField.text ?? "0")!)
        let player2Guess = abs(outcome - Int(player2GuessField.text ?? "0")!)

        if player1Guess > player2Guess {
            winnerLabel.text = "Player 2 Wins!"
        } else if player1Guess < player2Guess {
            winnerLabel.text = "Player 1 Wins!"
        } else {
            winnerLabel.text = "Players tie!"
        }

    }

}

