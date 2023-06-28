//
//  AlertForChooseImage.swift
//  MyShedule
//
//  Created by Алибек Аблайулы on 26.06.2023.
//

import UIKit

extension UIViewController {
    func alertForChooseImage(complitionHandler: @escaping (UIImagePickerController.SourceType) -> Void){
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        let camera = UIAlertAction(title: "Camera", style: .default) { action in
            let camera = UIImagePickerController.SourceType.camera
            complitionHandler(camera)
        }
        
        let imageLibrary = UIAlertAction(title: "Image Library", style: .default) { source in
            let imageLibrary = UIImagePickerController.SourceType.photoLibrary
            complitionHandler(imageLibrary)
        }
        
        let cancel = UIAlertAction(title: "Cancel", style: .cancel)
        
        alert.addAction(camera)
        alert.addAction(imageLibrary)
        alert.addAction(cancel)
        
        present(alert, animated: true)
    }
}
