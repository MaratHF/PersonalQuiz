//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Alexey Efimov on 14.03.2022.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var animalLabel: UILabel!
    @IBOutlet var resultDescriptionLabel: UILabel!
    
    var answers: [Answer]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getPollResult()
        
        navigationItem.hidesBackButton = true
    }
}
// MARK: Private method
extension ResultViewController {
    
    private func getPollResult() {
        
        var dogAnswer: Animal!
        var catAnswer: Animal!
        var rabbitAnswer: Animal!
        var turtleAnswer: Animal!
        
        var dogNumber = 0
        var catNumber = 0
        var rabbitNumber = 0
        var turtleNumber = 0
        
        for answer in answers {
            if answer.animal == .dog {
                dogAnswer = answer.animal
                dogNumber += 1
            } else if answer.animal == .cat {
                catAnswer = answer.animal
                catNumber += 1
            } else if answer.animal == .rabbit {
                rabbitAnswer = answer.animal
                rabbitNumber += 1
            } else if answer.animal == .turtle {
                turtleAnswer = answer.animal
                turtleNumber += 1
            }
        }
        
        if dogNumber >= catNumber && dogNumber >= rabbitNumber && dogNumber >= turtleNumber {
            animalLabel.text = "Вы - \(dogAnswer.rawValue) !"
            resultDescriptionLabel.text = dogAnswer.definition
        } else if catNumber >= dogNumber && catNumber >= rabbitNumber && catNumber >= turtleNumber {
            animalLabel.text = "Вы - \(catAnswer.rawValue) !"
            resultDescriptionLabel.text = catAnswer.definition
        } else if rabbitNumber >= catNumber && rabbitNumber >= dogNumber && rabbitNumber >= turtleNumber {
            animalLabel.text = "Вы - \(rabbitAnswer.rawValue) !"
            resultDescriptionLabel.text = rabbitAnswer.definition
        } else if turtleNumber >= catNumber && turtleNumber >= dogNumber && turtleNumber >= dogNumber {
            animalLabel.text = "Вы - \(turtleAnswer.rawValue) !"
            resultDescriptionLabel.text = turtleAnswer.definition
        }
    }
}
