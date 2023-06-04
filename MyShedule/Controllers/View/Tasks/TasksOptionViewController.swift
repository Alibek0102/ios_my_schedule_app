//
//  TasksOptionViewController.swift
//  MyShedule
//
//  Created by Алибек Аблайулы on 01.06.2023.
//

import UIKit

class TasksOptionViewController: UITableViewController {
    
    let tasksRowIdentifier = "tasksRowIdentifier"
    let tasksHeaderIdentifier = "tasksHeaderIdentifier"
    
    let headerElements = ["DATA", "NAME", "TASK", "COLOR"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.bounces = false
        tableView.backgroundColor = UIColor(hexString: "#f7f7f7")
        tableView.separatorStyle = .none
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(TasksOptionViewCell.self, forCellReuseIdentifier: tasksRowIdentifier)
        tableView.register(ShaduleTableViewHeader.self, forHeaderFooterViewReuseIdentifier: tasksHeaderIdentifier)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        4
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! TasksOptionViewCell
        
        switch indexPath.section {
        case 0: alertDate(label: cell.optionLabel) { dayInWeek, date in
            print(date)
        }
        case 1: alertTextField(label: cell.optionLabel, name: "Название", placeholder: "Введите название...")
        case 2: alertTextField(label: cell.optionLabel, name: "Задание", placeholder: "Введите задание...")
        default:
            toColorVC(vc: ColorTableViewCell())
        }
    }
    
    func toColorVC(vc: UIViewController){
        let controller = vc
        navigationController?.navigationBar.topItem?.title = "Задачи"
        navigationController?.pushViewController(controller, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: tasksHeaderIdentifier) as! ShaduleTableViewHeader
        header.setText(headerText: headerElements, section: section)
        return header
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: tasksRowIdentifier, for: indexPath) as! TasksOptionViewCell
        cell.setConfig(indexPath: indexPath)
        return cell
    }
    
}
