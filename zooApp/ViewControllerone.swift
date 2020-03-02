//
//  ViewControllerone.swift
//  zooApp
//
//  Created by Mohamed Abd el Aty on 1/14/20.
//  Copyright © 2020 Aty. All rights reserved.
//

import UIKit

class ViewControllerone: UIViewController ,UITableViewDataSource ,UITableViewDelegate {
 var Animals = Array<Animalz>()
    @IBOutlet weak var Tableveiwlist: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Animals.append(Animalz(Name: "Dog", Des: "it is it isit isit isit isit isit isit is", Image: "dog"))
         Animals.append(Animalz(Name: "Lioan", Des: "it is it isit isit isit isit isit isit is", Image: "image"))
         Animals.append(Animalz(Name: "Monky", Des: "it is it isit isit isit isit isit isit is", Image: "monky"))
         Animals.append(Animalz(Name: "rabota", Des: "it is it isit isit isit isit isit isit is", Image: "rab"))
         Animals.append(Animalz(Name: "Tigora", Des: "it is it isit isit isit isit isit isit is", Image: "tigar!"))
        
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Animals.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Cell:MyCell = tableView.dequeueReusableCell(withIdentifier: "Cell2", for: indexPath) as! MyCell
        
        Cell.Laname.text = Animals[indexPath.row].Image
        Cell.LaDes.text = Animals[indexPath.row].Des
        Cell.Laimage.image = UIImage(named: Animals[indexPath.row].Image!)
        
        return Cell
    }
    /*func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 153
    }*/
    
}
 
