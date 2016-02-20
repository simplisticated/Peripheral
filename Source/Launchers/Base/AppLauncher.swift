//
//  AppLauncher.swift
//  Peripheral
//
//  Created by Igor Matyushkin on 20.02.16.
//  Copyright © 2016 Igor Matyushkin. All rights reserved.
//

import UIKit

public class AppLauncher: NSObject {
    
    // MARK: Class variables & properties
    
    
    // MARK: Public class methods
    
    
    // MARK: Private class methods
    
    
    // MARK: Initializers
    
    override init() {
        super.init()
    }
    
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    
    // MARK: Object variables & properties
    
    
    // MARK: Public object methods
    
    /**
    - returns: URL scheme for supported app.
    
    Scheme doesn't include slashes and other special symbols.
    
    Example: "skype", "facebook", etc.
    */
    public func URLSchemeForApp() -> String {
        assertionFailure("This method should be overriden in subclass")
        return ""
    }
    
    public func absoluteURLStringWithRelativePath(relativePath: String) -> String {
        let URLString = String(format: "%@://%@", arguments: [URLSchemeForApp(), relativePath])
        return URLString
    }
    
    public func absoluteURLStringWithParameters(parameters: [String : String]) -> String {
        let relativePath = ""
        let resultString = absoluteURLStringWithRelativePath(relativePath)
        return resultString
    }
    
    public func launchAppWithURLString(URLString: String) -> Bool {
        // Obtain URL
        
        let URL = NSURL(string: URLString)
        
        guard URL != nil else {
            return false
        }
        
        
        // Obtain application
        
        let application = UIApplication.sharedApplication()
        
        
        // Open URL if possible
        
        if application.canOpenURL(URL!) {
            application.openURL(URL!)
            return true
        } else {
            return false
        }
    }
    
    public func launchApp() -> Bool {
        let absoluteURLString = absoluteURLStringWithRelativePath("")
        let result = launchAppWithURLString(absoluteURLString)
        return result
    }
    
    
    // MARK: Private object methods
    
    
    // MARK: Protocol methods
    
}
