//
//  ViewController.swift
//  test-slider
//
//  Created by Mat Cegiela on 5/10/17.
//  Copyright © 2017 Mat Cegiela. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    var sliderLabel: UILabel?

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if let handleView = slider.subviews.last as? UIImageView {
            let label = UILabel(frame: handleView.bounds)
            label.backgroundColor = .clear
            label.textAlignment = .center
            handleView.addSubview(label)
            
            self.sliderLabel = label
            label.text = "!!"
        }
    }
}
