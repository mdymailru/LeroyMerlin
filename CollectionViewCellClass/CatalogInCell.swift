//
//  CatalogInCell.swift
//  LeroyMerlin
//
//  Created by mdy on 25.04.2021.
//

import UIKit

class CatalogInCell: UICollectionViewCell {
    
    @IBOutlet weak var catalogInLabel: UILabel!
    
    override func awakeFromNib() {
        
        self.layer.cornerRadius = 5
        self.layer.masksToBounds = true
    }
    
}
