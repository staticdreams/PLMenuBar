//
//  PLMenuDetailDescView.swift
//  PLMenuBar
//
//  Created by Patrick Lin on 4/13/16.
//  Copyright © 2016 Patrick Lin. All rights reserved.
//

public class PLMenuDetailDescView: PLMenuDetailView {
    
    var text: String = "";
    
    // MARK: Public Methods
    
    override public func layoutSubviews() {
        
        super.layoutSubviews();
     
        self.contentViews[0].frame = self.bounds;
        
    }
    
    // MARK: Init Methods
    
    func commonInit() {
        
        let content: UILabel = UILabel();
        
        content.numberOfLines = 0;
        
        content.font = UIFont.systemFontOfSize(20);
        
        content.textAlignment = NSTextAlignment.Justified;
        
        content.text = self.text;
        
        self.addSubview(content);
        
        self.contentViews.append(content);
        
    }
    
    convenience init(text: String) {
        
        self.init(frame: CGRectZero);
        
        self.text.appendContentsOf(text);
        
        self.commonInit();
        
    }

}
