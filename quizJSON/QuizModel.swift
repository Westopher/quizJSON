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
       
        getLocalJSONFile()
        //delegate?.questionsRetrieved(questions: [Question]())
    }
    
    func getLocalJSONFile() {
        //get path to json file in app bundle
        let path = Bundle.main.path(forResource: "QuestionData", ofType: ".json")
        guard path != nil else {
            print("error: can't find json file")
            return
        }
        //create url object w/path
        let url = URL(fileURLWithPath: path!)
        
        //get data from url
        do {
        let data = try Data(contentsOf: url)
        let decoder = JSONDecoder()
        let array = try decoder.decode([Question].self, from: data)
            
        }
        catch {
            print("couldn't get data from file")
        }
        //decode data into Questions struct instances
    }
    
    func getRemoteJSONFile() {
        
    }
}
