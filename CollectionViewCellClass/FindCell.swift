//
//  FindCell.swift
//  LeroyMerlin
//
//  Created by mdy on 23.04.2021.
//

import UIKit

class FindCell: UICollectionViewCell {

    @IBOutlet weak var findField: UIView!
    @IBOutlet weak var findButton: UIImageView!
    @IBOutlet weak var scanButton: UIView!
    
    override func awakeFromNib() {
        findField.layer.cornerRadius = 5
        findField.layer.masksToBounds = true
        
        findButton.layer.cornerRadius = 5
        findButton.layer.masksToBounds = true
        
        scanButton.layer.cornerRadius = 5
        scanButton.layer.masksToBounds = true
    }

}
