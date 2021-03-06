//
//  CustomCell.swift
//  Table
//
//  Created by Maze Geek on 7/9/18.
//  Copyright © 2018 Amit Biswas. All rights reserved.
//

import Foundation
import UIKit



class CustomCell: UITableViewCell{
    
    var mainimage: UIImage?
    var message: String?
    
    var messageView : UITextView = {
        
        var textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.isScrollEnabled = false
        return textView
    }()
    
    var mainImageView : UIImageView = {
       
      var imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        
        return imageView
        
    }()
  
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addSubview(mainImageView)
        self.addSubview(messageView)
        
        
        // adding constraint on layout
        mainImageView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        mainImageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        mainImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        mainImageView.widthAnchor.constraint(equalToConstant : 150).isActive = true
        mainImageView.heightAnchor.constraint(equalToConstant: 150).isActive = true
       
        
        messageView.leftAnchor.constraint(equalTo: self.mainImageView.rightAnchor).isActive = true
        messageView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        messageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        messageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
       
    }
    
    override func layoutSubviews() {
       super.layoutSubviews()
        if let message = message{
            messageView.text = message
        }
       if let image = mainimage {
            mainImageView.image = image
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   
    

    
    
}
