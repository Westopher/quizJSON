//
//  ResultViewController.swift
//  quizJSON
//
//  Created by West Kraemer on 3/13/19.
//  Copyright © 2019 West Kraemer. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var dimView: UIView!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var feedbackLabel: UILabel!
    
    @IBOutlet weak var dismissButton: UIButton!
   
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func setPopUp(withTitle: String, withMessasge:String, withAction: String) {
        resultLabel.text = withTitle
        feedbackLabel.text = withMessasge
        dismissButton.setTitle(withAction, for: .normal)
    }
    
    
    @IBAction func dismissedTapped(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
