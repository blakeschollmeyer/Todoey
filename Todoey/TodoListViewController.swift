//
//  ViewController.swift
//  Todoey
//
//  Created by Blake Schollmeyer on 1/25/18.
//  Copyright © 2018 Blake Schollmeyer. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    let itemArray = ["ass", "titty", "bobs and vegena"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    // TABLEVIEW DATASOURCE METHODS
    
    // returns number of rows from itemArray to be listed in TodoListViewController
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // create reusable cell for TodoListViewController
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoItemCell", for: indexPath)
        
        // set label in each cell with current indexPath of itemArray
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    // TABLEVIEW DELEGATE METHODS
    
    // allows user to select tableView row
     override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // prints the itemArray index string
        // print(itemArray[indexPath.row])
        
        // removes checkmark for each row in the tableView. adds checkmark if there is none.
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        // instead of each tableView row highlighting always when selected, it will temporarily highlight and disappear
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}

