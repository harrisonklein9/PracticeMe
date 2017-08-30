//
//  Cal_Goal_Data.swift
//  PracticeMe
//
//  Created by Harrison Klein on 8/29/17.
//  Copyright © 2017 Harrison Klein. All rights reserved.
//

import Foundation

class Cal_Goal_Data {
    
    let type: Cal_Goal_Type
    
    init (cal_Goal_Type: Cal_Goal_Type) {
        type = cal_Goal_Type
        print("\(type.rawValue) cal_goal created")
    }
}

class GoalData: Cal_Goal_Data {
    let goalData:String
    
    init ( goal: String) {
        goalData = goal
        super.init(cal_Goal_Type: .goal)
        print("new goal created")
    }
}

enum Cal_Goal_Type: String {
    case goal = "Goal"
    case audition = "Audition"
}
