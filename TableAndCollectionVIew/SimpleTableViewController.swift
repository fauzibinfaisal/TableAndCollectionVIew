//
//  SimpleTableViewController.swift
//  TableAndCollectionVIew
//
//  Created by Fauzi Fauzi on 14/11/19.
//  Copyright © 2019 fauzify. All rights reserved.
//

import UIKit

class SimpleTableViewController: UIViewController {
    
    //1
    @IBOutlet weak var tableVIew: UITableView!
    let myData = ["first", "second", "third", "fourth"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //2
        tableVIew.delegate = self
        tableVIew.dataSource = self
    }
}

//3
extension SimpleTableViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //4
        return myData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //5
        let cell = tableView.dequeueReusableCell(withIdentifier: "stCell",for: indexPath)
        cell.textLabel?.text = myData[indexPath.row]
        
        return cell
        
    }
    
    
}
