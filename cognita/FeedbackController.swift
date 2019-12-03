

import UIKit

class FeedbackController: UIViewController {
    
    // MARK: - Properties
    
    var username: String?
    let logoImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        iv.image = #imageLiteral(resourceName: "logo_transparan (1)")
        return iv
    }()
    // MARK: - Init
    lazy var name: UIView = {
        let view = UIView()
        return view.textContainerView(view: view, #imageLiteral(resourceName: "ic_person_outline_white_2x"), nameTextField)
    }()
    
    lazy var classroom: UIView = {
        let view = UIView()
        return view.textContainerView(view: view, #imageLiteral(resourceName: "images (2)"), classroomTextField)
    }()
    lazy var schoolnumber: UIView = {
        let view = UIView()
        return view.textContainerView(view: view, #imageLiteral(resourceName: "hashtag_16731"), schoolnumberTextField)
    }()
    lazy var subject: UIView = {
        let view = UIView()
        return view.textContainerView(view: view, #imageLiteral(resourceName: "22324b56ab4956479efc2f4ecaa61b20"), subjectTextField)
    }()
    
    lazy var nameTextField: UITextField = {
        let tf = UITextField()
        return tf.textField(withPlaceolder: "Name and Surname", isSecureTextEntry: false)
    }()
    
    lazy var classroomTextField: UITextField = {
        let tf = UITextField()
        return tf.textField(withPlaceolder: "Class", isSecureTextEntry: false)
    }()
    lazy var schoolnumberTextField: UITextField = {
        let tf = UITextField()
        return tf.textField(withPlaceolder: "School Number", isSecureTextEntry: false)
    }()
    
    lazy var subjectTextField: UITextField = {
        let tf = UITextField()
        return tf.textField(withPlaceolder: "Subject", isSecureTextEntry: false)
    }()
    
    let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("SEND FEEDBACK", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        button.setTitleColor(UIColor.mainBlue(), for: .normal)
        button.backgroundColor = .white
        
        button.layer.cornerRadius = 5
        return button
    }()
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
        let backgroundColor = CAGradientLayer()
        backgroundColor.colors = [UIColor.purple.cgColor,UIColor.googleRed().cgColor]
        backgroundColor.frame = view.frame
        view.layer.addSublayer(backgroundColor)
        
        navigationController?.navigationBar.barTintColor = .googleRed()
        navigationController?.navigationBar.prefersLargeTitles = false
        navigationItem.title = "FeedBack"
        navigationController?.navigationBar.barStyle = .black
        
        view.addSubview(logoImageView)
        logoImageView.anchor(top: view.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 60, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 150, height: 150)
        logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.addSubview(name)
        name.anchor(top: logoImageView.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 24, paddingLeft: 32, paddingBottom: 0, paddingRight: 32, width: 0, height: 50)
        
        view.addSubview(classroom)
        classroom.anchor(top: name.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 16, paddingLeft: 32, paddingBottom: 0, paddingRight: 32, width: 0, height: 50)
        
        view.addSubview(schoolnumber)
        schoolnumber.anchor(top: classroom.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 16, paddingLeft: 32, paddingBottom: 0, paddingRight: 32, width: 0, height: 50)
        
        view.addSubview(subject)
        subject.anchor(top: schoolnumber.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 16, paddingLeft: 32, paddingBottom: 0, paddingRight: 32, width: 0, height: 50)
        
        
        view.addSubview(loginButton)
        loginButton.anchor(top: subject.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 150, paddingLeft: 32, paddingBottom: 0, paddingRight: 32, width: 0, height: 50)
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "baseline_clear_white_36pt_3x").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleDismiss))
    }
    
}
