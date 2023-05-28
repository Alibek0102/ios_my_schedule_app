//
//  AlertFordate.swift
//  MyShedule
//
//  Created by Алибек Аблайулы on 28.05.2023.
//

import UIKit

extension UIViewController {
    func alertDate(label: UILabel, completionHandler: @escaping (Int, NSDate) -> Void){
        let alert = UIAlertController(title: "", message: nil, preferredStyle: .actionSheet)
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
        datePicker.preferredDatePickerStyle = .wheels
        
        alert.view.addSubview(datePicker)
        
        var ok = UIAlertAction(title: "Ok", style: .default) { (action) in
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "dd.MM.yyyy"
            let dateString = dateFormatter.string(from: datePicker.date)
            
            let calendar = Calendar.current
            let component = calendar.dateComponents([.weekday], from: datePicker.date)
            guard let weekday = component.weekday else { return }
            let numberWeekday = weekday
            
            let date = datePicker.date as NSDate
            
            label.text = dateString
            completionHandler(numberWeekday, date)
        }
        
        var cancel = UIAlertAction(title: "Cancel", style: .default, handler: nil)
        
        alert.addAction(ok)
        alert.addAction(cancel)
        
        alert.view.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        datePicker.translatesAutoresizingMaskIntoConstraints = false
        datePicker.heightAnchor.constraint(equalToConstant: 150).isActive = true
        datePicker.widthAnchor.constraint(equalTo: alert.view.widthAnchor).isActive = true
        datePicker.topAnchor.constraint(equalTo: alert.view.topAnchor, constant: 10).isActive = true
        
        present(alert, animated: true, completion: nil)
        
    }
}
