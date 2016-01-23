//
//  AddItemViewController.swift
//  Todolist
//
//  Created by 廖崇捷 on 2016/1/23.
//  Copyright © 2016年 Dimo. All rights reserved.
//

import UIKit
  //1.首先將本viewcontroller設為textfield的delegate（宣告UITextFieldDelegate及拉線加入delegate）
class AddItemViewcontroller: UITableViewController, UITextFieldDelegate {
  
  //2.將bar上的donebutton拉個property來使其作用
  @IBOutlet weak var doneBarButton: UIBarButtonItem!
  
  //3.加入這個textfield delegate func，這方法可被使用在無論是鍵盤輸入或是複制貼入textfield的狀況下，而使用的原理是比對每次輸入後的表格，若輸入後的字元小於0則將按鈕顯示為disable
  func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
    
    let oldText: NSString = textField.text!
    let newText: NSString = oldText.stringByReplacingCharactersInRange(range, withString: string)
    
    doneBarButton.enabled = (newText.length > 0)
    
    return true
  }
  
  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)
  //keyboard automatically appeared once the screen opens
    textField.becomeFirstResponder()
  //4.將按鈕預設為disable或可以到storyboard設定按鍵預設為無法按
    doneBarButton.enabled = false
  }
  
  @IBOutlet weak var textField: UITextField!

  //disable selections for this row
  @IBAction func cancel() {
    dismissViewControllerAnimated(true, completion: nil)

  }



  @IBAction func done() {
    dismissViewControllerAnimated(true, completion: nil)
  
  print("this is \(textField.text!)")
  }
  
  override func tableView(tableView: UITableView, willSelectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath? {
    
    return nil
  }
  
  
}

