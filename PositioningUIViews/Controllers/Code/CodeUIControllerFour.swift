//
//  CodeUIControllerFour.swift
//  PositioningUIViews
//
//  Created by Ryan Nguyen on 11/9/18.
//  Copyright © 2018 Danh Phu Nguyen. All rights reserved.
//

import UIKit

class CodeUIControllerFour: UIViewController {
    
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
        
        view.addSubview(blueView)
        view.addSubview(redView)

    }

}
