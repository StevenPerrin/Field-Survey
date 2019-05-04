//
//  ObservationDetailViewController.swift
//  Field-Survey
//
//  Created by Steven Perrin on 5/3/19.
//  Copyright © 2019 Steven Perrin. All rights reserved.
//

import UIKit

class ObservationDetailViewController: UIViewController {
    
    var observationChoice: Observation?
    
    var dateFormatter = DateFormatter()

    @IBOutlet weak var observationIconImageView: UIImageView!
    @IBOutlet weak var matchupLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        observationIconImageView.image = observationChoice?.classification
        matchupLabel.text = observationChoice?.classification
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        if let date = observationChoice?.date {
            dateLabel.text = dateFormatter.string(from: date)
        } else {
            dateLabel.text = ""
        }
        
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

}
