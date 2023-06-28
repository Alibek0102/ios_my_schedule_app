//
//  ScheduleModel.swift
//  MyShedule
//
//  Created by Алибек Аблайулы on 28.06.2023.
//

import Foundation
import RealmSwift

class ScheduleModel: Object {
    @Persisted var date: Date = Date()
    @Persisted var time: Date = Date()
    @Persisted var name: String = ""
    @Persisted var type: String = ""
    @Persisted var Building: String = ""
    @Persisted var Audience: String = ""
    @Persisted var TeacherName: String = ""
    @Persisted var repeatSchdeule: Bool = true
    @Persisted var color: String = "FFFFFF"
}
