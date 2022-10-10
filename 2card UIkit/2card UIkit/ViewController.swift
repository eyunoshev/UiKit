//
//  ViewController.swift
//  2card UIkit
//
//  Created by dunice on 29.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - Аутлеты
    
    @IBOutlet weak var textFromButtonRegister: UIButton!
    
    //MARK: - Основная функция для отображения
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //MARK: - Экшены
    
    @IBAction func signUpButton(_ sender: Any) {
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "secondView")
        secondVC?.modalPresentationStyle = .fullScreen
        secondVC?.modalTransitionStyle = .coverVertical
        present(secondVC!, animated: true)
    }
    @IBAction func logInButton(_ sender: Any) {
        let menuVC = storyboard?.instantiateViewController(withIdentifier: "menuVC")
        menuVC?.modalPresentationStyle = .fullScreen
        menuVC?.modalTransitionStyle = .coverVertical
        present(menuVC!, animated: true)
    }

    @IBAction func forgotPasswordButton(_ sender: Any) {
        self.alert(title: "Восстановление пароля", message: "Введите email, который привязан к вашему аккаунту", style: .alert)
    }
    
    
    @IBAction func textButton(_ sender: Any) {
        changeText()
    }
    
    
    //MARK: - Алерты
    
    func alert (title: String, message: String, style: UIAlertController.Style)
    {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        let action = UIAlertAction(title: "Ок", style: .default) { (action) in
            let text = alertController.textFields?.first
            self.alertForgotPassword(title: "Инструкция по восстановлению была отправлена на почту:", message: (text?.text) ?? "Ошибка! Поле email не заполнено!", style: .alert)
        }
        
        alertController.addTextField(configurationHandler: nil)
        alertController.addAction(action)
        self.present(alertController, animated: true)

    }
    
    func alertForgotPassword(title: String, message: String, style: UIAlertController.Style)
    {
        let alertController = UIAlertController(title: title , message: message, preferredStyle: style )
        let action = UIAlertAction(title: "Ок", style: .default) { (action) in
    }
    
    alertController.addAction(action)
    self.present(alertController, animated: true)
    }
    
    
    func changeText(){
        let myString = textFromButtonRegister.titleLabel?.text ?? ""
        //print(myString)
        let blueAttributes = [NSAttributedString.Key.foregroundColor: UIColor.blue]
        let myAttributedText = NSMutableAttributedString(string: myString)
        myAttributedText.addAttributes(blueAttributes, range: NSRange(location: 0, length: 10))
       // print(myAttributedText)
        textFromButtonRegister.titleLabel?.attributedText = myAttributedText
        //print(textFromButtonRegister.titleLabel?.attributedText)
    }
     
}

