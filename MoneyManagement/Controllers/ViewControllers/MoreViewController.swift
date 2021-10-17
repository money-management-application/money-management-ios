//
//  MoreViewController.swift
//  MoneyManagement
//
//  Created by Stephen Davis on 9/24/21.
//

import UIKit
import Firebase

class MoreViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var greetingLabel: UILabel!
    
    // MARK: - Properties
    var userController: UserController?
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let userController = userController,
              let user = userController.user
        else {
            print("Error: UserController has not been instantiated")
            return
        }
        greetingLabel.text = user.displayName
    }
    
    // MARK: - Actions
    @IBAction func logoutButtonTapped(_ sender: UIButton) {
        AuthController.signOut()
        let storyboard = UIStoryboard(name: AppConstants.mainStoryboardFileName, bundle: Bundle.main)
        let loginNavigationController = storyboard
            .instantiateViewController(identifier: AppConstants.loginNavigationControllerID)
        (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?
            .changeRootViewController(loginNavigationController)
    }
}
