//
//  ViewController.swift
//  dataVCtoVC
//
//  Created by Sanak Ghosh on 4/22/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(getThoseText), name: Notification.Name("text"), object: nil)
        
    }

    @IBAction func didTapWrite() {
        let vc = storyboard?.instantiateViewController(identifier: "other") as! OtherViewController
        vc.modalPresentationStyle = .fullScreen
        
        present(vc, animated: true)
        
    }
    
    @objc func getThoseText(_ notification: Notification) {
        let text = notification.object as! String
        label.text = text
    }
    
}

