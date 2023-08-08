//
//  ViewController.swift
//  TabBar
//
//  Created by DA MAC M1 157 on 2023/08/07.
//

import UIKit

class ViewController: UIViewController {
    
    private let myButton: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 0, y: 0, width: 200, height: 50)
        button.setTitle("Log In", for: .normal)
        
        button.layer.backgroundColor = UIColor.systemCyan.cgColor
        button.layer.cornerRadius = CGFloat(25)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(myButton)
        
        myButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
        
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        myButton.center = view.center
    }
    
    
    
    @objc func didTapButton() {
        let tabBarVC = UITabBarController()
        
        // The reason we are creating the VC as constants instead of passing them directly is that we want to learn how to wrap them in a navigation controller.
        let vc1 = UINavigationController(rootViewController: FirstVC())
        let vc2 = UINavigationController(rootViewController: SecondVC())
        let vc3 = UINavigationController(rootViewController: ThirdVC())
        let vc4 = UINavigationController(rootViewController: FourthVC())
        let vc5 = UINavigationController(rootViewController: FifthVC())
        
        
        vc1.title = "Home"
        vc2.title = "About"
        vc3.title = "Contact"
        vc4.title = "Help"
        vc5.title = "Settings"
        
        tabBarVC.setViewControllers([vc1, vc2, vc3, vc4, vc5], animated: false)
        
        guard let items = tabBarVC.tabBar.items else {
            return
        }
        let images = ["house", "bell", "person.circle", "gear", "star"]
        
        for x in 0..<items.count {
            items[x].image = UIImage(systemName: images[x])
        }
        
        tabBarVC.modalPresentationStyle = .fullScreen
        present(tabBarVC, animated: true)
        
        
        UITabBar.appearance().backgroundColor = .systemGray5
        UITabBar.appearance().tintColor = .systemGreen
    }


}

