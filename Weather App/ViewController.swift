//
//  ViewController.swift
//  Weather App
//
//  Created by Rustem Manafov on 02.08.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var buttonLabel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonLabel.layer.cornerRadius = 10
    }

    @IBAction func buttonAct(_ sender: Any) {
        let city = textField.text ?? ""
        
        if city.isEmpty {
            
            let alert = UIAlertController(title: "Alert", message: "Enter City Name", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
            present(alert, animated: true, completion: nil)
        } else {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
            vc.city = city
            
            show(vc, sender: nil)
            
        }
        
    }
    
}

