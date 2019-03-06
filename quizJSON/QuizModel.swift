//
//  QuizModel.swift
//  quizJSON
//
//  Created by West Kraemer on 3/6/19.
//  Copyright © 2019 West Kraemer. All rights reserved.
//

import Foundation

protocol QuizProtocol {
    func questionsRetrieved(questions:[Question])
}

class QuizModel {
    
    var delegate:QuizProtocol?
    
    func getQuestions() {
        delegate?.questionsRetrieved(questions: [Question]())
    }
}
