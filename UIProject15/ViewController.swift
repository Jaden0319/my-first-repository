//
//  ViewController.swift
//  UIProject15
//
//  Created by Jaden Creech on 8/7/22.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    public var rickPicture: UIImageView = {
        let picture = UIImageView()
        picture.image = UIImage(named: "rick")
        return picture
    }()
    
    public var container: UIView = {
        let containter = UIView()
        containter.backgroundColor = .green
        return containter
    }()
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        view.addSubview(container)
        container.addSubview(rickPicture)
        
        container.snp.makeConstraints { make in
            
            make.center.equalToSuperview()
            make.height.width.equalToSuperview().multipliedBy(0.5)
            
        }
        
        rickPicture.snp.makeConstraints { make in

            make.horizontalEdges.equalTo(container).offset(15)
            make.verticalEdges.equalTo(container).inset(15)
        }
        
       
    }
    
   
}

