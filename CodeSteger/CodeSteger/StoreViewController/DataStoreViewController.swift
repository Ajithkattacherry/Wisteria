//
//  DataStoreViewController.swift
//  CodeSteger
//
//  Created by Ajith on 13/09/15.
//  Copyright (c) 2015 Code Poets. All rights reserved.
//

import UIKit

class DataStoreViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    let cellIdentifier = "DataStoreCellIdentifier"
    
    @IBOutlet var dataStoreTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBarHidden = false
        self.navigationItem.title = "Store Details"
        // Do any additional setup after loading the view.
        var cellNib = UINib(nibName: "DataStoreTableViewCell", bundle:nil)
        dataStoreTableView.registerNib(cellNib, forCellReuseIdentifier: cellIdentifier)
        
        //Adding right + button
        let buttonAdd: UIButton = UIButton.buttonWithType(UIButtonType.ContactAdd) as! UIButton
        buttonAdd.addTarget(self, action: "rightNavItemEditClick:", forControlEvents: UIControlEvents.TouchUpInside)
        var rightBarButtonItemAdd: UIBarButtonItem = UIBarButtonItem(customView: buttonAdd)
        self.navigationItem.setRightBarButtonItem(rightBarButtonItemAdd, animated: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillDisappear(animated: Bool) {
        self.navigationController?.navigationBarHidden = true
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    //MARK: UITableView Datasource
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! UITableViewCell
        
        let row = indexPath.row
        cell.textLabel?.text = "Test \(indexPath.row)"
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        let dataStoreDetailViewController = DataStoreDetailViewController(nibName:"DataStoreDetailViewController", bundle:nil)
        self.navigationController?.pushViewController(dataStoreDetailViewController, animated: true)
    }
    
    //MARK: Local Menthods
    func rightNavItemEditClick(sender:UIButton!)
    {
        println("New Item added!!!")
        let addDataViewController = AddDataViewController(nibName:"AddDataViewController", bundle:nil)
        self.navigationController?.pushViewController(addDataViewController, animated: true)
    }
}
