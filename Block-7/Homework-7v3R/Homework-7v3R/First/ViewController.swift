
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var textField: UITextField!
    
    var ukraineCities = ["Kyiv", "Kharkiv", "Odesa", "Dnipro", "Donetsk", "Zaporizhzhia", "Lviv", "Kryvyi Rih", "Mykolaiv", "Mariupol", "Luhansk", "Sevastopol", "Vinnytsia", "Simferopol", "Kherson", "Poltava", "Chernihiv", "Cherkasy", "Khmelnytskyi", "Zhytomyr", "Sumy", "Rivne", "Ivano-Frankivsk", "Ternopil", "Lutsk"]
    
    var ukraineCityAreas = [839.0, 350.0, 236.9, 405.0, 358.0, 334.0, 182.0, 410.0, 260.0, 244.0, 286.0, 864.0, 113.0, 107.0, 135.0, 103.0, 79.0, 69.0, 90.0, 65.0, 95.0, 63.0, 83.0, 72.0, 42.0]


    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        textField.delegate = self
        
        
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        ukraineCities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SimpleTableViewCell") as? SimpleTableViewCell else {
            return UITableViewCell()
        }
        cell.topLable.text = ukraineCities[indexPath.row]
        cell.bottomLable.text = String(ukraineCityAreas[indexPath.row])
        return cell
    }
    
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let viewController = storyboard.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController else {
            return
        }
        viewController.cityName = ukraineCities[indexPath.row]
        viewController.cityArea = String(ukraineCityAreas[indexPath.row])
        viewController.cityIndex = String(indexPath.row)
        
        navigationController?.pushViewController(viewController, animated: true)
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        addNewCity()
        
        textField.resignFirstResponder()
        return true
    }
    
    private func addNewCity() {
        guard let newCityName = textField.text, !newCityName.isEmpty else { return }
        
        let randomArea = Double.random(in: 1...300)
        ukraineCities.append(newCityName)
        ukraineCityAreas.append(randomArea)
        
        tableView.reloadData()
        
        textField.text = "" // Clear text field
        
    }
}
