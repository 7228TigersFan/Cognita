

import UIKit

class ClubController: UIViewController {
    
    // MARK: - Properties
    
    var username: String?
    var button = dropDownBtn()
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
    var welcomeLabel4: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.alpha = 0
        return label
    }()
    var welcomeLabel5: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.alpha = 0
        return label
    }()
    var welcomeLabel6: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.alpha = 0
        return label
    }()
    var welcomeLabel7: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.alpha = 0
        return label
    }()
    var welcomeLabel8: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.alpha = 0
        return label
    }()
    var welcomeLabel9: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 18)
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
        return button
    }()
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        
        button = dropDownBtn.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        button.setTitle("CLUBS", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        //Add Button to the View Controller
        self.view.addSubview(button)
        
        //button Constraints
        button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        button.widthAnchor.constraint(equalToConstant: 200).isActive = true
        button.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        //Set the drop down menu's options
        button.dropView.dropDownOptions = ["Robotics Club", "Cooking Club", "Mun Club", "Bolywood Club", "Maker Club", "Cyber Security", "Photography Club", "Archery Club", "Fight Kulüp"]
    }
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
        navigationItem.title = "Club Selection"
        navigationController?.navigationBar.barStyle = .black
        self.welcomeLabel.text = "Please Choose Your Desired Club"
        self.welcomeLabel2.text = "High school clubs and organizations,"
        self.welcomeLabel3.text = "are student-based school organizations,"
        self.welcomeLabel4.text = "consisting of administration-approved"
        self.welcomeLabel5.text = " organizations functioning with myriad "
        self.welcomeLabel6.text = "tasks, varying on the specific purpose of"
        self.welcomeLabel7.text = "each respective club. Clubs composed of "
        self.welcomeLabel8.text = "students, with adults as advising figures to"
        self.welcomeLabel9.text = "maintain the functionality of clubs."
        UIView.animate(withDuration: 0.5, animations: {
            self.welcomeLabel.alpha = 1
            self.welcomeLabel2.alpha = 1
            self.welcomeLabel3.alpha = 1
            self.welcomeLabel4.alpha = 1
            self.welcomeLabel5.alpha = 1
            self.welcomeLabel6.alpha = 1
            self.welcomeLabel7.alpha = 1
            self.welcomeLabel8.alpha = 1
            self.welcomeLabel9.alpha = 1
        })
        view.addSubview(welcomeLabel)
        welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        welcomeLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -290).isActive = true
        view.addSubview(welcomeLabel2)
        welcomeLabel2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        welcomeLabel2.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -240).isActive = true
        view.addSubview(welcomeLabel3)
        welcomeLabel3.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        welcomeLabel3.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -220).isActive = true
        view.addSubview(welcomeLabel4)
        welcomeLabel4.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        welcomeLabel4.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -200).isActive = true
        view.addSubview(welcomeLabel5)
        welcomeLabel5.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        welcomeLabel5.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -180).isActive = true
        view.addSubview(welcomeLabel6)
        welcomeLabel6.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        welcomeLabel6.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -160).isActive = true
        view.addSubview(welcomeLabel7)
        welcomeLabel7.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        welcomeLabel7.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -140).isActive = true
        view.addSubview(welcomeLabel8)
        welcomeLabel8.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        welcomeLabel8.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -120).isActive = true
        view.addSubview(welcomeLabel9)
        welcomeLabel9.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        welcomeLabel9.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100).isActive = true
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "baseline_clear_white_36pt_3x").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleDismiss))
        view.addSubview(loginButton)
        loginButton.anchor(top: welcomeLabel9.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 400, paddingLeft: 32, paddingBottom: 0, paddingRight: 32, width: 0, height: 50)
    }
}
protocol dropDownProtocol {
    func dropDownPressed(string : String)
}

class dropDownBtn: UIButton, dropDownProtocol {
    
    func dropDownPressed(string: String) {
        self.setTitle(string, for: .normal)
        self.dismissDropDown()
    }
    
    var dropView = dropDownView()
    
    var height = NSLayoutConstraint()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.darkGray
        
        dropView = dropDownView.init(frame: CGRect.init(x: 0, y: 0, width: 0, height: 0))
        dropView.delegate = self
        dropView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    override func didMoveToSuperview() {
        self.superview?.addSubview(dropView)
        self.superview?.bringSubviewToFront(dropView)
        dropView.topAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        dropView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        dropView.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        height = dropView.heightAnchor.constraint(equalToConstant: 0)
    }
    
    var isOpen = false
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if isOpen == false {
            
            isOpen = true
            
            NSLayoutConstraint.deactivate([self.height])
            
            if self.dropView.tableView.contentSize.height > 150 {
                self.height.constant = 150
            } else {
                self.height.constant = self.dropView.tableView.contentSize.height
            }
            
            
            NSLayoutConstraint.activate([self.height])
            
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseInOut, animations: {
                self.dropView.layoutIfNeeded()
                self.dropView.center.y += self.dropView.frame.height / 2
            }, completion: nil)
            
        } else {
            isOpen = false
            
            NSLayoutConstraint.deactivate([self.height])
            self.height.constant = 0
            NSLayoutConstraint.activate([self.height])
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseInOut, animations: {
                self.dropView.center.y -= self.dropView.frame.height / 2
                self.dropView.layoutIfNeeded()
            }, completion: nil)
            
        }
    }
    
    func dismissDropDown() {
        isOpen = false
        NSLayoutConstraint.deactivate([self.height])
        self.height.constant = 0
        NSLayoutConstraint.activate([self.height])
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseInOut, animations: {
            self.dropView.center.y -= self.dropView.frame.height / 2
            self.dropView.layoutIfNeeded()
        }, completion: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class dropDownView: UIView, UITableViewDelegate, UITableViewDataSource  {
    
    var dropDownOptions = [String]()
    
    var tableView = UITableView()
    
    var delegate : dropDownProtocol!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        tableView.backgroundColor = UIColor.darkGray
        self.backgroundColor = UIColor.darkGray
        
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(tableView)
        
        tableView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dropDownOptions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        cell.textLabel?.text = dropDownOptions[indexPath.row]
        cell.backgroundColor = UIColor.darkGray
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.delegate.dropDownPressed(string: dropDownOptions[indexPath.row])
        self.tableView.deselectRow(at: indexPath, animated: true)
    }
    
}




















