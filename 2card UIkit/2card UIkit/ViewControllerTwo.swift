//
//  ViewControllerTwo.swift
//  2card UIkit
//
//  Created by dunice on 30.09.2022.
//

import UIKit

class ViewControllerTwo: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var profileButton: UIBarButtonItem!
    
    @IBOutlet weak var segmentControllerNews: UISegmentedControl!
    
    // MARK: - Создаём вывод для канбан сегмента
   
    @IBOutlet weak var tableView: UITableView!
    
    var nameIdentifier:String = "TaskUpdates"
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        switch segmentControllerNews.selectedSegmentIndex{
        case 0:
            return 3
        case 1:
            return 5
        case 2:
            return 0
        default:
            return 0
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        switch segmentControllerNews.selectedSegmentIndex{
        case 0:
            nameIdentifier = "TaskUpdates"
        case 1:
            nameIdentifier = "KanBanUpdates"
        case 2:
            nameIdentifier = ""
        default:
            nameIdentifier = ""
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: nameIdentifier, for: indexPath)
        return cell
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let button = UIButton(type: .custom)
                //set image for button
                button.setImage(UIImage(named: "fhotoProf"), for: .normal)
        button.addTarget(self, action: #selector(profile), for: .touchUpInside)
                
        let barButton = UIBarButtonItem(customView: button)
                //assign button to navigationbar
                self.navigationItem.leftBarButtonItem = barButton
    }
    
    //MARK: - Actions
    
    
    @IBAction func segmentControllerAction(_ sender: Any) {
        tableView.reloadData()
    }
    
    
    @IBAction func profile(_ sender: Any) {
        let profileVC = storyboard?.instantiateViewController(withIdentifier: "profileVC")
        profileVC?.modalPresentationStyle = .fullScreen
        profileVC?.modalTransitionStyle = .coverVertical
        present(profileVC!, animated: true)
    }
    
    
    
}
