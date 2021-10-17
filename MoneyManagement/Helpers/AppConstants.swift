//
//  Constants.swift
//  MoneyManagement
//
//  Created by Stephen Davis on 9/24/21.
//

import Foundation

public enum AppConstants {
    
    // MARK: - Misc
    /// The UserDefaults key used to store the Firebase phone login verificationID.
    static let authVerificationID: String = "AuthVerificationID"
    static let configSubscriptionID : String =  "Config-subscriptionID"
    static let isNewUser: String = "IsNewUser"
    
    /**
     # Summary
     The UserDefaults key used to store the state of MoneyManagement profile creation.
     
     # Discussion
     If the stored value is false, then profile creation is complete. If it's true then it assumes account creation is not complete and
     the user should be prompted the next time they open the app.
     */
    static let isProfileSetupComplete: String = "ProfileSetupComplete"
    static let userIsLoggedIn: String = "UserIsLoggedIn"
    
    
    // MARK: - Storyboard Files
    static let mainStoryboardFileName: String = "Main"
    static let moreStoryboardFileName: String = "More"
    
    
    // MARK: - Navigation controller IDs
    static let loginNavigationControllerID: String = "LoginNavigationController"
    static let feedNavigationControllerID: String = "FeedNavigationController"
    static let moreNavigationControllerID: String = "MoreNavigationController"
    
    
    // MARK: - View controller IDs
    static let mainTabBarControllerID: String = "MainTabBarController"
    static let loginViewControllerID: String = "LoginViewController"
    static let verificationViewControllerID: String = "VerificationViewController"
    static let displayNameViewControllerID: String = "DisplayNameViewController"
    
    static let feedViewControllerID: String = "FeedViewController"
    static let moreViewControllerID: String = "MoreViewController"
}
