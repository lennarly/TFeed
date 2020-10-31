//
//  MainTabController.swift
//  TFeed
//
//  Created by Lenar Valeev on 26.10.2020.
//

import UIKit

class MainTabController: UITabBarController {

    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewControllers()
    }
    
    // MARK: - Helpers
    
    func configureViewControllers() {
        
        let feedController = FeedController()
        let feedNav = templateNavigationController(rootViewController: feedController,
                                                   imageName: "nav_home")
        
        let exploreController = ExploreController()
        let exploreNav = templateNavigationController(rootViewController: exploreController,
                                                      imageName: "nav_search")
        
        let notificationsController = NotificationsController()
        let notificationsNav = templateNavigationController(rootViewController: notificationsController,
                                                            imageName: "nav_like")
        
        let conversationsController = ConversationsController()
        let conversationsNav = templateNavigationController(rootViewController: conversationsController,
                                                            imageName: "nav_mail")
        
        viewControllers = [feedNav, exploreNav, notificationsNav, conversationsNav]
        
    }
    
    func templateNavigationController(rootViewController: UIViewController, imageName: String) -> UIViewController {
        
        let nav = UINavigationController(rootViewController: rootViewController)
        
        nav.tabBarItem.image = UIImage(named: imageName)
        nav.tabBarItem.imageInsets = UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)
        nav.navigationBar.tintColor = .white
        
        return nav
        
    }

}
