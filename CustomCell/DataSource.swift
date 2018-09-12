//
//  DataSource.swift
//  CustomCell
//
//  Created by Son on 8/9/18.
//  Copyright © 2018 NguyenHoangSon. All rights reserved.
//

import UIKit

class DataSource: NSObject, UITableViewDataSource {
    //@IBOutlet weak var tableView: UITableView?
    var arrListNumbers = [1...100]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrListNumbers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = String(describing: arrListNumbers[indexPath.row])
        return cell!
    }
    
    
}
