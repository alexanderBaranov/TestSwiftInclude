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
    
    override func viewDidLoad() {
        
        guard let msg = message else {
            return
        }

        print(msg)
    }
}
