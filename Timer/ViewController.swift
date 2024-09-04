import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var serviceName: UILabel!
    
    @IBOutlet weak var timeTicker: UISlider!
    
    @IBOutlet weak var timeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetMyTimer()
    }
    
    func resetMyTimer(){
        timeLabel.text = "초를 선택하세요"
        timeTicker.value = 0.5
    }
    
    var number = 0
  
    @IBAction func tickerOnChanged(_ sender: UISlider){
        let seconds = Int(sender.value * 60)
        timeLabel.text = "\(seconds)초"
        number = seconds
    }
    
    @IBAction func startOnClick(_ sender: UIButton){
        
    }
    
    @IBAction func resetOnClick(_ sender: UIButton){
        
    }
}
