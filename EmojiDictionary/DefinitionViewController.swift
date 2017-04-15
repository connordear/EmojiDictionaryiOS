//
//  DefinitionViewController.swift
//  EmojiDictionary
//
//  Created by Connor Dear on 2017-04-14.
//  Copyright © 2017 Connor Dear. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    var emoji = "No Emoji" //Placeholder for the emoji value
    @IBOutlet weak var EmojiLabel: UILabel! //Large Emoji on Definition page
    @IBOutlet weak var DefinitionLabel: UILabel! //Definition goes here
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Set the emoji label as the selected one and then based on that emoji, display the appropriate definition.
        // I'm no emoji expert...
        
        EmojiLabel.text = emoji
        if EmojiLabel.text == "😀" {
            DefinitionLabel.text = "The classic Smiley."
        } else if EmojiLabel.text == "😈"{
            DefinitionLabel.text = "The purple Devil face!"
        } else if EmojiLabel.text == "👌"{
            DefinitionLabel.text = "Giving you the 'alright!'"
        } else if EmojiLabel.text == "👅"{
            DefinitionLabel.text = "Sticking out the tongue."
        } else if EmojiLabel.text == "👨‍❤️‍👨"{
            DefinitionLabel.text = "Couple in love!"
        }



        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
