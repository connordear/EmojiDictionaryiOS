//
//  DefinitionViewController.swift
//  EmojiDictionary
//
//  Created by Connor Dear on 2017-04-14.
//  Copyright © 2017 Connor Dear. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    var chosenEmoji = Emoji() //Placeholder for the emoji value
    @IBOutlet weak var EmojiLabel: UILabel! //Large Emoji on Definition page
    @IBOutlet weak var DefinitionLabel: UILabel! //Definition goes here
    @IBOutlet weak var birthYear: UILabel!
    @IBOutlet weak var category: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Set the emoji label as the selected one and then based on that emoji, display the appropriate definition.
        // I'm no emoji expert...
        EmojiLabel.text = chosenEmoji.emojiName
        DefinitionLabel.text = chosenEmoji.definition
        birthYear.text = "Birth Year: " + String(chosenEmoji.birthYear)
        category.text = "Category: " + chosenEmoji.category
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
