//
//  CustomView.swift
//  test
//
//  Created by Haydar Bekmuradov on 15.05.22.
//

import UIKit
import Kingfisher

class CustomView: UIView {
    
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    
    override init(frame : CGRect) {
        super.init(frame: frame)
        
        setupContentView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupContentView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        contentView.layer.borderWidth = 3
        contentView.layer.borderColor = UIColor.orange.cgColor
        let url = URL(string: "https://i.pinimg.com/originals/99/0d/51/990d51a753cca67f2a0fa1c990930625.jpg")
        imageView.kf.setImage(with: url)
    }
    
    private func setupContentView() {
        Bundle.main.loadNibNamed(String(describing: CustomView.self), owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
    
}
