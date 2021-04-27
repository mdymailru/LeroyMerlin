//
//  MainCollectionViewCell.swift
//  LeroyMerlin
//
//  Created by mdy on 22.04.2021.
//

import UIKit

// Delegate for InCollectionView
class MainCell: UICollectionViewCell {
    
    @IBOutlet weak var inCollectionView: InCollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupMainCell()
    }
    
    func setupMainCell() {
        inCollectionView.dataSource = self
        inCollectionView.delegate = self
    }
}
//MARK: UICollectionViewDataSource and UICollectionViewDelegate

extension MainCell: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20 // number of Item inCollectionView
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "InCell", for: indexPath) as! InCell
        cell.inLabel.text = " \(indexPath.item) "
        return cell
    }
}

//MARK: UICollectionViewDelegateFlowLayout

extension MainCell: UICollectionViewDelegateFlowLayout {
   
    
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
        
        return CGSize(width: 125, height: 210 )
    }
    
    func collectionView(_ collectionView: UICollectionView,
             layout collectionViewLayout: UICollectionViewLayout,
           minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        //let sectionMain = collectionView.indexPath(for: self)?.section
        //print("1111111111 \(String(describing: sectionMain))")
        return 30   
        
    }
    

}
