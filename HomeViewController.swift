//
//  HomeViewController.swift
//  DealerInventoryManager
//
//  Created by Faisal Anwari on 4/23/25.
//

import UIKit

class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func viewVehiclesTapped(_ sender: UIButton) {
        print("Navigating to Vehicle List")
        // TODO: Navigate to list screen
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vehicleListVC = storyboard.instantiateViewController(withIdentifier: "VehicleListVC")
            vehicleListVC.modalPresentationStyle = .fullScreen
            present(vehicleListVC, animated: true)
        }

    

    @IBAction func addVehicleTapped(_ sender: UIButton) {
        print("Navigating to Add Vehicle screen")
        // TODO: Navigate to add screen
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
           let addVC = storyboard.instantiateViewController(withIdentifier: "AddVehicleVC")
           addVC.modalPresentationStyle = .fullScreen
           present(addVC, animated: true)
    }

    @IBAction func logoutTapped(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
