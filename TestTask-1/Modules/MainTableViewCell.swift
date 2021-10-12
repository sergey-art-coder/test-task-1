//
//  MainTableViewCell.swift
//  TestTask-1
//
//  Created by Сергей Ляшенко on 12.10.2021.
//

import UIKit

class MainTableViewCell: UITableViewCell {
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        photoImageView.image = nil
    }
}
