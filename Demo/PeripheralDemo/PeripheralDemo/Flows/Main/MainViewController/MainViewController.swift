//
//  MainViewController.swift
//  PeripheralDemo
//
//  Created by Igor Matyushkin on 20.02.16.
//  Copyright © 2016 Igor Matyushkin. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    // MARK: Class variables & properties
    
    
    // MARK: Public class methods
    
    
    // MARK: Private class methods
    
    
    // MARK: Initializers
    
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    
    // MARK: Outlets
    
    @IBOutlet private weak var launchAppButton: UIButton!
    
    
    // MARK: Object variables & properties
    
    
    // MARK: Public object methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Initialize navigation bar
        
        navigationItem.title = "Peripheral Demo".uppercaseString
        
        
        // Initialize view
        
        view.backgroundColor = .whiteColor()
        
        
        // Initialize launch app button
        
        launchAppButton.backgroundColor = .clearColor()
        
        launchAppButton.layer.borderColor = UIColor.blueColor().CGColor
        launchAppButton.layer.borderWidth = 1.0
        launchAppButton.layer.cornerRadius = 10.0
        
        let titleForLaunchAppButton = "Launch External App".uppercaseString
        let attributedTitleForLaunchAppButton = NSAttributedString(string: titleForLaunchAppButton, attributes: attributesForLaunchAppButtonTitle())
        launchAppButton.setAttributedTitle(attributedTitleForLaunchAppButton, forState: .Normal)
    }
    
    func attributesForLaunchAppButtonTitle() -> [String : AnyObject] {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .Center
        
        return [
            NSFontAttributeName: UIFont.boldSystemFontOfSize(15.0),
            NSForegroundColorAttributeName: UIColor.blueColor(),
            NSKernAttributeName: 0.5,
            NSParagraphStyleAttributeName: paragraphStyle
        ]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: Private object methods
    
    
    // MARK: Actions
    
    @IBAction func launchAppButtonTapped(sender: AnyObject) {
        // Create alert controller
        
        let alertController = UIAlertController(title: "Select App to Launch", message: "App will be launched if it's installed on device.", preferredStyle: .ActionSheet)
        
        
        // Add Skype action
        
        let alertActionSkype = UIAlertAction(title: "Skype", style: .Default) { (alertAction) -> Void in
            Peripheral.Skype.launchApp()
        }
        
        alertController.addAction(alertActionSkype)
        
        
        // Add Twitter action
        
        Peripheral.Skype.launchApp()
        
        let alertActionTwitter = UIAlertAction(title: "Twitter", style: .Default) { (alertAction) -> Void in
            Peripheral.Twitter.launchApp()
        }
        
        alertController.addAction(alertActionTwitter)
        
        
        // Add cancel action
        
        let alertActionCancel = UIAlertAction(title: "Cancel", style: .Cancel) { (alertAction) -> Void in
        }
        
        alertController.addAction(alertActionCancel)
        
        
        // Display alert controller
        
        navigationController?.presentViewController(alertController, animated: true, completion: { () -> Void in
        })
    }
    
    
    // MARK: Protocol methods
    
}
