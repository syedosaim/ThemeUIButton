//
//  CommonAlertVC.swift
//  WeMinder
//
//  Created by Krishna on 21/05/19.
//  Copyright © 2019 Krishna All rights reserved.
//

import UIKit

class CommonAlertVC: UIViewController {

    @IBOutlet weak var viewContainer: UIView!
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelDescription: UILabel!
    @IBOutlet weak var buttonCancel: UIButton!
    @IBOutlet weak var buttonOther: UIButton!
            

    var action : ((String) -> Void)?
    
    var _description:String?
    var _title:String?
    var cancelButtonTitle:String?
    var otherButtonTitle:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        viewContainer.layer.cornerRadius = 20.0
        viewContainer.layer.masksToBounds = true

        self.styleUI()
    }
    
    private func styleUI(){
        self.styleLabels()
        self.styleButtons()
    }
    
    private func styleButtons(){
        DispatchQueue.main.async {
            
            self.buttonCancel.isHidden = !(self.cancelButtonTitle != nil)
            self.buttonOther.isHidden = !(self.otherButtonTitle != nil)
            self.buttonCancel.titleLabel?.text = self.cancelButtonTitle
            self.buttonOther.titleLabel?.text = self.otherButtonTitle
        }
    }
    
    private func styleLabels(){
        DispatchQueue.main.async {
            
            self.labelTitle.isHidden = !(self._title != nil)
            self.labelDescription.isHidden = !(self._description != nil)
            self.labelTitle.text = self._title
            self.labelDescription.text = self._description
        }
    }

    // MARK: - IBAction Methods
    
    @IBAction func cancelButtonAction(sender: UIButton) {
        self.dismiss(animated: true, completion: { [weak self]() in
            self?.action?(self?.buttonCancel.titleLabel?.text ?? String())
        })
    }
    
    @IBAction func okayButtonAction(sender: UIButton) {
        self.dismiss(animated: true, completion: { [weak self]() in
            self?.action?(self?.buttonOther.titleLabel?.text ?? String())
        })
    }


}
