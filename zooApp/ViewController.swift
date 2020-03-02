//
//  ViewController.swift
//  zooApp
//
//  Created by Mohamed Abd el Aty on 1/14/20.
//  Copyright © 2020 Aty. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDataSource , UITableViewDelegate {
  var NotKiller = ["Donkey","Monkey","Elphant","Deer","Cow","cat"]
    var SecTit = ["NotKiller","Killer"]
    var Killer = ["Tiger","Lioan","Dog","Shark","Fox","Beer"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return SecTit.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
        return NotKiller.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let Cell = tableView.dequeueReusableCell(withIdentifier: "cellone", for: indexPath)
        if indexPath.section == 0 {
        Cell.textLabel?.text = NotKiller[indexPath.row]
        }
        else {
            Cell.textLabel?.text = Killer[indexPath.row]

        }
        
        return Cell
    }
  
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return SecTit[section]
    }
}

