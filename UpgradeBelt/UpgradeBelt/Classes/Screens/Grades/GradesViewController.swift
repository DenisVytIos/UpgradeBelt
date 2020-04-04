//
//  ViewController.swift
//  UpgradeBelt
//
//  Created by Denis on 03.04.2020.
//  Copyright © 2020 Denis. All rights reserved.
//

import UIKit

class GradesViewController: UITableViewController {

   
    @IBOutlet var gradesTableView: UITableView!
    
    var cellID = "GradeTableViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gradesTableView.delegate = self
        gradesTableView.dataSource = self
        
    }
}

extension GradesViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "section \(section)"
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10

    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = gradesTableView.dequeueReusableCell(withIdentifier: cellID) as? GradeTableViewCell
        
        cell?.beltLabel.text = "grade"
        
        return cell ?? UITableViewCell()
    }
    
    
  
}

