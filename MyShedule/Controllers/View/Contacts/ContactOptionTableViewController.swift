//
//  ContactOptionTableViewController.swift
//  MyShedule
//
//  Created by Алибек Аблайулы on 21.06.2023.
//

import UIKit

class ContactOptionTableViewController: UITableViewController {
    
    let optionForNewContactId = "optionForNewContactId"
    let optionForNewContactIdHeader = "optionForNewContactIdHeader"
    
    let headerText = ["NAME", "PHONE", "MAIL", "TYPE", "CHOOSE IMAGE"]
    
    var cellTexts = ["Name", "Phone", "Mail", "Type", ""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = UIColor(hexString: "#f9f9f9")
        tableView.dataSource = self
        tableView.delegate = self
        tableView.separatorStyle = .none
        tableView.register(OptionsTableViewCell.self, forCellReuseIdentifier: optionForNewContactId)
        tableView.register(ShaduleTableViewHeader.self, forHeaderFooterViewReuseIdentifier: optionForNewContactIdHeader)
        
        title = "Option"
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: optionForNewContactId, for: indexPath) as! OptionsTableViewCell
        cell.setContactsConfigure(arrayOfTexts: cellTexts, indexPath: indexPath)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        indexPath.section == 4 ? 200 : 44
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: optionForNewContactIdHeader) as! ShaduleTableViewHeader
        header.setText(headerText: headerText, section: section)
        return header
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }

}
