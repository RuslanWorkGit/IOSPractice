

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var listOfProduct: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        retrieveData()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        tableView.reloadData()
        
    }
    
    @IBAction func buttonAdd(_ sender: Any) {
        displayAlert()
    }
    
    func displayAlert() {
        var dialogMessage = UIAlertController(title: "Confirm", message: "I am an alert message you cannot dissmiss", preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "OK", style: .default) { action in
            print("Ok button tapped")
            //self.deleteRecord()
            //print("The product \(dialogMessage.textFields?.first?.text ?? "") add to list")
            self.listOfProduct.append(dialogMessage.textFields?.first?.text ?? "WRONG")
            self.tableView.reloadData()
            self.saveData()
            
        }
        
        let cancel = UIAlertAction(title: "Cancel", style: .default) { action in
            print("Cancel button tapped")
        }
        
        dialogMessage.addTextField { textField in
            textField.placeholder = "Add any shop product"
        }
        
        dialogMessage.addAction(ok)
        dialogMessage.addAction(cancel)
        self.present(dialogMessage, animated: true, completion: nil)
        
    }
    
    func saveData() {
        UserDefaults.standard.set(listOfProduct, forKey: "listOfProduct")
    }
    
    func retrieveData() {
        if let savedList = UserDefaults.standard.stringArray(forKey: "listOfProduct") {
            listOfProduct = savedList
        }
    }
    
    func deleteRecord(record: String) {
        if let index = listOfProduct.firstIndex(of: record) {
            listOfProduct.remove(at: index)
            saveData()
            tableView.reloadData()
        }
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        listOfProduct.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        cell.textLabel?.text = listOfProduct[indexPath.row]
        
        return cell
    }
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .normal, title: "Delete") {[weak self] _, _, completion in
            guard let product = self?.listOfProduct[indexPath.row] else {
                return
            }
            self?.deleteRecord(record: product)
            completion(true)
        }
        
        deleteAction.backgroundColor = .systemRed
        return UISwipeActionsConfiguration(actions: [deleteAction])
    }
}

