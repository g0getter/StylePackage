//
//  ViewController.swift
//  Extensions
//
//  Created by 여나경 on 2021/09/01.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = UIImage(named: "LacrosseIcon.png") ?? nil
        // TODO: Q. 원래 순서대로 해야하는지? (e.g. .colored를 lineSpaced 뒤에 설정할 수는 없는지?)
        textLabel.attributedText = NSMutableAttributedString()
            .bold("Bold\n", fontSize: 20)
            .regular("Regular\n", fontSize: 25)
            .colored("Colored\n", fontSize: 27, fontColor: .blue)
            .underlined("Underlined\n", fontSize: 30)
            .italic("Italic\n", fontSize: 33)
            .highlight("Highlight\n", fontSize: 34, highlightColor: .purple)
            .highlight("Orange\n", fontSize: 35, highlightColor: .orange)
            .kern("Kern\n", fontSize: 45, kernValue: 30)
            .lineSpaced("LineSpacedString\nHahahahaha", 10)
            .appendImage(image)
    }


}

