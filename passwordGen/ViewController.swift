import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var textField: UILabel!
    @IBOutlet weak var lettersCount: UILabel!
    @IBOutlet weak var switcherChar: UISwitch!
    @IBOutlet weak var switcherNums: UISwitch!
    @IBOutlet weak var switherSym: UISwitch!
    
    @IBAction func sliderMoved(_ sender: Any) {
        lettersCount.text = String(Int(slider.value))
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        passGenerate()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lettersCount.text = String(Int(slider.value))
    }

    func passGenerate() {
        var result = ""{
            didSet {
                if result.count > Int(slider.value) {result = oldValue }
            }
        }
        let letters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n","o","p","q","r","s","t","u","v", "w", "x", "y", "z", "A", "B", "C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
        let symbols = ["!", "@", "#", "$", "%", "^", "&", "*", "(", ")", "_", "+", "=", "]", "["]
        let numbers = ["0","1", "2", "3", "4", "5", "6", "7", "8", "9"]
        
        for _ in 0..<Int(slider.value) {
            if switcherNums.isOn {
                result += numbers.randomElement()!
            }
            if switherSym.isOn{
                result += symbols.randomElement()!
            }
            if switcherChar.isOn{
                result += letters.randomElement()!
            }
        }
        textField.text = result
    }
}
