//
//  ViewController.swift
//  OverCurrentContextModalPresenationLeak
//
//  Created by Rajiv Jhoomuck on 22/04/2021.
//

import UIKit

class ViewController: UIViewController {
  deinit {
    print("Deiniting ViewController")
  }
}

class PresentingVC: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()

    definesPresentationContext = true
  }

  deinit {
    print("Deiniting PresentingVC")
  }
}

class ModalVC: UIViewController {

  @IBAction func dismiss() { dismiss(animated: true, completion: nil) }

  deinit {
    print("Deiniting ModalVC")
  }
}
