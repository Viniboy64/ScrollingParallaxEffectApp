//
//  ViewController.swift
//  ScrollingParallaxEffectApp
//
//  Created by Marcus Vinícius on 28/07/19.
//  Copyright © 2019 Marcus Vinícius. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private let data = [
        [
            "title": "Final Fantasy XIV - A Realm Reborn",
            "image": "final-fantasy-xiv-a-realm-reborn"
        ],
        [
            "title": "Mario Kart 8 Deluxe",
            "image": "mario-kart-8-deluxe"
        ],
        [
            "title": "Nier: Automata",
            "image": "nier-automata"
        ],
        [
            "title": "Red Dead Redemption II",
            "image": "red-dead-redemption-ii"
        ],
        [
            "title": "Rogue One - A Star Wars Story",
            "image": "rogue-one-a-star-wars-story"
        ],
        [
            "title": "Shadow of the Colossus",
            "image": "shadow-of-the-colossus"
        ],
        [
            "title": "Spider-Man Homecoming",
            "image": "spider-man-homecoming"
        ],
        [
            "title": "Stranger Things 2",
            "image": "stranger-things-2"
        ],
        [
            "title": "Super Mario Galaxy 2",
            "image": "super-mario-galaxy-2"
        ],
        [
            "title": "Super Mario Odyssey",
            "image": "super-mario-odyssey"
        ],
        [
            "title": "The Legend of Zelda - Breath of the Wild",
            "image": "the-legend-of-zelda-breath-of-the-wild"
        ],
        [
            "title": "Uncharted - The Lost Legacy",
            "image": "uncharted-the-lost-legacy"
        ],
        [
            "title": "Xenoblade Chronicles X",
            "image": "xenoblade-chronicles-x"
        ],
    ]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let index = self.data[indexPath.row]
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? TableViewCell else { return UITableViewCell() }
        cell.configureCell(index["title"] ?? "Title", image: index["image"] ?? "")
        
        return cell
    }
}
