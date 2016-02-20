//
//  Peripheral.swift
//  Peripheral
//
//  Created by Igor Matyushkin on 20.02.16.
//  Copyright © 2016 Igor Matyushkin. All rights reserved.
//

import UIKit

public class Peripheral: NSObject {
    
    // MARK: Class variables & properties
    
    public class var Skype: SkypeLauncher {
        get {
            return SkypeLauncher.sharedSkypeLauncher()
        }
    }
    
    public class var Twitter: TwitterLauncher {
        get {
            return TwitterLauncher.sharedTwitterLauncher()
        }
    }
    
    
    // MARK: Public class methods
    
    
    // MARK: Private class methods
    
    
    // MARK: Initializers
    
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    
    // MARK: Object variables & properties
    
    
    // MARK: Public object methods
    
    
    // MARK: Private object methods
    
    
    // MARK: Protocol methods
    
}
