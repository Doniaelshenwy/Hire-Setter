//
//  LocalDataBaseManger.swift
//  Hire Setter
//
//  Created by Donia Elshenawy on 20/04/2022.
//

import Foundation
import UIKit

class LocalDataBaseManger{
    var hireSetterArray : [HireSetter] = []
    
    func fetchData() -> [HireSetter]{
        let doctor1 = HireSetter(name: "Rokia Omar", Price: 100, img: convertedToData(image: UIImage(named: "4")!),available: "available")
        
        let doctor2 = HireSetter(name: "Ahmed Khaled", Price: 75, img: convertedToData(image: UIImage(named: "1")!), available: "unavailable")
        let doctor3 = HireSetter(name: "Omar Ibrahim", Price: 60, img: convertedToData(image: UIImage(named: "4")!), available: "unavailable")
        let doctor4 = HireSetter(name: "Mai Sami", Price: 50, img: convertedToData(image: UIImage(named: "1")!), available: "available")
        
        hireSetterArray = [doctor1,doctor2,doctor3,doctor4,doctor1,doctor2,doctor3,doctor4]
        return hireSetterArray
    }
    
    func convertedToData(image : UIImage) -> Data{
        return image.pngData()!
    }
    
    
}
