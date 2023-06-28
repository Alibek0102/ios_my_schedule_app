//
//  ScheduleManager.swift
//  MyShedule
//
//  Created by Алибек Аблайулы on 28.06.2023.
//

import Foundation
import RealmSwift

class ScheduleManager {
//    singleton
    static var shared = ScheduleManager()
    
    private init() {}
    
    var localRealm = try! Realm()
    
    func saveScheduleData(model: ScheduleModel){
        try! localRealm.write {
            localRealm.add(model)
        }
    }
    
}
