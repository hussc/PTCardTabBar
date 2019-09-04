//
//  UIView+AutoLayout.swift
//  Prayer Times Reminder
//
//  Created by Hussein Al-Ryalat on 8/6/18.
//  Copyright © 2018 SketchMe. All rights reserved.
//

import UIKit

extension UIView {
    func pinToSafeArea(top: CGFloat? = 0, left: CGFloat? = 0, bottom: CGFloat? = 0, right: CGFloat? = 0){
        guard let superview = self.superview else { return }
        
        prepareForAutoLayout()
        
        var guide: UILayoutGuide
        if #available(iOS 11.0, *) {
            guide = superview.safeAreaLayoutGuide
        } else {
            guide = superview.layoutMarginsGuide
        }
        
        if let top = top {
            self.topAnchor.constraint(equalTo: guide.topAnchor, constant: top).isActive = true
        }
        
        if let bottom = bottom {
            self.bottomAnchor.constraint(equalTo: guide.bottomAnchor, constant: bottom).isActive = true
        }
        
        if let left = left {
            self.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: left).isActive = true
        }
        
        if let right = right {
            self.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: right).isActive = true
        }
    }
    
    func pinToSuperView(top: CGFloat? = 0, left: CGFloat? = 0, bottom: CGFloat? = 0, right: CGFloat? = 0){
        guard let superview = self.superview else { return }
        
        prepareForAutoLayout()
        
        if let top = top {
            self.topAnchor.constraint(equalTo: superview.topAnchor, constant: top).isActive = true
        }
        
        if let bottom = bottom {
            self.bottomAnchor.constraint(equalTo: superview.bottomAnchor, constant: bottom).isActive = true
        }
        
        if let left = left {
            self.leadingAnchor.constraint(equalTo: superview.leadingAnchor, constant: left).isActive = true
        }
        
        if let right = right {
            self.trailingAnchor.constraint(equalTo: superview.trailingAnchor, constant: right).isActive = true
        }
    }
    
    func centerInSuperView(){
        guard let superview = self.superview else { return }
        
        prepareForAutoLayout()
        
        self.centerXAnchor.constraint(equalTo: superview.centerXAnchor).isActive = true
        self.centerYAnchor.constraint(equalTo: superview.centerYAnchor).isActive = true
    }
    
    func constraint(width: CGFloat){
        prepareForAutoLayout()
        self.widthAnchor.constraint(equalToConstant: width).isActive = true
    }
    
    func constraint(height: CGFloat){
        prepareForAutoLayout()
        self.heightAnchor.constraint(equalToConstant: height).isActive = true
    }
    
    func makeWidthEqualHeight(){
        prepareForAutoLayout()
        self.widthAnchor.constraint(equalTo: self.heightAnchor).isActive = true
    }
    
    func prepareForAutoLayout(){
        translatesAutoresizingMaskIntoConstraints = false
    }
}

