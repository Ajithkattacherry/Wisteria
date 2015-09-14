//
//  HomeViewController.swift
//  CodeSteger
//
//  Created by Ajith on 13/09/15.
//  Copyright (c) 2015 Code Poets. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationController?.navigationBarHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func doSignIn(sender: AnyObject) {
        let dataStoreViewController = DataStoreViewController(nibName:"DataStoreViewController", bundle:nil)
        self.navigationController?.pushViewController(dataStoreViewController, animated: true)
    }
    

    @IBAction func registerNewAccount(sender: AnyObject) {
        let registerViewController = RegisterViewController(nibName:"RegisterViewController", bundle:nil)
        self.navigationController?.pushViewController(registerViewController, animated: true)
    }
}
