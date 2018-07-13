//
//  FilmTableViewCell.swift
//  test
//
//  Created by Noah Russell on 12/07/2018.
//  Copyright © 2018 Noah Russell. All rights reserved.
//

import UIKit

class FilmTableViewCell: UITableViewCell {
    //MARK: Properties
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var photoLogo: UIImageView!
    @IBOutlet weak var RatingLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
