
import UIKit

class ViewControllerThree: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func nextPageSignIn(_ sender: Any) {
        let thirdView = storyboard?.instantiateViewController(withIdentifier: "thirdView")
        thirdView?.modalPresentationStyle = .fullScreen
        thirdView?.modalTransitionStyle = .coverVertical
        present(thirdView!, animated: true)
    }
    
    @IBAction func returnLogInView(_ sender: Any) {
        let firstView = storyboard?.instantiateViewController(withIdentifier: "firstView")
        firstView?.modalPresentationStyle = .fullScreen
        firstView?.modalTransitionStyle = .coverVertical
        present(firstView!, animated: true)
    }
    
    
    
}
