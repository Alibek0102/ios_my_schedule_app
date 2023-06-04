//
//  ColorsTableViewCell.swift
//  MyShedule
//
//  Created by Алибек Аблайулы on 29.05.2023.
//

import UIKit

class ColorsTableViewCell: UITableViewCell {
    
    let viewColors: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 10
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConfig(indexPath: IndexPath){
        switch indexPath.section {
        case 0: viewColors.backgroundColor = UIColor(hexString: "#5ad654")
        case 1: viewColors.backgroundColor = UIColor(hexString: "#e84643")
        case 2: viewColors.backgroundColor = UIColor(hexString: "#7993e8")
        case 3: viewColors.backgroundColor = UIColor(hexString: "#cc44f2")
        case 4: viewColors.backgroundColor = UIColor(hexString: "#4255e3")
        default: viewColors.backgroundColor = UIColor(hexString: "#f7920c")
        }
    }
    
    func setConstraints() {
        self.addSubview(viewColors)
        
        NSLayoutConstraint.activate([
            viewColors.topAnchor.constraint(equalTo: self.topAnchor),
            viewColors.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            viewColors.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            viewColors.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
}
