//
//  MasterViewController.swift
//  ToDoList
//
//  Created by George Lo on 10/3/14.
//  Copyright (c) 2014 Purdue iOS Dev Club. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {

    var titles: NSMutableArray = NSMutableArray()
    var details: NSMutableArray = NSMutableArray()

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        (UIApplication.sharedApplication().delegate? as AppDelegate).master = self
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationItem.leftBarButtonItem = self.editButtonItem()

        let addButton = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: "insertNewObject")
        self.navigationItem.rightBarButtonItem = addButton
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        titles.removeAllObjects()
        details.removeAllObjects()
        var db: FMDatabase = FMDatabase(path: NSHomeDirectory() + "/Documents/Todo.sqlite")
        db.open()
        let rs: FMResultSet = db.executeQuery("SELECT Title, Detail FROM TaskList", withArgumentsInArray: nil)
        while (rs.next()) {
            let title: String = rs.objectForColumnIndex(0) as String
            let detail: String = rs.objectForColumnIndex(1) as String
            titles.addObject(title)
            details.addObject(detail)
        }
        db.close()
        self.tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func insertNewObject() {
        let navigationController: UINavigationController = UINavigationController(rootViewController: AddTaskViewController())
        navigationController.view.backgroundColor = UIColor.whiteColor()
        self.presentViewController(navigationController, animated: true, completion: nil)
    }

    // MARK: - Segues

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        /*if segue.identifier == "showDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow() {
                let object = objects[indexPath.row] as NSDate
            (segue.destinationViewController as DetailViewController).detailItem = object
            }
        }*/
    }

    // MARK: - Table View

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell

        cell.textLabel?.text = titles[indexPath.row] as? String
        cell.detailTextLabel?.text = details[indexPath.row] as? String
        return cell
    }

    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }

    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            var db: FMDatabase = FMDatabase(path: NSHomeDirectory() + "/Documents/Todo.sqlite")
            db.open()
            let title: String = titles[indexPath.row] as String
            let str: String = "DELETE FROM TaskList WHERE Title = \'" + title + "\'"
            db.executeStatements(str)
            db.close()
            titles.removeObjectAtIndex(indexPath.row)
            details.removeObjectAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        }
    }


}

