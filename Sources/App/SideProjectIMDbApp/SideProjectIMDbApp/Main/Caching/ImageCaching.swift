//
//  ImageCaching.swift
//  SideProjectIMDbApp
//
//  Created by Christian Slanzi on 13.09.21.
//

import Foundation

import UIKit
import Foundation
public class ImageCaching {
    
    public static let publicCache = ImageCaching()
    
    private let cachedImages = NSCache<NSURL, UIImage>()

    public final func image(url: URL) -> UIImage? {
        return cachedImages.object(forKey: url as NSURL)
    }
    
    public final func chacheImage(_ image: UIImage, url: URL) {
        // Cache the image.
        self.cachedImages.setObject(image, forKey: url as NSURL)
    }
}
