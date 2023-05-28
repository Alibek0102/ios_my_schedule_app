//
//  AlertForTextField.swift
//  MyShedule
//
//  Created by Алибек Аблайулы on 28.05.2023.
//

import UIKit

extension UIViewController {
    func alertTextField(label: UILabel, name: String, placeholder: String){
        let alert = UIAlertController(title: name, message: nil, preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "OK", style: .default) { (action) in
            
            let tAlert = alert.textFields?.first
            guard let textOfAlert = tAlert?.text else { return }
            label.text = textOfAlert
            
        }
        
        alert.addTextField { tAlert in
            tAlert.placeholder = placeholder
        }
        
        let cancel = UIAlertAction(title: "Cancel", style: .default, handler: nil)
        
        alert.addAction(ok)
        alert.addAction(cancel)
        
        present(alert, animated: true)
    }
    
}
