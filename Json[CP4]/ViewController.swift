
import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var myTable: UITableView!
    var dicA: [String:[String]]!
    var keys: [String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "센텀_맛집"
        
        let pathA = Bundle.main.path(forResource: "MyColors", ofType: "json")
        let dataA = try! NSData(contentsOfFile: pathA!) as Data
        self.dicA = try! JSONSerialization.jsonObject(with: dataA, options: JSONSerialization.ReadingOptions.mutableContainers) as! [String:[String]]
        keys = dicA.keys.sorted()
        self.myTable.delegate = self
        self.myTable.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {         //행을 클릭했을때 실행되는 함수이다.
        let secVC: JiWonVC = JiWonVC()
        secVC.dicA = dicA
        secVC.row = indexPath.row
        secVC.keys = keys
        self.navigationController?.pushViewController(secVC, animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dicA.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.myTable.dequeueReusableCell(withIdentifier: "cellA", for: indexPath)
        cell.textLabel?.text = self.keys[indexPath.row]
        return cell
    }
    
}
