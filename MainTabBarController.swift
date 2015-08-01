//
//  MainTabBarController.swift
//  FunnelTweets
//
//  Created by 相澤渉太 on 2015/07/31.
//  Copyright (c) 2015年 Shota Aizawa. All rights reserved.
//

import UIKit
import TwitterKit

class MainTabBarController: UITabBarController {
    
    var timelineView: FirstViewController!
    var funnelView: SecondViewController!


    override func viewDidLoad() {
        super.viewDidLoad()
        timelineView = FirstViewController()
        funnelView = SecondViewController()
        timelineView.tabBarItem = UITabBarItem(title: "MyTweet", image: UIImage(named: "TabBarIcon-01.png") , tag: 1)
        funnelView.tabBarItem = UITabBarItem(title: "MyFunnel", image: UIImage(named: "TabBarIcon-02.png") , tag: 2)
        
        var timelineNavigationController = UINavigationController(rootViewController: timelineView)
        var funnelNavigationController = UINavigationController(rootViewController: funnelView)
        self.setViewControllers([timelineNavigationController, funnelNavigationController], animated: false)
        
        UITabBar.appearance().barTintColor = UIColor(red: 0.12, green: 0.35, blue: 0.2, alpha: 0.3)
        
//        
//        let font:UIFont! = UIFont(name: "HelveticaNeue-Bold", size: 10)
//        let selectedAttributes: NSDictionary! = [NSFontAttributeName: font, NSForegroundColorAttributeName: UIColor(red: 0.12, green: 0.55, blue: 0.3, alpha: 0.9)]
//        
//        UITabBarItem.appearance().setTitleTextAttributes(selectedAttributes, forState: UIControlState.Selected)
//
//        UITabBar.appearance().tintColor = UIColor(red: 0.12, green: 0.55, blue: 0.3, alpha: 0.9)

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
