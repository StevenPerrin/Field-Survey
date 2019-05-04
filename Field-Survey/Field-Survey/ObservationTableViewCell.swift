//
//  ObservationTableViewCell.swift
//  Field-Survey
//
//  Created by Steven Perrin on 5/3/19.
//  Copyright © 2019 Steven Perrin. All rights reserved.
//

import UIKit

class ObservationTableViewCell: UITableViewCell {
    
    

    @IBOutlet weak var observationIconImageView: UIImageView!
    @IBOutlet weak var classificationLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
