

import UIKit
import Firebase

class ProfileController: UIViewController {
    
    // MARK: - Properties
    
    var username: String?
    
    // MARK: - Init
    let logoImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        iv.image = #imageLiteral(resourceName: "user-avatar-contact-portfolio-personal-portrait-profile-7-5712")
        return iv
    }()
    
    var welcomeLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.alpha = 0
        return label
    }()
    var welcomeLabel2: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.alpha = 0
        return label
    }()
    var welcomeLabel3: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.alpha = 0
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        authenticateUserAndConfigureView()
        configureUI()
        
    }
    
    // MARK: - Selectors
    
    @objc func handleDismiss() {
        dismiss(animated: true, completion: nil)
    }
    
    // MARK: - Helper Functions
    func authenticateUserAndConfigureView() {
        if Auth.auth().currentUser == nil {
            DispatchQueue.main.async {
                let navController = UINavigationController(rootViewController: LoginController())
                navController.navigationBar.barStyle = .black
                self.present(navController, animated: true, completion: nil)
            }
        } else {
            
            configureUI()
            
            loadUserData()
            
        }
    }
    func loadUserData() {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        Database.database().reference().child("users").child(uid).child("username").observeSingleEvent(of: .value) { (snapshot) in
            guard let username = snapshot.value as? String else { return }
            self.welcomeLabel.text = "USERNAME: \(username)"
            UIView.animate(withDuration: 0.5, animations: {
                self.welcomeLabel.alpha = 1

            })
            
                
            }
        Database.database().reference().child("users").child(uid).child("email").observeSingleEvent(of: .value) { (snapshot) in
            guard let email = snapshot.value as? String else { return }
            self.welcomeLabel2.text = "Email: \(email)"
            UIView.animate(withDuration: 0.5, animations: {
                self.welcomeLabel2.alpha = 1
                
            })
            
            
        }
        Database.database().reference().child("users").child(uid).child("password").observeSingleEvent(of: .value) { (snapshot) in
            guard let password = snapshot.value as? String else { return }
            self.welcomeLabel2.text = "Email: \(password)"
            UIView.animate(withDuration: 0.5, animations: {
                self.welcomeLabel2.alpha = 1
                
            })
            
            
        }

            
            
        }
        
    
    func configureUI() {
        
        let backgroundColor = CAGradientLayer()
        backgroundColor.colors = [UIColor.cyan.cgColor,UIColor.googleRed().cgColor]
        backgroundColor.frame = view.frame
        view.layer.addSublayer(backgroundColor)
        navigationController?.navigationBar.barTintColor = .googleRed()
        navigationController?.navigationBar.prefersLargeTitles = false
        navigationItem.title = "Profile"
        navigationController?.navigationBar.barStyle = .black
        view.addSubview(welcomeLabel)
        welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        welcomeLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        view.addSubview(welcomeLabel2)
        welcomeLabel2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        welcomeLabel2.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 20).isActive = true
        view.addSubview(welcomeLabel3)
        welcomeLabel3.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        welcomeLabel3.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 40).isActive = true
        view.addSubview(logoImageView)
        logoImageView.anchor(top: view.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 100, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 150, height: 150)
        logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "baseline_clear_white_36pt_3x").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleDismiss))
    }
    
}
