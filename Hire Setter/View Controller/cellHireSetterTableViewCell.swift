//
//  cellHireSetterTableViewCell.swift
//  Hire Setter
//
//  Created by Donia Elshenawy on 20/04/2022.
//

import UIKit

class cellHireSetterTableViewCell: UITableViewCell {

    
    @IBOutlet weak var imageCell: UIImageView!
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    
    
    @IBOutlet weak var availableLabel: UILabel!
    
    @IBOutlet weak var alartLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func dataSetInCell(name : String, price : Double ,image : Data, available : String){
        imageCell.image = UIImage(data: image)
        nameLabel.text = name
        priceLabel.text = "\(price) LE"
        availableLabel.text = available
 
        if (available == "available".lowercased()){
            availableLabel.backgroundColor = UIColor.green
        }
        else{
            availableLabel.backgroundColor = UIColor.red
        }
    }
    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
       
    }
    
    @IBAction func hireBtn(_ sender: Any) {
        
    
     
        if(availableLabel.text == "available".lowercased()){
            availableLabel.text = "unavailable"
            availableLabel.backgroundColor = UIColor.red

        }
        else{
            
            print("Alart! hire is unavailable")
            alartLabel.text = "Alart! hire is unavailable"
            alartLabel.backgroundColor = UIColor.yellow
            availableLabel.backgroundColor = UIColor.red
        }
    }
    
    
}
