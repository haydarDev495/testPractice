//
//  CustomTableViewCell.swift
//  test
//
//  Created by Haydar Bekmuradov on 14.05.22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var bottomLabel: UILabel!
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var xibImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        topLabel.text = "MOUNTAIN"
        bottomLabel.text = "NATURE"
    }
    
    func configure(viewModel: ViewModel) {
        
        topLabel.text = viewModel.title
        bottomLabel.text = viewModel.subTitle
    }
}
