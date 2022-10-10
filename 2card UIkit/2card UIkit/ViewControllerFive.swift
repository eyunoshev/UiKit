//
//  ViewControllerFive.swift
//  2card UIkit
//
//  Created by dunice on 07.10.2022.
//

import UIKit

class ViewControllerFive: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var a:Int = 0
    
    @IBOutlet weak var imsTableView: UITableView!
    
    @IBOutlet weak var pilotBtn: UIButton!
    
    @IBOutlet weak var fixBagxBtn: UIButton!
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 225
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return a
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "imsViewCell", for: indexPath)
        return cell
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imsTableView.delegate = self
        imsTableView.dataSource = self
        
        imsTableView.tableFooterView = UIView()
        
        let button = UIButton(type: .custom)
                //set image for button
                button.setImage(UIImage(named: "fhotoProf"), for: .normal)
        button.addTarget(self, action: #selector(profileBtn), for: .touchUpInside)
                
        let barButton = UIBarButtonItem(customView: button)
                //assign button to navigationbar
                self.navigationItem.leftBarButtonItem = barButton
    }
    
    
    
    
    @IBAction func imsButton(_ sender: Any) {
        if a > 0 {
            a -= 1
            imsTableView.reloadData()
        }
        else {
            a += 1
            imsTableView.reloadData()
        }
        if a > 0 {
            var frame = pilotBtn.frame
            frame.origin = CGPoint(x: 16, y: 525)
            pilotBtn.frame = frame

            var frame1 = fixBagxBtn.frame
            frame1.origin = CGPoint(x: 16, y: 590)
            fixBagxBtn.frame = frame1

        }
        else {
            var frame = pilotBtn.frame
            frame.origin = CGPoint(x: 16, y: 300)
            pilotBtn.frame = frame

            var frame1 = fixBagxBtn.frame
            frame1.origin = CGPoint(x: 16, y: 364)
            fixBagxBtn.frame = frame1
        }
    }
    
    
    @IBAction func profileBtn(_ sender: Any) {
        let profileVC = storyboard?.instantiateViewController(withIdentifier: "profileVC")
        profileVC?.modalPresentationStyle = .fullScreen
        profileVC?.modalTransitionStyle = .coverVertical
        present(profileVC!, animated: true)
    }
    
    
    
    
}
