//
//  OtherViewController.swift
//  dataVCtoVC
//
//  Created by Sanak Ghosh on 4/22/21.
//

import UIKit

class OtherViewController: UIViewController {

    @IBOutlet var field: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func didTapSave(_ sender: UIButton) {
        
        NotificationCenter.default.post(name: Notification.Name("text"), object: field.text)
        
        dismiss(animated: true, completion: nil)
    }
    
    

    
}
