//
//  FeedsCell.swift
//  InfiniteScrollableFeedsViewApp
//
//  Created by Bhawna on 14/08/21.
//

import UIKit
import SDWebImage
import Kingfisher


class TableViewBaseCell: UITableViewCell {
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupCell()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCell() {
        
    }
}

class FeedsCell: TableViewBaseCell {
    
    func configureCell(imgageUrlStr:String?, feedTittle:String?,feedNoofComments:Int?,feedScore:Int?,thumbnailWidth: Int, thumbnailHeight: Int) {
        print(imgageUrlStr!)

        feedImageView.sd_setImage(with: URL(string: imgageUrlStr!), placeholderImage: UIImage(), options: []) { (image, error, SDImageCacheType, url) in
            if(image != nil) {
            if image?.size.width != 0 {
                let ratio = thumbnailHeight/thumbnailWidth
            if (ratio < 1){

             let newImage =  self.ResizeImage(image: image!, targetSize: CGSize(width: self.contentView.bounds.width, height: self.contentView.bounds.width*2))
                print("image set case 1")
                self.feedImageView.image = newImage
            } else if ( ratio == 1){
                let newImage =  self.ResizeImage(image: image!, targetSize: CGSize(width: self.contentView.bounds.width, height: self.contentView.bounds.width))
                print("image set case 2")
                self.feedImageView.image = newImage
            } else if( ratio > 1){
                let newImage =  self.ResizeImage(image: image!, targetSize: CGSize(width: self.contentView.bounds.width*2, height: self.contentView.bounds.height))
                print("image set case 3")
                self.feedImageView.image = newImage
            }
        }
        }
        }
        feedImageView.setNeedsDisplay()
        feedTittleLbl.text = feedTittle ?? ""
        commentButton.setTitle(formatNumber(feedNoofComments ?? 0) , for: .normal)
        ScoreButton.setTitle(formatNumber(feedScore ?? 0), for: .normal)
    }
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        let attributedText = NSMutableAttributedString(string: "Entertainment", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 14)])
        attributedText.append(NSAttributedString(string: "\nMovie  •  4h  •  "
                                                 , attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 12), NSAttributedString.Key.foregroundColor:
            UIColor.rgb(155, green: 161, blue: 171)]))
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 4
        attributedText.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSMakeRange(0, attributedText.string.count))
        let attachment = NSTextAttachment()
        attachment.image = UIImage(named: "globe_small")
        attachment.bounds = CGRect(x: 0, y: -2, width: 12, height: 12)
        attributedText.append(NSAttributedString(attachment: attachment))
        
        label.attributedText = attributedText
        
        return label
    }()
    
    var feedImageView : UIImageView = {
        var imageView = UIImageView()
        imageView.backgroundColor = .white
        imageView.contentMode = .scaleAspectFit
        imageView.layer.masksToBounds = true
       // imageView.clipsToBounds = true
        imageView.image = UIImage(named: "aaaaa")
        return  imageView
    }()
    
    var blackShadowView : UIView = {
        var view = UIView()
        view.backgroundColor = .black
        view.alpha = 0.0
        return view
    }()
    
//    var feedScoreLbl: UILabel = {
//        var label = UILabel()
//        label.text = "#6.5"
//        label.textColor = .gray
//        label.font = UIFont.systemFont(ofSize: 12)
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
    
    var feedTittleLbl: UILabel = {
        var label = UILabel()
        label.text = "It Chapter Two"
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
        label.text = "release_date"
        label.textColor = UIColor.black
        label.font = UIFont.systemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    
    var horizontalLine : UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.gray
        return view
        
    }()
    let ScoreButton = FeedsCell.buttonForView("5.8K", imageName: IMAGE_NAME.LIKE)
    let likeButton = FeedsCell.buttonForView("5.8K", imageName: IMAGE_NAME.SHARE)
    var commentButton = FeedsCell.buttonForView(BUTTON_TITLE.COMMENT, imageName: IMAGE_NAME.COMMENT)
    let shareButton = FeedsCell.buttonForView(BUTTON_TITLE.SHARE, imageName: IMAGE_NAME.SHARE)
    
    static func buttonForView(_ title: String, imageName : String) -> UIButton{
        let button = UIButton()
        button.setTitle(title, for: UIControl.State())
        button.setTitleColor(UIColor.rgb(155, green: 161, blue: 171 ), for: UIControl.State())
        
        button.setImage(UIImage(named: imageName), for: UIControl.State()) //icono
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 8, bottom: 0, right: 0) // padding del texto en relacion a icono
        
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 12)
        
        return button
    }
    
    override func setupCell()  {

       // addSubview(nameLabel)
        addSubview(feedImageView)
        feedImageView.addSubview(blackShadowView)
        blackShadowView.fillSuperview()
        addSubview(feedTittleLbl)
        addSubview(ScoreButton)
        //addSubview(feedNoofCommentLbl)
        addSubview(horizontalLine)
        addSubview(likeButton)
        addSubview(commentButton)
        addSubview(shareButton)
        
      //  addConstraintsWithFormat("H:|-8-[v0(44)]-8-[v1]|", views:  profileImageView)
     // addConstraintsWithFormat("V:|-12-[v0]", views:  nameLabel)
        addConstraintsWithFormat("H:|-11-[v0]|", views:  feedTittleLbl)
        addConstraintsWithFormat("V:|-15-[v0]", views:  feedTittleLbl)
      //  addConstraintsWithFormat("H:|-4-[v0]-4-|", views: feedTittleLbl)
        addConstraintsWithFormat("H:|[v0]|", views: feedImageView)
        addConstraintsWithFormat("H:|-12-[v0(100)]|", views: ScoreButton)
        addConstraintsWithFormat("H:|-12-[v0]-12-|", views: horizontalLine)
        addConstraintsWithFormat("H:|[v0(v2)][v1(v2)][v2]|", views: likeButton, commentButton, shareButton)
        addConstraintsWithFormat("V:|-8-[v0]-8-[v1]-8-[v2(20)]-8-[v3(0.4)][v4(44)]|", views:
             feedTittleLbl, feedImageView, ScoreButton, horizontalLine, likeButton)
        
        addConstraintsWithFormat("V:[v0(44)]|", views: commentButton)
        addConstraintsWithFormat("V:[v0(44)]|", views: shareButton)
    }
    
    func ResizeImage(image: UIImage, targetSize: CGSize) -> UIImage {
        let size = image.size

        let widthRatio  = targetSize.width  / image.size.width
        let heightRatio = targetSize.height / image.size.height

        // Figure out what our orientation is, and use that to form the rectangle
        var newSize: CGSize
        if(widthRatio > heightRatio) {
            newSize = CGSize(width: size.width * heightRatio, height: size.height * heightRatio)
        } else {
            newSize = CGSize(width: size.width * widthRatio,  height: size.height * widthRatio)
        }

        // This is the rect that we've calculated out and this is what is actually used below
        let rect = CGRect(x: 0, y: 0, width: newSize.width, height: newSize.height)

        // Actually do the resizing to the rect using the ImageContext stuff
        UIGraphicsBeginImageContextWithOptions(newSize, false, 1.0)
        image.draw(in: rect)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return newImage!
    }

}
