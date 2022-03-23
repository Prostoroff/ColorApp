
import UIKit

protocol Delegate: AnyObject {
    func update(color: UIColor)
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingVC = segue.destination as? SettingViewController else { return }
        settingVC.delegate = self
    }
    
    @IBAction func buttonAction() {
    
    }
}

extension ViewController: Delegate {
    func update(color: UIColor) {
        view.backgroundColor = color
    }
}
