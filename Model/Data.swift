//
//  Data.swift
//  LeroyMerlin
//
//  Created by mdy on 26.04.2021.
//

import UIKit

class SetupApp {
    
    static let shared = SetupApp()
    
    var image: [UIImage] = []
    
    private init() {}
    
    func initImage() {
//        guard let csvPath = Bundle.main.path(forResource: "CatalogLeroy", ofType: "csv") else { return }
//        do {
//            let csvData = try String(contentsOfFile: csvPath, encoding: String.Encoding.utf8)
//            print(csvData)
//            let parsedCSV: [[String]] = csvData.components(separatedBy: "\n")
//                                        .map{ $0.components(separatedBy: ";") }
//
//            for elem in parsedCSV {
//
//                guard let url = URL(string: elem[1])  else { break }
//
//                guard let data = try? Data(contentsOf: url) else { break }
//                self.image.append(UIImage(data: data) ?? UIImage())
//                print(elem[1])
//
//            }
//        } catch{
//            print(error)
//        }

    }
   
    
}
