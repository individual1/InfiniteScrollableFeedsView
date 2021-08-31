//
//  FeedsCell.swift
//  InfiniteScrollableFeedsViewApp
//
//  Created by Bhawna on 14/08/21.
//

import UIKit
import SDWebImage

class FeedsCell: TableViewBaseCell {
    
    var feedImageView: UIImageView = {
        var imageView = UIImageView()
        imageView.backgroundColor = .white
        imageView.contentMode = .scaleAspectFit
        imageView.layer.masksToBounds = true
        imageView.image = UIImage(named: ImageName.placeholder)
        return  imageView
    }()
    
    var blackShadowView: UIView = {
        var view = UIView()
        view.backgroundColor = .black
        view.alpha = 0.0
        return view
    }()
    
    var feedTittleLbl: UILabel = {
        var label = UILabel()
        label.text = "Tittle"
        label.textColor = UIColor.black
        label.numberOfLines = 0
        label.allowsDefaultTighteningForTruncation = true
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.frame = CGRect(x:0,y:0,width:label.intrinsicContentSize.width,height:label.intrinsicContentSize.height)
        return label
    }()
    
    var feedNoofCommentLbl: UILabel = {
        var label = UILabel()
        label.text = "4.1K"
        label.textColor = UIColor.black
        label.font = UIFont.systemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
        
    var horizontalLine: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.gray
        return view
    }()
    
       let scoreButton = UIButton().buttonForView("", imageName: ImageName.like)
       let likeButton = UIButton().buttonForView("", imageName: ImageName.like)
       var commentButton = UIButton().buttonForView(ButtonTittle.comment, imageName: ImageName.comment)
       let shareButton = UIButton().buttonForView(ButtonTittle.share, imageName: ImageName.share)
       var newImgHeight: Int?
        
    func configureCell(feedsItem: FeedsModel) {
        feedTittleLbl.text = feedsItem.title ?? ""
        commentButton.setTitle(formatNumber(feedsItem.num_comments ?? 0) , for: .normal)
        likeButton.setTitle(formatNumber(feedsItem.score ?? 0), for: .normal)
        
        feedImageView.sd_setImage(with: URL(string: feedsItem.thumbnail!),
                                  placeholderImage: UIImage.init(named: ImageName.placeholder),
                                  options: [])
                                  { (image, error, SDImageCacheType, url) in
                                     if let _ = image {
                                        let ratio = (feedsItem.thumbnailHeight ?? 1)/(feedsItem.thumbnailWidth ?? 1)
                                        self.newImgHeight = Int(UIScreen.main.bounds.width) * ratio
                                     } else {
                                        self.feedImageView.image = UIImage.init(named: ImageName.placeholder)
                                     }
                                  }
    }
    
    override func setupCell()  {
        addSubview(feedTittleLbl)
        addSubview(horizontalLine)
        addSubview(likeButton)
        addSubview(commentButton)
        addSubview(shareButton)
        addSubview(feedImageView)
        feedImageView.addSubview(blackShadowView)
        blackShadowView.fillSuperview()
    
        addConstraintsWithFormat("H:|-11-[v0]|", views:  feedTittleLbl)
        addConstraintsWithFormat("H:|[v0]|", views: feedImageView)
        addConstraintsWithFormat("H:|-12-[v0]-12-|", views: horizontalLine)
        addConstraintsWithFormat("H:|[v0(v2)][v1(v2)][v2]|", views: likeButton, commentButton, shareButton)
        addConstraintsWithFormat("V:|-8-[v0]-8-[v1(\(newImgHeight ?? Int(UIScreen.main.bounds.width)))]-8-[v2(0.4)][v3(44)]|",
                                 views: feedTittleLbl, feedImageView, horizontalLine, likeButton)
        addConstraintsWithFormat("V:[v0(44)]|", views: commentButton)
        addConstraintsWithFormat("V:[v0(44)]|", views: shareButton)
    }
}
