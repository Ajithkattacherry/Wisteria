//
//  DataStoreDetailViewController.swift
//  CodeSteger
//
//  Created by Ajith on 13/09/15.
//  Copyright (c) 2015 Code Poets. All rights reserved.
//

import UIKit

class DataStoreDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //Adding right edit button
        let button = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Edit, target: self, action: "editStoreData")
        self.navigationItem.setRightBarButtonItem(button, animated: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        self.navigationController?.navigationBarHidden = false
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    func editStoreData(){
     println("Edit clicked!!!")
    }
}
