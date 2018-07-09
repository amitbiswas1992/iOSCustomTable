//
//  ViewController.swift
//  Table
//
//  Created by Maze Geek on 7/9/18.
//  Copyright © 2018 Amit Biswas. All rights reserved.
//

import UIKit

struct CellData{
    
    let image: UIImage?
    let message: String?
}

class TableViewController: UITableViewController {

    var data = [CellData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        data = [CellData.init(image: #imageLiteral(resourceName: "img_3"), message: "Che Guevara"), CellData.init(image: #imageLiteral(resourceName: "img_1"), message: "John Lenin"),CellData.init(image: #imageLiteral(resourceName: "img_2"), message: "Baraq Obama"),CellData.init(image: #imageLiteral(resourceName: "img_4"), message: "Steve Jobs")]
         self.tableView.register(CustomCell.self , forCellReuseIdentifier: "custom")
         self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.estimatedRowHeight = 200
  
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "custom") as! CustomCell
        cell.mainimage = data[indexPath.row].image
        cell.message = data[indexPath.row].message
        cell.layoutSubviews()
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

   

}

