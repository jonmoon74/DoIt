//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by Jon Moon on 11/06/2018.
//  Copyright © 2018 Jon Moon. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    
    @IBOutlet weak var taskLabel: UILabel!
    
    var previousVC = TasksViewController()
    var task = Task()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if task.important {
            taskLabel.text = "!\(String(describing: task.name))"
        } else{
            taskLabel.text = task.name
        }
        
    }
    
    @IBAction func completeTapped(_ sender: Any) {
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }
    
    
}
