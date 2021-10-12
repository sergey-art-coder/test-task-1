//
//  ViewController.swift
//  TestTask-1
//
//  Created by Сергей Ляшенко on 12.10.2021.
//

import UIKit
import SwiftKeychainWrapper

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBAction func onButtonTapped(_ sender: Any) {
        
        // откладываем время выполнения
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) { [weak self] in
            self?.authAction()
        }
    }
    
    let login = "admin"
    let password = "1"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let session = Session.shared
        session.user = login
    }
    
    func checkLogAndPass() -> Bool {
        // Получаем текст логина и пароля
        return loginField.text == login && passwordField.text == password
    }
    
    // функция которая проверяет если логин правильный то выполняет переход
    private func authAction() {
        
        if checkLogAndPass() {
            self.performSegue(withIdentifier: "showMainSegue", sender: self)
        } else {
            // Создаем контроллер
            let alert = UIAlertController (title: "Ошибка", message: "Введены не верные данные пользователя", preferredStyle: .alert)
            
            // Создаем кнопку для UIAlertController
            let action = UIAlertAction (title: "ОК", style: .cancel) { (action) in
                self.loginField.text = ""
                self.passwordField.text = ""
            }
            alert.addAction(action)
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    // Создаем метод который будет маркером для перехода назад (Unwind Segue)
    @IBAction func backToLogin (unwindSegue: UIStoryboardSegue) {
        //     При выходе очищам логин и пароль
        loginField.text = ""
        passwordField.text = ""
    }
}

