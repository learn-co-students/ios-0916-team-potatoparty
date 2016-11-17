//
//  AddContactViewControllerExtension.swift
//  PotatoParty
//
//  Created by Ariela Cohen on 11/17/16.
//  Copyright © 2016 ForrestApps. All rights reserved.
//

import Foundation
import UIKit
import SnapKit


extension AddContactViewController {
    
    func layoutElements() {
        
       view.backgroundColor = UIColor.orange
        
        view.addSubview(nameTextField)
        nameTextField.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.topMargin.equalToSuperview().offset(view.frame.height/4)
            make.width.equalToSuperview().multipliedBy(0.60)
            make.height.equalTo(nameTextField.snp.width).multipliedBy(0.25)
        }
        
        nameTextField.backgroundColor = UIColor.blue
        nameTextField.text = "Name"
        
        
        view.addSubview(emailTextField)
        emailTextField.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.topMargin.equalTo(nameTextField.snp.bottomMargin).offset(40)
            make.width.equalTo(nameTextField)
            make.height.equalTo(nameTextField)
        }
        
        emailTextField.backgroundColor = UIColor.blue
        emailTextField.text = "example@serviceprovider"
        
        view.addSubview(groupDropDown)
        groupDropDown.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.topMargin.equalTo(emailTextField.snp.bottomMargin).offset(40)
            make.width.equalTo(emailTextField)
            make.height.equalTo(emailTextField)
        }
        
        groupDropDown.backgroundColor = UIColor.blue
        
        view.addSubview(addButton)
        addButton.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.topMargin.equalTo(groupDropDown.snp.bottomMargin).offset(40)
            make.width.equalTo(nameTextField.snp.width).multipliedBy(0.5)
            make.height.equalTo(nameTextField.snp.height).multipliedBy(0.5)
        }
        
        addButton.backgroundColor = UIColor.blue
        addButton.setTitle("Add", for: .normal)
        addButton.addTarget(self, action: #selector(self.addButtonTapped), for: .touchUpInside)
        
        
        view.addSubview(importContactsButton)
        importContactsButton.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.topMargin.equalTo(addButton).offset(120)
            make.width.equalTo(nameTextField.snp.width).multipliedBy(0.75)
            make.height.equalTo(addButton.snp.height)
        }
        
        importContactsButton.backgroundColor = UIColor.blue
        importContactsButton.setTitle("Import from Contacts", for: .normal)
        importContactsButton.addTarget(self, action: #selector(self.importContactButtonTapped), for: .touchUpInside)
        
        view.addSubview(cancelButton)
        cancelButton.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.topMargin.equalTo(importContactsButton).offset(40)
            make.width.equalTo(addButton.snp.width)
            make.height.equalTo(addButton.snp.height)
        }
        
        cancelButton.backgroundColor = UIColor.blue
        cancelButton.setTitle("Cancel", for: .normal)
        cancelButton.addTarget(self, action: #selector(self.cancelButtonTapped), for: .touchUpInside)
    }
    
}
