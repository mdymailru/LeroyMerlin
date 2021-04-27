//
//  MainCollectionViewController.swift
//  LeroyMerlin
//
//  Created by mdy (Martynov Dmitry) on 22.04.2021.
//

import UIKit

let idHeader = "HeaderView"
let idCell = "MainCell"
let idFindCell = "FindCell"
let idCatalogCell = "CatalogCell"

class MainCollectionViewController: UICollectionViewController {
    
    private let itemHeight = 130
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigationBar()
        //SetupApp.shared.initImage()
    }
    
    func setupNavigationBar() {
        
        let leroyGreenColor = #colorLiteral(red: 0.3233034015, green: 0.7694267035, blue: 0.2460721135, alpha: 1)
                
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.isTranslucent = false
        
        let appearance = UINavigationBarAppearance()
            appearance.configureWithDefaultBackground()
            appearance.backgroundColor = leroyGreenColor
            appearance.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
            appearance.shadowImage = UIImage()
        navigationController?.navigationBar.scrollEdgeAppearance = appearance

        appearance.backgroundColor = .white
        appearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        appearance.shadowImage = nil
        navigationController?.navigationBar.standardAppearance = appearance
   
    }
    
    // MARK: UICollectionViewDataSource
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 5
    }

    override func collectionView(_ collectionView: UICollectionView,
                   numberOfItemsInSection section: Int) -> Int {
        return 1
    }
        
    override func collectionView(_ collectionView: UICollectionView,
                          cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell: UICollectionViewCell
        switch indexPath.section {
        case 0: //FindField
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: idFindCell,
                                                                          for: indexPath) as! FindCell
        case 1: //Catalog
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: idCatalogCell,
                                                                          for: indexPath) as! CatalogCell
        default: //ItemsGroup
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: idCell,
                                                                          for: indexPath) as! MainCell
        }
        return cell
    }

    override func collectionView(_ collectionView: UICollectionView,
           viewForSupplementaryElementOfKind kind: String,
                                     at indexPath: IndexPath) -> UICollectionReusableView {
        
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind,
                                                        withReuseIdentifier: idHeader,
                                                                        for: indexPath) as! HeaderView
        if indexPath.section < 2 {
            header.frame.size = CGSize(width: 0, height: 0)
        } else {
            header.hederLabel.text = "Группа товаров \(indexPath.section - 1)"
        }
        return header
    }
        
}

//MARK: UICollectionViewDelegateFlowLayout
extension MainCollectionViewController: UICollectionViewDelegateFlowLayout {
   
    // Cell size up level
    func collectionView(_ collectionView: UICollectionView,
             layout collectionViewLayout: UICollectionViewLayout,
                 sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        var height: Int
        switch indexPath.section {
            case 0:  height = 98
            case 1:  height = 125
            default: height = 210
        }
        return CGSize(width: collectionView.frame.width, height: CGFloat(height))
    }
    
    // Section Insets
    func collectionView(_ collectionView: UICollectionView,
             layout collectionViewLayout: UICollectionViewLayout,
               insetForSectionAt section: Int) -> UIEdgeInsets {
        
        var bottom, top, left: Int
        switch section {
        case 0:  top = 0; bottom = 0; left = 0
        case 1:  top = 32; bottom = 45; left = 15
        default: top = 26; bottom = 60; left = 15
        }
        return UIEdgeInsets(top: CGFloat(top),
                           left: CGFloat(left),
                         bottom: CGFloat(bottom),
                          right: CGFloat(left))
    }
    
    // Header
    func collectionView(_ collectionView: UICollectionView,
             layout collectionViewLayout: UICollectionViewLayout,
          referenceSizeForHeaderInSection section: Int) -> CGSize {
        
        let height: Int
        switch section {
            case 0, 1: height = 0
            default:
                    height = 50
        }
        return CGSize(width: collectionView.frame.width, height: CGFloat(height))
    }

}
