//
//  TableViewController.swift
//  CoreDataDemo
//
//  Created by Mohamed Sobhi  Fouda on 4/14/18.
//  Copyright © 2018 Mohamed Sobhi Fouda. All rights reserved.
//

import UIKit
import CoreData

class TableViewController: UITableViewController {

    // MARK: - Variables
    
    let firstNames = ["Jane", "John", "Stephen", "Stacy", "Taylor", "Alex", "Eren"]
    let lastNames = ["White", "Black", "Fox", "Jones", "King", "McQueen", "Yeager"]
    let ages = [25, 26, 20, 30, 27, 28, 23]
    
    // MARK: - Make people hold an array of Person entities rather than strings
//    var people = [String]()
    var people = [NSManagedObject]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Add button
    
    @IBAction func addButtonWasTapped(_ sender: UIBarButtonItem) {
        
        let randomFirstName = firstNames[Int(arc4random_uniform(UInt32(firstNames.count)))]
        let randomLastName = lastNames[Int(arc4random_uniform(UInt32(lastNames.count)))]
        let randomAge = ages[Int(arc4random_uniform(UInt32(ages.count)))]
        
        people.append("\(randomFirstName) \(randomLastName) age \(randomAge)")
        self.tableView.reloadData()
        
    }
    
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return people.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = people[(indexPath as NSIndexPath).row]
        
        return cell
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
