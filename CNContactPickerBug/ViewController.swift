//
//  ViewController.swift
//  CNContactPickerBug
//
//  Created by Parveen Kaler on 2018-11-20.
//  Copyright © 2018 Parveen Kaler. All rights reserved.
//

import UIKit
import ContactsUI

class ViewController: UIViewController {

    @IBAction func goTapped(_ sender: UIButton) {
        let picker = CNContactPickerViewController()
        picker.delegate = self
        present(picker, animated: true, completion: nil)
    }
}

extension ViewController: CNContactPickerDelegate {
    func contactPicker(_ picker: CNContactPickerViewController, didSelect contacts: [CNContact]) {
        contacts.forEach { print($0.givenName) }
    }
}
