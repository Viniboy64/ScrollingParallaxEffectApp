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
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    var cellHeight: CGFloat = 216.0
    var parallaxOffsetSpeed: CGFloat = 48.0
    var parallaxImageHeight: CGFloat {
        let maxOffset = (sqrt(pow(self.cellHeight, 2.0) + (4.0 * self.cellHeight * self.tableView.frame.height)) - self.cellHeight) / 2.0
        
        return maxOffset + self.cellHeight
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    func parallaxOffset(_ newOffsetY: CGFloat, cell: UITableViewCell) -> CGFloat {
        return ((newOffsetY - cell.frame.origin.y) / self.parallaxImageHeight) * self.parallaxOffsetSpeed
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let offsetY = self.tableView.contentOffset.y
        
        for cell in self.tableView.visibleCells as! [TableViewCell] {
            cell.parallaxImageTop.constant = parallaxOffset(offsetY, cell: cell)
        }
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
        cell.parallaxImageHeight.constant = self.parallaxImageHeight
        cell.parallaxImageTop.constant = parallaxOffset(self.tableView.contentOffset.y, cell: cell)
        
        return cell
    }
}
