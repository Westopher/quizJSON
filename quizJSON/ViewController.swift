//
//  ViewController.swift
//  quizJSON
//
//  Created by West Kraemer on 3/6/19.
//  Copyright © 2019 West Kraemer. All rights reserved.
//

import UIKit

class ViewController: UIViewController, QuizProtocol, UITableViewDataSource, UITableViewDelegate {
    

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    
    var model = QuizModel()
    var questions = [Question]()
    var questionIndex = 0
    var numCorrect = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.estimatedRowHeight = 100
        tableView.rowHeight = UITableView.automaticDimension
        model.delegate = self
        model.getQuestions()

    }
    
    func displayQuestion() {
        guard questionIndex < questions.count else {
            print("Trying to display question index that is out of bounds")
            return
        }
        
        questionLabel.text = questions[questionIndex].question!
        
        tableView.reloadData()
    }

    func questionsRetrieved(questions: [Question]) {
        self.questions = questions
        displayQuestion()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard questions.count > 0 && questions[questionIndex].answers != nil else {
            return 0
        }
        return questions[questionIndex].answers!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnswerCell", for: indexPath)
        let label = cell.viewWithTag(1) as! UILabel
        
        label.text = questions[questionIndex].answers?[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //when user chooses an answer
        if questions[questionIndex].correctAnswerIndex == indexPath.row {
            numCorrect = numCorrect + 1
        }
        else {
            
        }
        questionIndex = questionIndex + 1
        displayQuestion()
}

}
