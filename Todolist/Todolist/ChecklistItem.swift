//
//  ChecklistItem.swift
//  Todolist
//
//  Created by 廖崇捷 on 2015/12/31.
//  Copyright © 2015年 Dimo. All rights reserved.
//

import Foundation

class ChecklistItem {
  var text = ""
  var checked = false
    
  func toggleChecked() {
    checked = !checked
  }
}

