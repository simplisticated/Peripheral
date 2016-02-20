//
//  StandardNavigationController.swift
//  PeripheralDemo
//
//  Created by Igor Matyushkin on 20.02.16.
//  Copyright © 2016 Igor Matyushkin. All rights reserved.
//

import UIKit

class StandardNavigationController: UINavigationController {

    // MARK: Class variables & properties
    
    
    // MARK: Public class methods
    
    
    // MARK: Private class methods
    
    
    // MARK: Initializers
    
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    
    // MARK: Outlets
    
    
    // MARK: Object variables & properties
    
    
    // MARK: Public object methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Initialize navigation bar
        
        navigationBarHidden = false
        navigationBar.titleTextAttributes = defaultTitleTextAttributes()
        navigationBar.barTintColor = .whiteColor()
        navigationBar.tintColor = .blueColor()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: Private object methods
    
    private func defaultTitleTextAttributes() -> [String : AnyObject] {
        return [
            NSFontAttributeName: UIFont.boldSystemFontOfSize(15.0),
            NSForegroundColorAttributeName: UIColor.blueColor(),
            NSKernAttributeName: 0.5
        ]
    }
    
    
    // MARK: Actions
    
    
    // MARK: Protocol methods
    
}
