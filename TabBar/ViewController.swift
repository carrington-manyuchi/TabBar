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
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        myButton.center = view.center
    }


}

