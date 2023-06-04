//
//  TasksOptionViewCell.swift
//  MyShedule
//
//  Created by Алибек Аблайулы on 01.06.2023.
//

import UIKit

class TasksOptionViewCell: UITableViewCell {
    
    let labelText = ["Дата", "Название", "Задание", ""]
    
    let optionView: UIView = {
        let optionView = UIView()
        optionView.layer.cornerRadius = 10
        optionView.backgroundColor = .white
        optionView.translatesAutoresizingMaskIntoConstraints = false
        return optionView
    }()
    
    let optionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont().avenir(size: 15)
        label.textColor = UIColor(hexString: "#000")
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.backgroundColor = UIColor(hexString: "#f7f7f7")
        self.selectionStyle = .none
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConfig(indexPath: IndexPath){
        optionLabel.text = labelText[indexPath.section]
        
        if(indexPath.section == 3){
            optionView.backgroundColor = .green
        }
    }
    
    func setConstraints(){
        self.addSubview(optionView)
        NSLayoutConstraint.activate([
            optionView.topAnchor.constraint(equalTo: self.topAnchor),
            optionView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            optionView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            optionView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20)
        ])
        
        optionView.addSubview(optionLabel)
        NSLayoutConstraint.activate([
            optionLabel.leadingAnchor.constraint(equalTo: optionView.leadingAnchor, constant: 10),
            optionLabel.centerYAnchor.constraint(equalTo: optionView.centerYAnchor)
        ])
    }
    
}
