//
//  StoryboardCustomViewController.swift
//  TableAndCollectionVIew
//
//  Created by Fauzi Fauzi on 14/11/19.
//  Copyright © 2019 fauzify. All rights reserved.
//

import UIKit

class StoryboardCustomViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }

}

extension StoryboardCustomViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            var cell = tableView.dequeueReusableCell(withIdentifier: "titleCell", for: indexPath)
            return cell
        }else {
            var cell = tableView.dequeueReusableCell(withIdentifier: "inputCell", for: indexPath)
            return cell
        }
    }
    
    
}
