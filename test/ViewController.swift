//
//  ViewController.swift
//  test
//
//  Created by Haydar Bekmuradov on 14.05.22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mercedes = Car(name: "Mercedes Benz", countWheel: 4, color: "Black")
        mercedes.signal()
        mercedes.drive()
    }

    @IBAction func nextButtonAction(_ sender: Any) {
        let anotherVC = AnotherViewController()
        navigationController?.pushViewController(anotherVC, animated: true )
    }
}

