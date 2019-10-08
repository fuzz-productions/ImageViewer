//
//  CALayer.swift
//  ImageViewer
//
//  Created by Kristian Angyal on 29/07/2016.
//  Copyright © 2016 MailOnline. All rights reserved.
//

import UIKit

extension CALayer {
    func toImage() -> UIImage {
        UIGraphicsBeginImageContextWithOptions(frame.size, false, 0)
        let context = UIGraphicsGetCurrentContext()
        render(in: context!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image!
    }
}
