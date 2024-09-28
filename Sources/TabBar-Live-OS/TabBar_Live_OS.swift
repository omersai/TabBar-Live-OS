// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import UIKit

public class TabBarLiveOS {
    public func setupGifAnimation(tabBarView: UITabBarController, gifName: String, gifSize: CGFloat = 40, gifSpeed: TimeInterval = 1.0, tabIndex index: Int) {
        DispatchQueue.main.async {
            guard let items = tabBarView.tabBar.items, items.indices.contains(index) else { return }
            let tabBarButton = tabBarView.tabBar.subviews[items.count / 2]
            tabBarButton.subviews.filter { $0.tag == 999 }.forEach { $0.removeFromSuperview() }
            
            guard let path = Bundle.main.path(forResource: gifName, ofType: "gif"),
                  let data = try? Data(contentsOf: URL(fileURLWithPath: path)),
                  let images = UIImage.gifImages(data: data) else {
                print(ErrorKeys.loadError.rawValue)
                return
            }
            
            let gifImageView = UIImageView()
            gifImageView.animationImages = images
            gifImageView.animationDuration = gifSpeed
            gifImageView.contentMode = .scaleAspectFit
            gifImageView.startAnimating()
            gifImageView.frame = CGRect(
                x: (tabBarButton.bounds.width - gifSize) / 2,
                y: (tabBarButton.bounds.height - gifSize) / 2,
                width: gifSize,
                height: gifSize
            )
            gifImageView.tag = 999
            
            guard let tabBarItemView = tabBarView.tabBar.items?[index].value(forKey: "view") as? UIView else {
                print(ErrorKeys.tabBarError.rawValue)
                return
            }
            tabBarItemView.addSubview(gifImageView)
        }
    }
}
