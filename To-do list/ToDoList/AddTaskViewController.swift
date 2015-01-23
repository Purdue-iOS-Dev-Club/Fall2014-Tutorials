//
//  AddTaskViewController.swift
//  ToDoList
//
//  Created by George Lo on 10/3/14.
//  Copyright (c) 2014 Purdue iOS Dev Club. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController, UITextFieldDelegate {

    let titleTF: UITextField = UITextField(frame: CGRectMake(20, 100, 200, 50))
    let detailTF: UITextField = UITextField(frame: CGRectMake(20, 170, 200, 50))
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Cancel and Done buttons
        let doneButtonItem: UIBarButtonItem = UIBarButtonItem(title: "Done", style: UIBarButtonItemStyle.Done, target: self, action: "done")
        let cancelButtonItem: UIBarButtonItem = UIBarButtonItem(title: "Cancel", style: UIBarButtonItemStyle.Bordered, target: self, action: "dismiss")
        self.navigationItem.rightBarButtonItem = doneButtonItem
        self.navigationItem.leftBarButtonItem = cancelButtonItem
        
        // Textfields
        titleTF.placeholder = "Enter your title"
        detailTF.placeholder = "Enter your detail"
        titleTF.delegate = self
        detailTF.delegate = self
        self.view.addSubview(titleTF)
        self.view.addSubview(detailTF)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true // YES in Obj-C
    }
    
    func done() {
        var db: FMDatabase = FMDatabase(path: NSHomeDirectory() + "/Documents/Todo.sqlite")
        db.open()
        
        // Operations
        // INSERT INTO TaskList (Title, Detail) VALUES ('CS252 Project', 'Shell Project')
        var updateString: String = "INSERT INTO TaskList (Title, Detail) VALUES (\'" + titleTF.text + "\', \'" + detailTF.text + "\')"
        db.executeStatements(updateString)
        
        db.close()
    SCLAlertView().showSuccess((UIApplication.sharedApplication().delegate? as AppDelegate).master!, title: "YAY!!", subTitle: "Inserted successfully")
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func dismiss() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
