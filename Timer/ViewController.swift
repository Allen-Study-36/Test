import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var serviceName: UILabel!
    
    @IBOutlet weak var timeTicker: UISlider!
    
    @IBOutlet weak var timeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    var number = 0
  
    @IBAction func tickerOnChanged(_sender: UISlider){
        let seconds = Int(_sender.value * 60)
        timeLabel.text = "\(seconds)초"
        number = seconds
    }
}
