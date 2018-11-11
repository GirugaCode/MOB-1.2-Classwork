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
    
    let nameTextView: UITextView = {
        let textView = UITextView()
        let attributedText = NSMutableAttributedString(string: "Ryan Nguyen", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)])
        
        attributedText.append(NSAttributedString(string: "\n\nMake School", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 15), NSAttributedString.Key.foregroundColor: UIColor.gray]))
        
        textView.attributedText = attributedText
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(blueView)
        view.addSubview(nameTextView)
        
        setUpLayout()
    }

    private func setUpLayout() {
        
        NSLayoutConstraint.activate([
            blueView.topAnchor.constraint(equalTo: view.topAnchor, constant: 70),
            blueView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            blueView.widthAnchor.constraint(equalTo: nameTextView.widthAnchor),
            blueView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.2),
            
            nameTextView.topAnchor.constraint(equalTo: view.topAnchor, constant: 70),
            nameTextView.leadingAnchor.constraint(equalTo: blueView.trailingAnchor, constant: 20),
            nameTextView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            nameTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
            ])
    }
}
