//
//  TasksTableViewCell.swift
//  MyShedule
//
//  Created by Алибек Аблайулы on 20.05.2023.
//

import UIKit

class TasksTableViewCell: UITableViewCell {
    var lessonLabel = UILabel(text: "Программрование", font: UIFont().avenirBold(size: 20))
    var descriptionLabel = UILabel(text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum.", font: UIFont().avenir(size: 14))
    
//    delegates variables
    var buttonTapDelegate: ReadyButtonTask?
    var index: IndexPath?
    
    var button: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(systemName: "heart"), for: .normal)
        button.tintColor = .black
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        descriptionLabel.numberOfLines = 2
        self.selectionStyle = .none
        setConstraints()
        
        button.addTarget(self, action: #selector(taskButtonTapped), for: .touchUpInside)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints() {
        
        contentView.addSubview(button)
        NSLayoutConstraint.activate([
            button.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            button.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            button.heightAnchor.constraint(equalToConstant: 30),
            button.widthAnchor.constraint(equalToConstant: 30)
        ])
        
        addSubview(lessonLabel)
        NSLayoutConstraint.activate([
            lessonLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            lessonLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            lessonLabel.trailingAnchor.constraint(equalTo: button.leadingAnchor, constant: -5),
            lessonLabel.heightAnchor.constraint(equalToConstant: 25)
        ])
        
        addSubview(descriptionLabel)
        NSLayoutConstraint.activate([
            descriptionLabel.topAnchor.constraint(equalTo: lessonLabel.bottomAnchor),
            descriptionLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            descriptionLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            descriptionLabel.trailingAnchor.constraint(equalTo: button.leadingAnchor, constant: -5)
        ])
        
    }
    
//    delegate functions
    @objc func taskButtonTapped(){
        guard let index = index else { return }
        buttonTapDelegate?.readyButtonTapped(index: index)
    }
    
}
