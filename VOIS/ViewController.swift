//
//  ViewController.swift
//  VOIS
//
//  Created by Andrew K on 01.02.23.
//

import UIKit
import VOISFramework

final class ViewController: UIViewController {
    
    @IBOutlet private var valueLabel: UILabel!
    @IBOutlet private var getButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    private func configure() {
        buttonAction()
        getButton.addTarget(self, action: #selector(getButtonClick(_:)), for: .touchUpInside)
    }

    @objc private func getButtonClick(_ sender : UIButton){
        buttonAction()
    }
    
    private func buttonAction() {
        valueLabel.text = VoisOpenSDK.getRandomFromC() //C code through public SDK function
        print(String(random_number(0, 100))) //C code directly, without option to see its definition (public func)
        
        //print(String(middle_number(10, 30))) //will not work due to privateness, but next string will work
        print(VoisOpenSDK.getMiddleFromC())
    }
}

