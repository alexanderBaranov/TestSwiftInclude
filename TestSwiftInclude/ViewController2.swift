//
//  ViewController2.swift
//  TestSwiftInclude
//
//  Created by Александр on 23.01.2018.
//  Copyright © 2018 Александр Баранов. All rights reserved.
//

import UIKit

@objc (ViewController2)
class ViewController2: UIViewController {
    @objc var message: String?
    @objc weak var firstViewController: ViewController?
    
    override func viewDidLoad() {
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let msg = message else {
            return
        }
        
        print(msg)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        if let firstVC = firstViewController {
            firstVC.message = "Hellow, objective c!!!"
        }
        
        super.viewDidDisappear(animated)
    }
}
