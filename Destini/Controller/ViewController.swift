//
//  ViewController.swift
//  Destini
//
//  Created by Mateusz Urbas on 19/11/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI () {
        let currentStory = storyBrain.getCurrentStory()
        
        storyLabel.text = currentStory.title
        choice1Button.setTitle(currentStory.choice1, for: .normal)
        choice2Button.setTitle(currentStory.choice2, for: .normal)
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        let answer = sender.titleLabel!.text!
        
        storyBrain.nextStory(userChoice: answer)
        updateUI()
    }
    
}

