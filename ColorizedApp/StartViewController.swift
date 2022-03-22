
import UIKit

protocol Delegate: AnyObject {
    func update(color: UIColor)
}

class StartViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewC = segue.destination as? ViewController
        viewC?.delegate = self
    }

}

extension StartViewController: Delegate {
    func update(color: UIColor) {
        view.backgroundColor = color
    }
}
