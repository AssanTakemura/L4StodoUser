//
//  TabuViewController.swift
//  L4StodoUser
//
//  Created by 竹村明日香 on 2020/09/24.
//  Copyright © 2020 Takemura assan. All rights reserved.
//

import UIKit

class TabuViewController: UIViewController {
    
    @IBOutlet var TodoTextField: UITextField!
    
    var todo: [String] = []
    
    var saveDate: UserDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func save(){
        todo = UserDefaults.standard.array(forKey: "todo") as? [String] ?? []
        if let text = TodoTextField.text{
            todo.append(text)
        }
        saveDate.set(todo, forKey: "todo")
        dismiss(animated: true, completion: nil)
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
