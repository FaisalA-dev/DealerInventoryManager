//
//  AddVehicleViewController.swift
//  DealerInventoryManager
//
//  Created by Faisal Anwari on 4/24/25.
//

import UIKit

class AddVehicleViewController: UIViewController {

    @IBOutlet weak var makeField: UITextField!
    @IBOutlet weak var modelField: UITextField!
    @IBOutlet weak var yearField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func addVehicleTapped(_ sender: UIButton) {
        let make = makeField.text ?? ""
        let model = modelField.text ?? ""
        let year = yearField.text ?? ""

        if make.isEmpty || model.isEmpty || year.isEmpty {
            let alert = UIAlertController(title: "Missing Info", message: "Please fill in all fields.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            present(alert, animated: true)
            return
        }

        print("Added Vehicle: \(make) \(model) (\(year))")
        dismiss(animated: true)
    }

    @IBAction func goBackTapped(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
