//
//  PopVC.swift
//  pixel-city
//
//  Created by Mariah Baysic on 5/2/20.
//  Copyright © 2020 SpacedOut. All rights reserved.
//

import UIKit

class PopVC: UIViewController, UIGestureRecognizerDelegate {

    @IBOutlet weak var popImageView: UIImageView!
    
    var passedImage: UIImage!
    
    func initData(image: UIImage) {
        self.passedImage = image
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        popImageView.image = passedImage
        
        addDoubleTap()
    }
    
    func addDoubleTap() {
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(dismissPopVC))
        doubleTap.numberOfTapsRequired = 2
        doubleTap.delegate = self
        
        view.addGestureRecognizer(doubleTap)
    }

    @objc func dismissPopVC() {
        dismiss(animated: true, completion: nil)
    }
}
