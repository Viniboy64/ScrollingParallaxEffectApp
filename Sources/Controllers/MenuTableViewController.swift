//
//  MenuTableViewController.swift
//  ScrollingParallaxEffectApp
//
//  Created by Marcus Vinícius on 09/09/19.
//  Copyright © 2019 Marcus Vinícius. All rights reserved.
//

import UIKit

class MenuTableViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Parallax"
        
        tableView.backgroundColor = .black
        tableView.separatorStyle = .none
        tableView.register(MenuTableViewCell.self, forCellReuseIdentifier: "Cell")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 16
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 216.0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? MenuTableViewCell else { return UITableViewCell() }
        cell.selectionStyle = .none
        
        return cell
    }
}
