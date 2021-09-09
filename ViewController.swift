//
//  ViewController.swift
//  CustomAlert
//
//  Created by Syed Osaim Tahir on 09/09/2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func showAlert(_ sender: Any) {

        self.showLogoutAlert(action: {( action:String!) in
            
            print(action)
        
        })
    }
    
}

