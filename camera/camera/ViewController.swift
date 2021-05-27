//
//  ViewController.swift
//  camera
//
//  Created by period4 on 5/19/21.
//  Copyright © 2021 period4. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate,  UINavigationControllerDelegate {

   override func viewDidLoad() {
           super.viewDidLoad()
    }

    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBAction func camera(_ sender: Any) {
    let vc = UIImagePickerController()
    vc.sourceType = .camera
    vc.allowsEditing = true
    vc.delegate = self
    present(vc, animated: true)
        
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
           let imagePickerController = UIImagePickerController()
           imagePickerController.delegate = self;
           imagePickerController.sourceType = .camera
           self.present(imagePickerController, animated: true,  completion: nil)
        }
    }
   
    @IBAction func photoLibrary(_ sender: Any) {
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
       let imagePickerController = UIImagePickerController()
       imagePickerController.delegate = self;
       imagePickerController.sourceType = .photoLibrary
       self.present(imagePickerController, animated: true, completion: nil)
        }
    }
        
   func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        imageView.image = image
        self.dismiss(animated: true, completion: nil)
    }
   
    
    
   
    
    
   
    
}
    

