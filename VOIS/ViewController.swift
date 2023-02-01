//
//  ViewController.swift
//  VOIS
//
//  Created by Andrew K on 01.02.23.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet private var valueLabel: UILabel!
    @IBOutlet private var getButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        // Do any additional setup after loading the view.
    }
    
    private func configure() {
        valueLabel.text = String(SDK.getRandom())
        getButton.addTarget(self, action: #selector(getButtonClick(_:)), for: .touchUpInside)
    }

    @objc private func getButtonClick(_ sender : UIButton){
        valueLabel.text = String(SDK.getRandom())
    }
}

