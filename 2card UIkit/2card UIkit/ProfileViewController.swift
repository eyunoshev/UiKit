//
//  ProfileViewController.swift
//  2card UIkit
//
//  Created by dunice on 07.10.2022.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //MARK: - Actions
    
    @IBAction func returnMenu(_ sender: Any) {
        let menuVC = storyboard?.instantiateViewController(withIdentifier: "menuVC")
        menuVC?.modalPresentationStyle = .fullScreen
        menuVC?.modalTransitionStyle = .coverVertical
        present(menuVC!, animated: true)
    }
    
    @IBAction func logOut(_ sender: Any) {
        let logInVC = storyboard?.instantiateViewController(withIdentifier: "firstView")
        logInVC?.modalPresentationStyle = .fullScreen
        logInVC?.modalTransitionStyle = .coverVertical
        present(logInVC!, animated: true)
    }
    
}
