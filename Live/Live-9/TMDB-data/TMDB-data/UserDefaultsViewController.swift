

import UIKit

class UserDefaultsViewController: UIViewController {
    
    @IBOutlet var views: [UIView]!
    
    @IBOutlet weak var centralSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let isOn = UserDefaults.standard.bool(forKey: "isRoundedViews")
        centralSwitch.setOn(isOn, animated: true)
        setupColoredViews()
     
    }
    
    @IBAction func switchPressed(_ sender: UISwitch) {
        
        UserDefaults.standard.setValue(sender.isOn, forKey: "isRoundedViews")
        UserDefaults.standard.synchronize()
        setupColoredViews()
    }
    
    private func setupColoredViews() {
        let isRoundedViews = UserDefaults.standard.bool(forKey: "isRoundedViews")
        let cornerRadius = isRoundedViews ? 15 : 0
        
        views.map { $0.layer.cornerRadius = CGFloat(cornerRadius) }
    }
}
