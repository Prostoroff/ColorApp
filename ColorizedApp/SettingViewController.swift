
import UIKit

class SettingViewController: UIViewController {
    @IBOutlet var colorView: UIView!
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var closeButton: UIButton!
    
    weak var delegate: Delegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: View
        colorView.layer.cornerRadius = 10
        
        // MARK: Slider
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
        
        
        // MARK: Button
        closeButton.setTitle("Применить", for: .normal)
    }
    
    override func viewWillLayoutSubviews() {
        
        // MARK: Label
        redLabel.text = String(Int(redSlider.value))
        greenLabel.text = String(Int(greenSlider.value))
        blueLabel.text = String(Int(blueSlider.value))
        
        setColor()
    }
    
    @IBAction func redSliderAction(_ sender: UISlider) {
        redLabel.text = String(Int(redSlider.value))
    }
    
    @IBAction func greenSliderAction(_ sender: UISlider) {
        greenLabel.text = String(Int(greenSlider.value))
    }
    
    @IBAction func blueSliderAction(_ sender: UISlider) {
        blueLabel.text = String(Int(blueSlider.value))
    }
    
    func setColor() {
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value) / 255,
                                            green: CGFloat(greenSlider.value) / 255,
                                            blue: CGFloat(blueSlider.value) / 255,
                                            alpha: 1)
    }

    @IBAction func closeButtonAction() {
        delegate?.update(color: colorView.backgroundColor!)
        dismiss(animated: true)
    }
    
}

