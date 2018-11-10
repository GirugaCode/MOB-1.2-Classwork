//
//  CodeUIControllerTwo.swift
//  PositioningUIViews
//
//  Created by Ryan Nguyen on 10/30/18.
//  Copyright © 2018 Danh Phu Nguyen. All rights reserved.
//

import UIKit

class CodeUIControllerTwo: UIViewController {
    
    let purpleView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .purple
        return view
    }()
    
    let greenView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .green
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(purpleView)
        view.addSubview(greenView)
        
        NSLayoutConstraint.activate([
            purpleView.topAnchor.constraint(equalTo: view.topAnchor),
            purpleView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            purpleView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            purpleView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.25),
            
            greenView.topAnchor.constraint(equalTo: purpleView.bottomAnchor),
            greenView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            greenView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            greenView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            ])
        
       
        
    }
    

}
