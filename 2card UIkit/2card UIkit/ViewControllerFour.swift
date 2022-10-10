import UIKit

class ViewControllerFour: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func comleteSignUpAndReturn(_ sender: Any) {
        let firstView = storyboard?.instantiateViewController(withIdentifier: "firstView")
        firstView?.modalPresentationStyle = .fullScreen
        firstView?.modalTransitionStyle = .coverVertical
        present(firstView!, animated: true)
    }
    
    @IBAction func returnLogInView(_ sender: Any) {
        let firstView = storyboard?.instantiateViewController(withIdentifier: "firstView")
        firstView?.modalPresentationStyle = .fullScreen
        firstView?.modalTransitionStyle = .coverVertical
        present(firstView!, animated: true)
    }
    
}
