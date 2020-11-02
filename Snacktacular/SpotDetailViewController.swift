//
//  SpotDetailViewController.swift
//  Snacktacular
//
//  Created by Marissa D'Antonio on 11/1/20.
//

import UIKit

class SpotDetailViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var ratingLabel: UILabel!
    
    var spot: Spot!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if spot == nil {
            spot = Spot()
        }

    updateUserInterface()
    }
    
    func updateUserInterface() {
        nameTextField.text = spot.name
        addressTextField.text = spot.address
    }
    
    func updateFromInterface() {
        spot.name = nameTextField.text!
        spot.address = addressTextField.text!
    }
    
    func leaveViewController() {
        let isPresentingInAddMode = presentingViewController is UINavigationController
        if isPresentingInAddMode {
            dismiss(animated: true, completion: nil)
        } else {
            navigationController?.popViewController(animated: true)
        }
    }
    @IBAction func saveButtonPressed(_ sender: Any) {
        updateFromInterface()
        spot.saveData { (Success) in
            if Success {
                self.leaveViewController()
            } else {
                self.oneButtonAlert(title: "Save Failed", message: "Nice Work")
            }
        }
    }
    
    @IBAction func canelButtonPressed(_ sender: UIBarButtonItem) {
        leaveViewController()
    }
    
}
