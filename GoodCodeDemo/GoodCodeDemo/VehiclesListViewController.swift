//
//  ViewController.swift
//  GoodCodeDemo
//
//  Created by Alexey Danilov on 12/10/2017.
//  Copyright © 2017 DanilovDev. All rights reserved.
//

import UIKit

class VehiclesListViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
//    let vehicleCellIdentifier = "VehicleCell"
    
//    var a = 28
//    var bb = "Aleksei"
//    var ccc = "IT"
//
//    var age = 28
//    var name = "Aleksei"
//    var specialisation = "IT"
//
    var type: Int
    var count: Double
    var price: String

    var type: String
    var count: Int
    var price: Double

//    var COUNTOFUSEDVEHICLES = 0
//    var countofusedvehicles = 0
//    var TYPE: String
//    var Type: String
//    var type: String
//    var countOfUsedVehicles = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureNavBar()
        self.configureTableView()
    }
    
    let vehicleCellIdentifier = "VehicleCell"
    
    let vehicleHeaderIdentifier = "VehicleHeader"
    
    func configureTableView(){
        self.tableView.register(UINib.init(nibName: "VehicleCell", bundle: nil),
                                forCellReuseIdentifier: "VehicleCell")
        self.tableView.register(UINib.init(nibName: "VehicleHeader", bundle: nil),
                                forHeaderFooterViewReuseIdentifier: "VehicleHeader")
        self.tableView.tableFooterView = UIView()
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.estimatedRowHeight = 200.0
    }
    
    func configureNavBar() {
        let backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: self, action: nil)
        self.navigationItem.backBarButtonItem = backBarButtonItem
        
        let favoritesImage = UIImage(named: "ic_favorite_48pt")
        let favoritesButton = UIButton(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        favoritesButton.addTarget(self, action: #selector(favoritesButtonTapped), for: .touchUpInside)
        favoritesButton.setImage(favoritesImage, for: .normal)
        let favoritesBarButton = UIBarButtonItem(customView: favoritesButton)
        self.navigationItem.rightBarButtonItem = favoritesBarButton
    }
    
    @objc func favoritesButtonTapped() {
        
    }
    
    func logicCalculations() {
        let a = 10
        let b = 20
        if (b > a)
        {
           print("This is bad code style")
        }
        
        if (b > a) {
            print("This is good code style")
        }
    }

}

extension VehiclesListViewController: UITableViewDataSource, UITabBarDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VehicleCell", for: indexPath)
    }
}

