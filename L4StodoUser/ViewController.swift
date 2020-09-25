//
//  ViewController.swift
//  L4StodoUser
//
//  Created by 竹村明日香 on 2020/09/24.
//  Copyright © 2020 Takemura assan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    //    var saveDate: UserDefaults = UserDefaults.standard
    
    //    @IBOutlet var Label: UILabel!
    @IBOutlet var tableView: UITableView!
    
    var todo: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        todo = UserDefaults.standard.array(forKey: "todo") as? [String] ?? []
        tableView.reloadData()
    }
    
    @IBAction func addBtnWasPressed(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "TO_ADDVC", sender: nil)
    }
    
    // TableViewの行数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todo.count
    }
    
    // Cellを返す関数
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell()
        cell.textLabel?.text = todo[indexPath.row]
        return cell
    }
    
}

