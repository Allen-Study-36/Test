import UIKit
import AudioToolbox

class ViewController: UIViewController {
    
    @IBOutlet weak var serviceName: UILabel!
    
    @IBOutlet weak var timeTicker: UISlider!
    
    @IBOutlet weak var timeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetMyTimer()
    }
    var number = 0
    var timer: Timer?

    func resetMyTimer(){
        timeLabel.text = "초를 선택하세요"
        timeTicker.value = 0.5
    }
  
    @IBAction func tickerOnChanged(_ sender: UISlider){
        let seconds = Int(sender.value * 60)
        timeLabel.text = "\(seconds)초"
        number = seconds
    }
    
    @IBAction func startOnClick(_ sender: UIButton){
        timer?.invalidate()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTimerPerSec), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimerPerSec() {
        if number > 0 {
            number -= 1
            timeTicker.value = Float(number) / Float(60)
            timeLabel.text = "\(number) 초"
        } else {
            resetMyTimer()
            number = 0
            timer?.invalidate()
            AudioServicesPlaySystemSound(SystemSoundID(1000))
        }
    }
    
    @IBAction func resetOnClick(_ sender: UIButton){
        timer?.invalidate()
        resetMyTimer()
        number = 0
    }
}
