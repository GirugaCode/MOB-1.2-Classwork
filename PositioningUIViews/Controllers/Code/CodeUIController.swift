//
//  CodeUIController.swift
//  PositioningUIViews
//
//  Created by Ryan Nguyen on 10/30/18.
//  Copyright © 2018 Danh Phu Nguyen. All rights reserved.
//

import UIKit

class CodeUIController: UIViewController {
    
    let blueView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .blue
        return view
    }()
    
    let redView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(blueView)
        view.addSubview(redView)
        
        NSLayoutConstraint.activate([
            blueView.topAnchor.constraint(equalTo: view.topAnchor),
            blueView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            blueView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            blueView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5),
            
            redView.topAnchor.constraint(equalTo: blueView.bottomAnchor),
            redView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            redView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            redView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            ])
    }

}
