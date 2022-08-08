//
//  ViewController.swift
//  UIProject15
//
//  Created by Jaden Creech on 8/7/22.
//

import UIKit

class ViewController: UIViewController {

    public var smileLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        
        smileLabel = UILabel()
        smileLabel.text = ":D"
        smileLabel.textColor = .green
        smileLabel.translatesAutoresizingMaskIntoConstraints = false
        smileLabel.font = .boldSystemFont(ofSize: 25)
        view.addSubview(smileLabel)
        
        setConstraints()
    }
    
    public func setConstraints() {
        
        NSLayoutConstraint.activate([
            
            smileLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            smileLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }


}

