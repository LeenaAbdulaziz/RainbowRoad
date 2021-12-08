//
//  ViewController.swift
//  RainbowRoad
//
//  Created by Linah abdulaziz on 04/05/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    var dataPassed:String!

    @IBOutlet weak var tableview: UITableView!
    
    let colors = [UIColor.red, UIColor.orange,UIColor.yellow, UIColor.green ,UIColor.blue, UIColor.purple]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.dataSource = self
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "my cell", for: indexPath)
        
        
        
        cell.backgroundColor = (colors[indexPath.row])
        return cell
    }
}
    
   
