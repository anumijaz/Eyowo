//
//  ViewController.swift
//  Eyowo
//
//  Created by Anum Ijaz on 20/07/2021.
//  Copyright © 2021 Anum Ijaz. All rights reserved.
//

import UIKit
import Alamofire
class LoginController: UIViewController {
    
    @IBOutlet var txt_email: UITextField!
    @IBOutlet var txt_password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func LoginAction(_ sender: UIButton) {
        if (txt_email.text?.isValidEmail)! && (txt_password.text?.isValidPassword)! {
            let email:String="admin@gmail.com";
            let password:String="1234";
            if (txt_email.text==email) && (txt_password.text==password){
                print("login successfully")
                UserDefaults.standard.set(true, forKey: "Login")
                let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "FruitListViewController") as? FruitListViewController;
                self.navigationController?.pushViewController(vc!, animated: true);
            }
            else{
                
                createAlert(Title: "Alert", Message: "Enter valid Credentials");
            }
        }
        else{
            createAlert(Title: "Alert", Message: "Enter valid Credentials");
        }
    }
    
    func createAlert(Title:String,Message:String){
        
        //Create an alert
        let alert=UIAlertController(title:Title , message:Message , preferredStyle: UIAlertController.Style.alert);
        
        //add an action against alert
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil));
        
        //show that alert on the screen
        present(alert,animated:true,completion:nil);
    
        
        
    }
}

extension String{
    
    var isValidEmail:Bool{
        let emailRegExpression="[A-Za-z0-9]+@[A-Z0-9a-z]+.[A-Za-z]{3}";
        let emailTest=NSPredicate(format: "SELF MATCHES %@", emailRegExpression);
        return emailTest.evaluate(with: self);
    }
    
    var isValidPassword:Bool{
        let passwordRegExpression="^(?=.*[0-9]).{3,}$";
        let password = NSPredicate(format: "SELF MATCHES %@ ",passwordRegExpression );
        return password.evaluate(with: self);
    }
}


