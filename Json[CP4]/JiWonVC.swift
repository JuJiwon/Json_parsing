
import UIKit

class JiWonVC: UIViewController {

    public var dicA: [String:[String]]!
    public var row = 0
    public var keys: [String]!
    var labelA: UILabel!
    var labelB: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        self.title = "\(keys[row])"
        
        self.labelA = UILabel(frame: CGRect(x: 20, y: 100, width: 300, height: 25))
        self.labelB = UILabel(frame: CGRect(x: 20, y: 200, width: 300, height: 25))
        self.labelA.text = "type:\(dicA[keys[row]]![0])"
        self.labelB.text = "place:\(dicA[keys[row]]![1])"
        
        self.view.addSubview(self.labelA)
        self.view.addSubview(self.labelB)
        
    }
    
}

/*
 "뜻:\(arrayA[a][1])"
 "예문:\(arrayA[a][2])"
 "ㄴ>해석:\(arrayA[a][3])"
 */
