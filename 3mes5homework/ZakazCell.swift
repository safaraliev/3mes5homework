//
//  TableViewCell.swift
//  3mes5homework
//
//  Created by Нуридин Сафаралиев on 5/12/22.
//

import UIKit

class ZakazCell: UITableViewCell {
    
    @IBOutlet weak var cellimage: UIImageView!
    
    @IBOutlet weak var cellZakazName: UILabel!
    
    @IBOutlet weak var cellZakazInfo1: UILabel!
    @IBOutlet weak var cellZakazInfo2: UILabel!
    
    @IBOutlet weak var cellZakazPrice: UILabel!
    
    @IBOutlet weak var cellButton: UIButton!
    
    override func layoutSubviews() {
        cellButton.layer.cornerRadius = 15
        cellimage.layer.cornerRadius = 15
    }
   
}
