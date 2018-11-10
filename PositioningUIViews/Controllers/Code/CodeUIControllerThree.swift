//
//  CodeUIControllerThree.swift
//  PositioningUIViews
//
//  Created by Ryan Nguyen on 10/30/18.
//  Copyright © 2018 Danh Phu Nguyen. All rights reserved.
//

import UIKit

class CodeUIControllerThree: UIViewController {
    
    let yellowView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .yellow
        return view
    }()

    let orangeView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .orange
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(yellowView)
        view.addSubview(orangeView)
        
        setUpLayout()
    }
    
    private func setUpLayout() {
        
        NSLayoutConstraint.activate([
            yellowView.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            yellowView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            yellowView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.4),
            yellowView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.2),
            
            orangeView.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            orangeView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            orangeView.widthAnchor.constraint(equalTo: yellowView.widthAnchor),
            orangeView.heightAnchor.constraint(equalTo: yellowView.heightAnchor)
            
            ])
    }
    
}
