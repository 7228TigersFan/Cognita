

import UIKit
import MapKit
import UserNotifications

class LateBusController: UIViewController {
    
    // MARK: - Properties
    
    var username: String?
    var button = dropDownBtn()
    var window: UIWindow?
    var mapView: MKMapView?
    var welcomeLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 28)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.alpha = 0
        return label
    }()
    var welcomeLabel2: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 28)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.alpha = 0
        return label
    }()
    let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("APPLY", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = .gray
        
        button.layer.cornerRadius = 5
        
        let content = UNMutableNotificationContent()
        content.title = "Hurry!"
        content.subtitle = "Lets Go, Lets Go "
        content.body = "The late bus will depart in 5 minutes!"
        content.badge = 1
        
        var date = DateComponents()
        date.hour = 21
        date.minute = 22
        let trigger = UNCalendarNotificationTrigger(dateMatching: date, repeats: true)
        
        let request = UNNotificationRequest(identifier: "timer done", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
        return button
        
        
    }()
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        button = dropDownBtn.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        button.setTitle("Destination Points", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        //Add Button to the View Controller
        self.view.addSubview(button)
        
        //button Constraints
        button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 200 ).isActive = true
        button.widthAnchor.constraint(equalToConstant: 200).isActive = true
        button.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        //Set the drop down menu's options
        button.dropView.dropDownOptions = ["Üsküdar", "Kadıköy", "Beşiktaş", "Levent", "Bebek", "Caddebostan"]
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.view.backgroundColor = UIColor.white
        
        self.mapView = MKMapView(frame: CGRect(x: 0, y: 20, width: (self.window?.frame.width)!, height: 400))
        self.view.addSubview(self.mapView!)
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge], completionHandler: {didAllow, error in
        })
        
    }
    
    // MARK: - Selectors
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @objc func handleDismiss() {
        dismiss(animated: true, completion: nil)
    }
    
    // MARK: - Helper Functions
    
    func configureUI() {
        let backgroundColor = CAGradientLayer()
        backgroundColor.colors = [UIColor.purple.cgColor,UIColor.googleRed().cgColor]
        backgroundColor.frame = view.frame
        view.layer.addSublayer(backgroundColor)
        
        navigationController?.navigationBar.barTintColor = .googleRed()
        navigationController?.navigationBar.prefersLargeTitles = false
        navigationItem.title = "Late Bus"
        navigationController?.navigationBar.barStyle = .black
        self.welcomeLabel.text = "Please Choose Your Desired"
        self.welcomeLabel2.text = "Destination Point"
        UIView.animate(withDuration: 0.5, animations: {
            self.welcomeLabel.alpha = 1
            self.welcomeLabel2.alpha = 1
            
        })
            
        view.addSubview(welcomeLabel)
            
        welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        welcomeLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 120).isActive = true
        
        view.addSubview(welcomeLabel2)
        welcomeLabel2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        welcomeLabel2.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 150).isActive = true
        
        view.addSubview(loginButton)
        loginButton.anchor(top: welcomeLabel.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 100, paddingLeft: 32, paddingBottom: 0, paddingRight: 32, width: 0, height: 50)
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "baseline_clear_white_36pt_3x").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleDismiss))
    }
    
}
