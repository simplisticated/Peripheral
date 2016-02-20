//
//  TwitterLauncher.swift
//  PeripheralDemo
//
//  Created by Igor Matyushkin on 20.02.16.
//  Copyright © 2016 Igor Matyushkin. All rights reserved.
//

import UIKit

public class TwitterLauncher: AppLauncher {
    
    // MARK: Class variables & properties
    
    
    // MARK: Public class methods
    
    public class func sharedTwitterLauncher() -> TwitterLauncher {
        struct Singleton {
            static var twitterLauncher = TwitterLauncher()
        }
        
        return Singleton.twitterLauncher
    }
    
    
    // MARK: Private class methods
    
    
    // MARK: Initializers
    
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    
    // MARK: Object variables & properties
    
    
    // MARK: Public object methods
    
    public override func URLSchemeForApp() -> String {
        return "twitter"
    }
    
    
    // MARK: Private object methods
    
    
    // MARK: Protocol methods
    
}
