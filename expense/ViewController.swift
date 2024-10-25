//
//  ViewController.swift
//  expense
//
//  Created by Naveen Kumar on 20/07/24.
//

import UIKit

class ViewController: UIViewController {
    static let sceneStoryboard = UIStoryboard(name: "Main", bundle: nil)
    
    
    
    @IBOutlet weak var SignUpView: UIView!
    
    @IBOutlet weak var LoginLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        shapeUI()
        
        
        let loginGesture = UITapGestureRecognizer(target: self, action: #selector(contentVC))
        LoginLabel.isUserInteractionEnabled = true
        LoginLabel.addGestureRecognizer(loginGesture)
        
    }
    
    func shapeUI(){
        var myView = SignUpView
        myView = UIView(frame: CGRect(x: 100, y: 100, width: 200, height: 200))
        SignUpView.layer.cornerRadius = 20 // Adjust the
        view.addSubview(SignUpView)
    }
    
    @objc func contentVC(){
                let signupVC = self.storyboard?.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
                navigationController?.pushViewController(signupVC, animated: true)
    }
    
    
    


}

