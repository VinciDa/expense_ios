//
//  LoginViewController.swift
//  expense
//
//  Created by Naveen Kumar on 20/07/24.
//

import Foundation
import UIKit

class LoginViewController : UIViewController, UIGestureRecognizerDelegate{
    
    static let sceneStoryboard = UIStoryboard(name: "Main", bundle: nil)
    
    @IBOutlet weak var LoginView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        shapeUI()
        // Do any additional setup after loading the view.
        
        
    }
    func shapeUI(){
        var myView = LoginView
        myView = UIView(frame: CGRect(x: 100, y: 100, width: 200, height: 200))
        LoginView.layer.cornerRadius = 20 // Adjust the
        view.addSubview(LoginView)
    }
    
}
