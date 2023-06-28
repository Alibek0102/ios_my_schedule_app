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
    
    let phoneImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "phone.fill")?.withRenderingMode(.alwaysTemplate)
        imageView.tintColor = UIColor(hexString: "#fc8803")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let mailImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "envelope.fill")?.withRenderingMode(.alwaysTemplate)
        imageView.tintColor = UIColor(hexString: "#fc8803")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let contactName = UILabel(text: "Alibek Yessetov", font: UIFont().avenirBold(size: 16))
    let contactPhone = UILabel(text: "+7 777 812 02 02", font: UIFont().avenir(size: 12))
    let contactEmail = UILabel(text: "alibek.yessetov@bk.ru", font: UIFont().avenir(size: 12))
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutIfNeeded() {
        super.layoutIfNeeded()
        imgView.layer.cornerRadius = imgView.frame.height / 2
    }
    
    
    func setConstraints(){
        self.addSubview(imgView)
        NSLayoutConstraint.activate([
            imgView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            imgView.heightAnchor.constraint(equalToConstant: 50),
            imgView.widthAnchor.constraint(equalToConstant: 50),
            imgView.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
        
        self.addSubview(contactName)
        NSLayoutConstraint.activate([
            contactName.topAnchor.constraint(equalTo: self.topAnchor, constant: 15),
            contactName.leadingAnchor.constraint(equalTo: imgView.trailingAnchor, constant: 15),
            contactName.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            contactName.heightAnchor.constraint(equalToConstant: 21)
        ])
        
        
        let stackView = UIStackView(arrandegSubviews: [phoneImageView, contactPhone, mailImageView, contactEmail], axis: .horizontal, spacing: 3, distribution: .fillProportionally)
        self.addSubview(stackView)
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: contactName.bottomAnchor, constant: 10),
            stackView.leadingAnchor.constraint(equalTo: imgView.trailingAnchor, constant: 15),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            stackView.heightAnchor.constraint(equalToConstant: 21)
        ])
        
    }
}
