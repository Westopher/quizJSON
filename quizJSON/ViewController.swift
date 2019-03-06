//
//  ViewController.swift
//  quizJSON
//
//  Created by West Kraemer on 3/6/19.
//  Copyright © 2019 West Kraemer. All rights reserved.
//

import UIKit

class ViewController: UIViewController, QuizProtocol {

    var model = QuizModel()
    var question = [Question]()
    var questionIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        model.getQuestions()
        model.delegate = self
    }

    func questionsRetrieved(questions: [Question]) {
        print("Questions returned")
    }

}

