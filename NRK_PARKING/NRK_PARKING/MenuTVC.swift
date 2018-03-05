//
//  MenuTVC.swift
//  NRK_PARKING
//
//  Created by MacStudent on 2018-02-26.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class MenuTVC: UITableViewController {
    var menuItem = MenuItems()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuItem = MenuItems()
        tableView.rowHeight = 10
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return menuItem.names.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuItemIdentifier", for: indexPath) as! MenuCell
        
        // Configure the cell...
        let row = indexPath.row
        cell.lblMenu.text = menuItem.names[row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let row = indexPath.row
        let name = menuItem.names[row]
        let ManualSB = UIStoryboard(name: "Main", bundle: nil)
        let ManualVC = ManualSB.instantiateViewController(withIdentifier: "ManualScreen") as! ManualVC
        self.navigationController?.pushViewController(ManualVC, animated: true)
    }


}
