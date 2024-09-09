
import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    var süperkahramanisimleri = [String]()
    var süperkahramangörselleri = [String]()
    var secilenIsim = ""
    var secilenGörsel = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        süperkahramanisimleri.append("Thor")
        süperkahramanisimleri.append("Hulk")
        süperkahramanisimleri.append("Iron Man")
        süperkahramanisimleri.append("Doctor Strange")
        süperkahramanisimleri.append("Captain America")
        
        süperkahramangörselleri.append("thor")
        süperkahramangörselleri.append("hulk")
        süperkahramangörselleri.append("ironman")
        süperkahramangörselleri.append("doctor")
        süperkahramangörselleri.append("captainamerica")
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return süperkahramanisimleri.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = süperkahramanisimleri[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        secilenIsim = süperkahramanisimleri[indexPath.row]
        secilenGörsel = süperkahramangörselleri[indexPath.row]
        performSegue(withIdentifier: "toVcController", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue .identifier == "toVcController"{
            let destinationVC = segue.destination as! VcViewController
            destinationVC.secilenKahramanIsmi = secilenIsim
            destinationVC.secilenKahramanGorselIsmi = secilenGörsel
        }
    }
    
    

}

