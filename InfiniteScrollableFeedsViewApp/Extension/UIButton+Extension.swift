//
//  UIButton+Extension.swift
//  InfiniteScrollableFeedsViewApp
//
//  Created by Bhawna on 23/08/21.
//

import UIKit

extension UIButton {
   func buttonForView(_ title: String, imageName: String) -> UIButton{
      let button = UIButton()
      button.setTitle(title, for: UIControl.State())
      button.setTitleColor(UIColor.rgb(155, green: 161, blue: 171 ), for: UIControl.State())
      button.setImage(UIImage(named: imageName), for: UIControl.State()) //icon
      button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 8, bottom: 0, right: 0)
      button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 12)
      return button
  }
}
