//
//  CatalogCell.swift
//  LeroyMerlin
//
//  Created by mdy on 25.04.2021.
//

import UIKit
// Delegate for catalogInCollectionView
class CatalogCell: UICollectionViewCell {
    
    @IBOutlet weak var catalogInCollectionView: CatalogInCollectionView!
    
        override func awakeFromNib() {
            super.awakeFromNib()
            setupCatalogCell()
        }
        
        func setupCatalogCell() {
            catalogInCollectionView.dataSource = self
            catalogInCollectionView.delegate = self
        }
    }
    //MARK: UICollectionViewDataSource and UICollectionViewDelegate

    extension CatalogCell: UICollectionViewDataSource, UICollectionViewDelegate {
        
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return 7 // number of Item CatalogInCollectionView
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
                
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CatalogInCell", for: indexPath) as! CatalogInCell
            cell.catalogInLabel.text = "Cat: \(indexPath.item) "
            return cell
        }
    }

    //MARK: UICollectionViewDelegateFlowLayout

    extension CatalogCell: UICollectionViewDelegateFlowLayout {
       
        
        // Section Insets
        func collectionView(_ collectionView: UICollectionView,
                 layout collectionViewLayout: UICollectionViewLayout,
                   insetForSectionAt section: Int) -> UIEdgeInsets {
            
            return UIEdgeInsets(top: CGFloat(0),
                               left: CGFloat(20),
                             bottom: CGFloat(0),
                              right: CGFloat(20))
        }
        
        func collectionView(_ collectionView: UICollectionView,
                 layout collectionViewLayout: UICollectionViewLayout,
                     sizeForItemAt indexPath: IndexPath) -> CGSize {
            
            return CGSize(width: 300, height: 125 )
        }
        
        func collectionView(_ collectionView: UICollectionView,
                 layout collectionViewLayout: UICollectionViewLayout,
               minimumLineSpacingForSectionAt section: Int) -> CGFloat {
            
            //let sectionMain = collectionView.indexPath(for: self)?.section
            //print("1111111111 \(String(describing: sectionMain))")
            return 20
            
        }
        
}
