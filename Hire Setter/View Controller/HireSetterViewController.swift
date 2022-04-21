//
//  HireSetterViewController.swift
//  Hire Setter
//
//  Created by Donia Elshenawy on 20/04/2022.
//

import UIKit

class HireSetterViewController: UIViewController {
    

    var hireSetterArray : [HireSetter] = []
    
    var localDataBaseManger : LocalDataBaseManger!
    
    @IBOutlet weak var tableView: UITableView!
    
    
  
   
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
      
        
        
        localDataBaseManger = LocalDataBaseManger()

       
        
        hireSetterArray = localDataBaseManger.fetchData()
    
        tableView.register(UINib(nibName: "cellHireSetterTableViewCell", bundle: nil), forCellReuseIdentifier: "cellHireSetterTableViewCell")
    }
    

    @IBAction func addSetter(_ sender: Any) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "AddSetterViewController") as? AddSetterViewController{

            vc.delegate = self
            
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    

}

extension HireSetterViewController : UITableViewDelegate,UITableViewDataSource,HireSetterProtocol{
   
    
  
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hireSetterArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellHireSetterTableViewCell", for: indexPath) as! cellHireSetterTableViewCell
        cell.dataSetInCell(name: hireSetterArray[indexPath.row].name, price: hireSetterArray[indexPath.row].Price, image: hireSetterArray[indexPath.row].img, available: hireSetterArray[indexPath.row].available)
        
       
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func retrieveData(hireSetter: HireSetter) {
        hireSetterArray.append(hireSetter)
        tableView.reloadData()
    }
}

extension UITableView {
    
    func registerCellNib<Cell: UITableViewCell>(cellClass: Cell.Type){
        self.register(UINib(nibName: String(describing: Cell.self), bundle: nil), forCellReuseIdentifier: String(describing: Cell.self))
    }


    func dequeue<Cell: UITableViewCell>() -> Cell{
        let identifier = String(describing: Cell.self)
        
        guard let cell = self.dequeueReusableCell(withIdentifier: identifier) as? Cell else {
            fatalError("Error in cell")
        }
        
        return cell
    }
}
