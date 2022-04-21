//
//  HomeViewController.swift
//  Hire Setter
//
//  Created by Donia Elshenawy on 19/04/2022.
//

import UIKit

class HomeViewController: UIViewController {
 
    
    
  
    

    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    
    @IBAction func addSetterBtn(_ sender: Any) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "AddSetterViewController") as? AddSetterViewController{

            
            
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    @IBAction func hireSetterBtn(_ sender: Any) {
        
        if let vc = storyboard?.instantiateViewController(withIdentifier: "HireSetterViewController") as? HireSetterViewController{

            self.navigationController?.pushViewController(vc, animated: true)
        }
        
    }
    
}
