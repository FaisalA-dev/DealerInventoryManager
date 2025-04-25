//
//  VehicleListViewController.swift
//  DealerInventoryManager
//
//  Created by Faisal Anwari on 4/24/25.
//

import UIKit

class VehicleListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    // Sample data for now
    var vehicles = [
        ("Ford Mustang", "2020"),
        ("Toyota Camry", "2019"),
        ("Tesla Model 3", "2022")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    // TableView Methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vehicles.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VehicleCell", for: indexPath)
        let vehicle = vehicles[indexPath.row]
        cell.textLabel?.text = "\(vehicle.0) | \(vehicle.1)"
        return cell
    }
}
