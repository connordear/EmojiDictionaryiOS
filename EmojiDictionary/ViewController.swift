//
//  ViewController.swift
//  EmojiDictionary
//
//  Created by Connor Dear on 2017-04-14.
//  Copyright © 2017 Connor Dear. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    var emojis = ["😀","😈","👌","👅","👨‍❤️‍👨"] //Introduce Emoji's Array
    @IBOutlet weak var dictionaryTable: UITableView!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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
        cell.textLabel?.text = emojis[indexPath.row]
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
        defVC.emoji = sender as! String
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

