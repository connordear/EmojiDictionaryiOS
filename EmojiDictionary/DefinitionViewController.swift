//
//  DefinitionViewController.swift
//  EmojiDictionary
//
//  Created by Connor Dear on 2017-04-14.
//  Copyright © 2017 Connor Dear. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    var emoji = "No Emoji"
    @IBOutlet weak var EmojiLabel: UILabel!
    @IBOutlet weak var DefinitionLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        EmojiLabel.text = emoji
        // Do any additional setup after loading the view.
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
