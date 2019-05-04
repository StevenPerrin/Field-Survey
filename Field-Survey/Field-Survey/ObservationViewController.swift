//
//  ObservationViewController.swift
//  Field-Survey
//
//  Created by Steven Perrin on 5/3/19.
//  Copyright © 2019 Steven Perrin. All rights reserved.
//

import UIKit

class ObservationViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let observations = field_observations.load(from: "field_observations")
    
    let dateFormatter = DateFormatter()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium

        // Do any additional setup after loading the view.
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return observations?.type.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "observationCell", for: indexPath)
        
        if let type = observations?.type[indexPath.row] {
            cell.textLabel?.text = type.title
            cell.detailTextLabel?.text = "Classification: \(type.classification), Description: \(type.description)"
//            cell.dateLabel.text = type.date
        }
        
        return cell
        
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
