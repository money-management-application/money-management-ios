//
//  DisplayNameViewController.swift
//  MoneyManagement
//
//  Created by Stephen Davis on 9/30/21.
//

import UIKit
import Firebase

class DisplayNameViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var displayNameTextField: UITextField!
    
    // MARK: - Properties
    var userController: UserController?
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Actions
    @IBAction func nextButtonTapped(_ sender: UIButton) {
        let displayName = displayNameTextField.text ?? ""
        
        guard let userController = userController else { return }
        userController.updateUser(displayName: displayName)
        
        if userController.isProfileSetupComplete() {
            let storyboard = UIStoryboard(name: AppConstants.moreStoryboardFileName, bundle: Bundle.main)
            let viewController = storyboard
                .instantiateViewController(withIdentifier: AppConstants.moreViewControllerID)
                    as! MoreViewController
            viewController.userController = userController
            self.navigationController?.pushViewController(viewController, animated: true)
        } else {
            let storyboard = UIStoryboard(name: AppConstants.mainStoryboardFileName, bundle: Bundle.main)
            let mainTabBarController = storyboard.instantiateViewController(withIdentifier: AppConstants.mainTabBarControllerID)
            userController.completeProfileSetup()
            AuthController.persistUserLogin()
            (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?
                .changeRootViewController(mainTabBarController)
        }
    }
}
