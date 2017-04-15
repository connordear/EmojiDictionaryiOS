//
//  ViewController.swift
//  EmojiDictionary
//
//  Created by Connor Dear on 2017-04-14.
//  Copyright © 2017 Connor Dear. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var emojis : [Emoji] = []
    @IBOutlet weak var dictionaryTable: UITableView!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        emojis = populateEmojiArray()
        
        dictionaryTable.dataSource = self
        dictionaryTable.delegate = self
        
    }
    //Define Number of rows in the TableView based on the size of the emoji array
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count;
    }
    //Make each label of the table a different emoji from the array
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let currentCellEmoji = emojis[indexPath.row]
        cell.textLabel?.text = currentCellEmoji.emojiName
        return cell
    }
    //If you select an emoji, segue to the definition page + pass the emoji as sender
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "details", sender: emoji)
    }
    //Preparation for the segue - set the definition's page emoji to the one from the sender.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.chosenEmoji = sender as! Emoji
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func populateEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.emojiName = "😀"
        emoji1.birthYear = 2010
        emoji1.category = "Smiley"
        emoji1.definition = "The classic Smiley."
        
        let emoji2 = Emoji()
        emoji2.emojiName = "😈"
        emoji2.birthYear = 2010
        emoji2.category = "Smiley"
        emoji2.definition = "The purple Devil face!"
        
        let emoji3 = Emoji()
        emoji3.emojiName = "👌"
        emoji3.birthYear = 2010
        emoji3.category = "Hands"
        emoji3.definition = "Giving you the 'alright!'"
        
        let emoji4 = Emoji()
        emoji4.emojiName = "👅"
        emoji4.birthYear = 2010
        emoji4.category = "Body Parts"
        emoji4.definition = "Stinking your tongue out"
        
        let emoji5 = Emoji()
        emoji5.emojiName = "👨‍❤️‍👨"
        emoji5.birthYear = 2010
        emoji5.category = "Couples"
        emoji5.definition = "Couple in love!"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5]
    }
    
}

