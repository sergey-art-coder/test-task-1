//
//  ViewController.swift
//  TestTask-1
//
//  Created by Сергей Ляшенко on 12.10.2021.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    // Создаем метод который будет маркером для перехода назад (Unwind Segue)
    @IBAction func backToLogin (unwindSegue: UIStoryboardSegue) { }

}

