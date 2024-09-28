//
//  Extension+UIImage.swift
//  TabBar-Live-OS
//
//  Created by Ömer Saitoğlu on 28.09.2024.
//

import UIKit

extension UIImage {
    static func gifImages(data: Data) -> [UIImage]? {
        guard let source = CGImageSourceCreateWithData(data as CFData, nil) else {
            print(ErrorKeys.openError.rawValue)
            return nil
        }
        
        var images = [UIImage]()
        let count = CGImageSourceGetCount(source)
        
        for i in 0..<count {
            if let cgImage = CGImageSourceCreateImageAtIndex(source, i, nil) {
                let image = UIImage(cgImage: cgImage)
                images.append(image)
            }
        }
        
        return images
    }
}
