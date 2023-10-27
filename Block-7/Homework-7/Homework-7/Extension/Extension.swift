

import UIKit

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrayOfCity.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = arrayOfCity[indexPath.row]
        return cell
    }
    
    
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        viewController.cityName = arrayOfCity[indexPath.row]
        viewController.number = indexPath.row
        navigationController?.pushViewController(viewController, animated: true)
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let newCity = textField.text, !newCity.isEmpty {
            arrayOfCity.append(newCity) // Додаємо нове місто
            tableView.reloadData() // Оновлюємо tableView
            textField.text = "" // Очищаємо поле вводу
        }
        textField.resignFirstResponder() // Сховати клавіатуру
        return true
    }
}
