//
//  TableViewCell.swift
//  ScrollingParallaxEffectApp
//
//  Created by Marcus Vinícius on 28/07/19.
//  Copyright © 2019 Marcus Vinícius. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var cellTitle: UILabel!
    
    @IBOutlet weak var parallaxImageHeight: NSLayoutConstraint!
    @IBOutlet weak var parallaxImageTop: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code.
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state.
    }
    
    func configureCell(_ title: String, image: String) {
        self.cellImage.image = UIImage(named: image)
        self.cellTitle.text = title
    }
}
