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
    var question = [Question]()
    var questionIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        model.delegate = self
        model.getQuestions()

    }

    func questionsRetrieved(questions: [Question]) {
        print("Questions returned")
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }

}

