//
//  SheduleTableViewCell.swift
//  MyShedule
//
//  Created by Алибек Аблайулы on 14.05.2023.
//

import UIKit

class SheduleTableViewCell: UITableViewCell {
    
    let lessonName = UILabel(text: "Программированние", font: UIFont().avenirBold(size: 20))
    let teacherName = UILabel(text: "Есетов Алибек", font: UIFont().avenir(size: 20), textAlignment: .right)
    let lessonTime = UILabel(text: "08:00", font: UIFont().avenirBold(size: 18))
    let typeLabel = UILabel(text: "Тип:", font: UIFont().avenirBold(size: 14), textAlignment: .right)
    let lessonType = UILabel(text: "Лекция", font: UIFont().avenir(size: 14))
    let buildingLabel = UILabel(text: "Корпус:", font: UIFont().avenirBold(size: 14), textAlignment: .right)
    let lessonBuilding = UILabel(text: "1", font: UIFont().avenir(size: 14))
    let audLabel = UILabel(text: "Аудитория:", font: UIFont().avenirBold(size: 14), textAlignment: .right)
    let lessonAud = UILabel( text: "305", font: UIFont().avenir(size: 14))
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints(){
        let topStackView = UIStackView(arrandegSubviews: [lessonName, teacherName], axis: .horizontal, spacing: 10, distribution: .fillEqually)
        self.addSubview(topStackView)
        
        NSLayoutConstraint.activate([
            topStackView.topAnchor.constraint(equalTo: self.topAnchor,constant: 10),
            topStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            topStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5),
            topStackView.heightAnchor.constraint(equalToConstant: 25)
        ])
        
        self.addSubview(lessonTime)
        NSLayoutConstraint.activate([
            lessonTime.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            lessonTime.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            lessonTime.widthAnchor.constraint(equalToConstant: 100),
            lessonTime.heightAnchor.constraint(equalToConstant: 25)
        ])
        
        let bottomStackView = UIStackView(arrandegSubviews: [typeLabel, lessonType, buildingLabel, lessonBuilding, audLabel, lessonAud], axis: .horizontal, spacing: 5, distribution: .fillProportionally)
        self.addSubview(bottomStackView)
        
        NSLayoutConstraint.activate([
            bottomStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            bottomStackView.leadingAnchor.constraint(equalTo: lessonTime.trailingAnchor, constant: 10),
            bottomStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5),
            bottomStackView.heightAnchor.constraint(equalToConstant: 25)
        ])
    }
    
}
