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
        let vc1 = FirstVC()
        let vc2 = SecondVC()
        let vc3  = ThirdVC()
        let vc4 = FourthVC()
        let vc5 = FifthVC()
        
        
        title = "Home"
        title = "About"
        title = "Contact"
        title = "Help"
        title = "Settings"
        
        tabBarVC.setViewControllers([vc1, vc2, vc3, vc4, vc5], animated: false)
        tabBarVC.modalPresentationStyle = .fullScreen
        present(tabBarVC, animated: true)
    }


}

