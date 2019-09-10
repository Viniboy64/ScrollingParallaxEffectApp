//
//  MenuTableViewCell.swift
//  ScrollingParallaxEffectApp
//
//  Created by Marcus Vinícius on 09/09/19.
//  Copyright © 2019 Marcus Vinícius. All rights reserved.
//

import UIKit

class MenuTableViewCell: UITableViewCell {
    private let cellImageName: UIImageView = UIImageView(backgroundColor: .white, cornerRadius: 16.0)
    private let cellName: UILabel = UILabel(backgroundColor: .gray, cornerRadius: 8.0)
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .black
        
        setupLayout()
    }
    
    func setupLayout() {
        // Add subviews to cell.
        addSubviews([cellImageName, cellName])
        
        // Constraints for cellImageName, cellName.
        NSLayoutConstraint.activate(
            [
                cellImageName.topAnchor.constraint(equalTo: topAnchor, constant: 8.0),
                cellImageName.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8.0),
                cellImageName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8.0),
                cellImageName.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8.0),
                
                cellName.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -32.0),
                cellName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16.0),
                cellName.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16.0),
                cellName.heightAnchor.constraint(equalToConstant: 40.0)
            ]
        )
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder aDecoder: ) has not been implemented.")
    }
}
