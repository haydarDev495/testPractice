//
//  CustomTableViewCell.swift
//  test
//
//  Created by Haydar Bekmuradov on 14.05.22.
//

import UIKit
import Kingfisher

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
        let url = URL(string: "https://a.d-cd.net/5f31b2ds-960.jpg")
        xibImageView.kf.setImage(with: url)
        topLabel.text = viewModel.title
        bottomLabel.text = viewModel.subTitle
    }
}
