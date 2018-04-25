

import UIKit
import AVFoundation

class ViewController: UIViewController , AVAudioPlayerDelegate{
    
    var objPlayer: AVAudioPlayer!
    var myArrayOfNotes =
        ["note1","note2","note3","note4","note5","note6","note7"]


    override func viewDidLoad() {
        super.viewDidLoad()
    }


//get sender Tag
    @IBAction func notePressed(_ sender: UIButton) {
        
        let tagValue = sender.tag
        playSound(item: tagValue)
    }
    
//playing notes
    func playSound (item: Int) {
        let url = Bundle.main.url(forResource: myArrayOfNotes[item], withExtension: "wav")
        print(myArrayOfNotes[item])
        
        do {
            objPlayer = try AVAudioPlayer(contentsOf: url!)
        }catch {print(error)
            
        }
        objPlayer.play()
    }

}

