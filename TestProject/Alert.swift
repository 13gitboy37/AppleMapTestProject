//
//  Alert.swift
//  TestProject
//
//  Created by Никита Мошенцев on 09.05.2022.
//

import UIKit

extension UIViewController {
    
    func alertAddAdress(title: String, placeholder: String, complionHandler: @escaping (String) -> Void) {
        let alertController = UIAlertController(title: title, message: nil, preferredStyle: .alert)
        let alertOk = UIAlertAction(title: "OK", style: .default) { (action) in
            
            let tfText = alertController.textFields?.first
            guard let text = tfText?.text else { return }
            complionHandler(text)
            
        }
        
        alertController.addTextField { (tf) in
            tf.placeholder = placeholder
        }
        
        let alertCancel = UIAlertAction(title: "Отмена", style: .default) { (_) in
        }
        
        alertController.addAction(alertOk)
        alertController.addAction(alertCancel)
        
        present(alertController, animated: true, completion: nil)
    }
    
    func alertError(title: String, message: String) {
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertOk = UIAlertAction(title: "OK", style: .default)
        
        alertController.addAction(alertOk)
        
        present(alertController, animated: true, completion: nil)
    }
}
