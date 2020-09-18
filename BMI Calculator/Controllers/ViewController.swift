
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let heightText = String(format: "%.2f", sender.value)
        heightLabel.text = "\(heightText)m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weightText = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weightText)Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let heightCalc = heightSlider.value
        let weightCalc = weightSlider.value
        let bmi = weightCalc / (heightCalc * heightCalc)
        print(bmi)
    }
}

