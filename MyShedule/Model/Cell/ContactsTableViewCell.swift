//
//  ContactsTableViewCell.swift
//  MyShedule
//
//  Created by Алибек Аблайулы on 16.06.2023.
//

import UIKit

class ContactsTableViewCell: UITableViewCell {
    
    let imgView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "ava")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setConstraints(){
        self.addSubview(imgView)
        NSLayoutConstraint.activate([
            imgView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            imgView.heightAnchor.constraint(equalToConstant: 50),
            imgView.widthAnchor.constraint(equalToConstant: 50),
            imgView.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
        
        imgView.layer.cornerRadius = self.frame.height / 2
    }
}
