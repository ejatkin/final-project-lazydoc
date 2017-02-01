//
//  WeightViewController.swift
//  LazyDoctor
//
//  Created by Dan Pelensky on 1/2/17.
//  Copyright © 2017 Elizabeth Atkin, Dan Pelensky, Veronica Sonzini. All rights reserved.
//

import UIKit

class WeightViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let weight = Weight().weightArray
    
    var valueToPass: String!
    var passedValue: String!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "WeightCell") as? WeightTableViewCell
//        let row = indexPath.row
//        cell?.weightLabel.text = weight[row]
//        
//        return cell!
//    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WeightCell") as? WeightTableViewCell
        let row = indexPath.row
        cell?.weightLabel.text = weight[row]
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weight.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let indexPath = tableView.indexPathForSelectedRow
        let currentCell = tableView.cellForRow(at: indexPath!) as? WeightTableViewCell
        
        valueToPass = currentCell?.weightLabel?.text
        performSegue(withIdentifier: "showWeight", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "showWeight") {
            let weightViewController = segue.destination as! WeightViewController
            
            weightViewController.passedValue = valueToPass
        }
    }
    
    
}
