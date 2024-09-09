//
//  VcViewController.swift
//  SuperKahramanTanitimi
//
//  Created by Enis Uzun on 9.08.2024.
//

import UIKit

class VcViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var image: UIImageView!
    var secilenKahramanIsmi = ""
    var secilenKahramanGorselIsmi = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        image.image = UIImage(named: secilenKahramanGorselIsmi)
        label.text = secilenKahramanIsmi

    }
    


}
