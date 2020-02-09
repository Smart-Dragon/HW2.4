//
//  ViewController.swift
//  HW2.4
//
//  Created by Алексей Маслобоев on 08.02.2020.
//  Copyright © 2020 Алексей Маслобоев. All rights reserved.
//

import UIKit

final class LoginViewController: UIViewController {

    // MARK: - IBOutlets
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!
    
    
    // MARK: - Private Methods
    
    private let segueToMain = "ToMain"
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - IBActions
    
    @IBAction func logInAction() {
        if isEmptyUserName() || isEmptyUserPassword() {
            showAlert(title: "Ошибка", message: "Все поля должны быть заполнены")
        } else {
            logIn()
        }
    }
    
    @IBAction func getUserNameAction() {
        showAlert(title: "User Name", message: User.getUser().name)
    }
    
    @IBAction func getUserPasswordAction(_ sender: Any) {
        showAlert(title: "User PAssword", message: User.getUser().password)
    }
    
    // MARK: - Private Methods
    
    private func isEmptyUserName() -> Bool {
        return userNameTextField.text == nil || userNameTextField.text!.isEmpty
    }
    
    private func isEmptyUserPassword() -> Bool {
        return userPasswordTextField.text == nil || userPasswordTextField.text!.isEmpty
    }
    
    private func logIn() {
        let user = User.getUser()
        if let userName = userNameTextField.text, let userPassword = userPasswordTextField.text {
            if user.name == userName && user.password == userPassword {
                performSegue(withIdentifier: segueToMain, sender: self)
            } else {
                showAlert(title: "Ошибка", message: "Сочетание логина и пароля неверны, попробуйте еще раз.")
            }
        }
    }
    
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        present(alert, animated: true)
    }
    
}
