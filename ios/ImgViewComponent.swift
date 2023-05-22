//
//  ImgViewComponent.swift
//  react-native-img
//
//  Created by Yusuf Zeren on 22.05.2023.
//

import UIKit

@objc(ImgViewComponent)
public class ImgViewComponent: UIImageView {
    
    @objc public var src: String = "" {
        didSet {
            let imageURL = URL(string: src)
            self.contentMode = .scaleAspectFit
            self.load(url: imageURL!)
        }
    }
}


//https://www.hackingwithswift.com/example-code/uikit/how-to-load-a-remote-image-url-into-uiimageview
extension UIImageView {
    func load(url: URL) {
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}
