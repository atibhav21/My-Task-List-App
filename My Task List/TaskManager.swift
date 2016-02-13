//
//  TaskManager.swift
//  My Task List
//
//  Created by Atibhav Mittal on 2/12/16.
//  Copyright © 2016 ati. All rights reserved.
//

import UIKit

var taskMgr: TaskManager = TaskManager()

struct task{
    var name = "Un-Named"
    var desc = "Un-Described"
}

class TaskManager: NSObject {
    
    var tasks = [task]()
    
    func addTask(name: String, description: String)
    {
        tasks.append(task(name: name,desc: description))
    }
    
    func removeTask(index: Int)
    {
        tasks.removeAtIndex(index)
    }
}
