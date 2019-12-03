

import UIKit

class HomePageController: UIViewController {
    
    // MARK: - Properties
    
    var username: String?
    
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        
        
    }
    
    // MARK: - Selectors
    
    @objc func handleDismiss() {
        dismiss(animated: true, completion: nil)
    }
    
    // MARK: - Helper Functions
    
    func configureUI() {
        view.backgroundColor = .white
        
        navigationController?.navigationBar.barTintColor = .googleRed()
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Welcome"
        navigationController?.navigationBar.barStyle = .black
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "baseline_clear_white_36pt_3x").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleDismiss))
    }
    
}
