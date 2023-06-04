//
//  ScheduleSetColorViewController.swift
//  MyShedule
//
//  Created by Алибек Аблайулы on 28.05.2023.
//

import UIKit

class ScheduleSetColorViewController: UITableViewController {
    
    let idSetColor = "idSetColor"
    let idScheduleHeader = "idScheduleHeader"
    
    private let sections = ["GREEN", "RED", "BLUE", "VIOLET", "NAVY BLUE", "ORANGE"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Colors"
        view.backgroundColor = .white
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.bounces = false
        tableView.separatorStyle = .none
        tableView.register(ColorsTableViewCell.self, forCellReuseIdentifier: idSetColor)
        tableView.register(ShaduleTableViewHeader.self, forHeaderFooterViewReuseIdentifier: idScheduleHeader)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 6
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: idSetColor, for: indexPath) as! ColorsTableViewCell
        cell.setConfig(indexPath: indexPath)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: idScheduleHeader) as! ShaduleTableViewHeader
        header.setText(headerText: sections, section: section)
        return header
    }
    
}

extension ScheduleSetColorViewController {
    
}
