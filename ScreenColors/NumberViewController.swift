//
//  NumberViewController.swift
//  ScreenColors
//
//  Created by John Pitts on 5/6/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

import UIKit

class NumberViewController: UIViewController {
    
    let label = UILabel(frame: CGRect(x: 0, y: 0, width: 160, height: 80))
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(label)
        //label.textColor = UIColor.white
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 64)
        label.center = view.center
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let number = navigationController?.viewControllers.count {
            label.text = String(number)
        }
    }
    
    
    @IBAction func done(_ sender: Any) {
        
        tabBarController?.selectedIndex = 1
        //navigationController?.popToRootViewController(animated: true)
    }
}
