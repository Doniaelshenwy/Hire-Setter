//
//  AddSetterViewController.swift
//  Hire Setter
//
//  Created by Donia Elshenawy on 20/04/2022.
//

import UIKit

class AddSetterViewController: UIViewController , UIImagePickerControllerDelegate & UINavigationControllerDelegate{
    
    var delegate : HireSetterProtocol!

    var pickerController : UIImagePickerController!
    
    @IBOutlet weak var imageSettor: UIImageView!
    
    
    @IBOutlet weak var nameTextField: UITextField!
    
    
    @IBOutlet weak var priceTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

      pickerController = UIImagePickerController()
        pickerController.sourceType = .photoLibrary
        pickerController.delegate = self
        
    }
    

    @IBAction func choosePhotoBtn(_ sender: Any) {
        
        present(pickerController, animated: true, completion: nil)
    }
    
    @IBAction func doneBtn(_ sender: Any) {
        let name = nameTextField.text!
        let price = Double(priceTextField.text!)!
        let available = "available"
       
        guard let img = imageSettor.image else { return  }

        let convertedImage = LocalDataBaseManger().convertedToData(image: img)

        delegate.retrieveData(hireSetter: HireSetter(name: name, Price: price, img: convertedImage, available: available))
        
       self.navigationController?.popViewController(animated: true)
     
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[.originalImage] as? UIImage{
            imageSettor.image = image
        }
        dismiss(animated: true, completion: nil)
        
    }
    
}
    
