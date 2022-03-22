
import UIKit

class ViewController: UIViewController {
    enum Slider {
        case red, green, blue
    }
    @IBOutlet var colorView: UIView!
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var closeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: View
        colorView.layer.cornerRadius = 10
        
        // MARK: Slider
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
        
        redSlider.minimumValue = 0
        redSlider.maximumValue = 255
        redSlider.value = 0
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 255
        greenSlider.value = 100
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 255
        blueSlider.value = 255
        
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
        let red = CGFloat(Int(redLabel.text ?? "0")!)
        let green = CGFloat(Int(greenLabel.text ?? "0")!)
        let blue = CGFloat(Int(blueLabel.text ?? "0")!)
        
        colorView.backgroundColor = UIColor(red: red / 255,
                                            green: green / 255,
                                            blue: blue / 255,
                                            alpha: 1)
    }

    @IBAction func closeButtonAction() {
        dismiss(animated: true)
    }
    
}

