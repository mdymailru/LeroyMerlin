//
//  InternalCollectionViewCell.swift
//  LeroyMerlin
//
//  Created by mdy on 22.04.2021.
//

import UIKit

class InCell: UICollectionViewCell {
    
    @IBOutlet weak var inLabel: UILabel!
    
    override func awakeFromNib() {
        
        self.layer.cornerRadius = 5
        self.layer.masksToBounds = true
    }
}
