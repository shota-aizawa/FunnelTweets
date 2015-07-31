//
//  LoginViewController.swift
//  FunnelTweets
//
//  Created by 相澤渉太 on 2015/07/30.
//  Copyright (c) 2015年 Shota Aizawa. All rights reserved.
//

import UIKit
import TwitterKit


class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let logInButton = TWTRLogInButton { (session, error) in
            // play with Twitter session
            
            if session != nil {
                println(session.userName)
                UIApplication.sharedApplication().keyWindow?.rootViewController = MainTabBarController()
            } else{
                println(error.localizedDescription)
            }
        }
        logInButton.center = self.view.center
        self.view.addSubview(logInButton)
        
        // Do any additional setup after loading the view.
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
    
}
