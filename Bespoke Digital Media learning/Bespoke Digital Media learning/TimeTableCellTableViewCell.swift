//
//  TimeTableCellTableViewCell.swift
//  Bespoke Digital Media learning
//
//  Created by Anubhav Singh on 29/04/20.
//  Copyright © 2020 Bespoke Digital Media. All rights reserved.
//

import UIKit

class TimeTableCellTableViewCell: UITableViewCell {

    @IBOutlet weak var firstlabe: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    @IBOutlet weak var forthLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
