//
//  ViewController.swift
//  BorderButton
//
//  Created by 노연주 on 2021/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yellowButton: UIButton!
    @IBOutlet weak var purpleButton: UIButton!
    @IBOutlet weak var orangeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureUI()
    }

    func configureUI(){
        yellowButton.layer.borderWidth = 1
        yellowButton.layer.borderColor = .Yellow
        yellowButton.setTitleColor(.Yellow, for: .normal)
        
        purpleButton.layer.borderWidth = 1
        purpleButton.layer.borderColor = .Purple
        purpleButton.setTitleColor(.Purple, for: .normal)
        
        orangeButton.layer.borderWidth = 1
        orangeButton.layer.borderColor = .Orange
        orangeButton.setTitleColor(.Orange, for: .normal)
        
        cornerRaidus()
    }
    
    func cornerRaidus(){
        yellowButton.layer.cornerRadius = 10
        purpleButton.layer.cornerRadius = 10
        orangeButton.layer.cornerRadius = 10
    }

}

extension UIColor{
    static func rgb(red: CGFloat ,green: CGFloat,blue:CGFloat) -> UIColor{
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
    static let Yellow = UIColor.rgb(red: 255, green: 209, blue: 141)
    static let Purple = UIColor.rgb(red: 150, green: 141, blue: 255)
    static let Orange = UIColor.rgb(red: 255, green: 166, blue: 128)
}

extension CGColor{
    static let Yellow = UIColor.rgb(red: 255, green: 209, blue: 141).cgColor
    static let Purple = UIColor.rgb(red: 150, green: 141, blue: 255).cgColor
    static let Orange = UIColor.rgb(red: 255, green: 166, blue: 128).cgColor
}



