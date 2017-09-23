//
//  ViewController.swift
//  VCLifeCycle
//
//  Created by Alexey Danilov on 23/09/2017.
//  Copyright © 2017 DanilovDev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var counter = 0
    
    @IBOutlet var logTextView: UITextView!
    
    override func loadView() {
        super.loadView()
        self.counter += 1
        self.logTextView.text = self.logTextView.text + "\n \(self.counter) loadView"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.counter += 1
        self.logTextView.text = self.logTextView.text + "\n \(self.counter) viewDidLoad"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.counter += 1
        self.logTextView.text = self.logTextView.text + "\n \(self.counter) viewWillAppear"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.counter += 1
        self.logTextView.text = self.logTextView.text + "\n \(self.counter) viewDidAppear"
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        self.counter += 1
        self.logTextView.text = self.logTextView.text + "\n \(self.counter) viewWillLayoutSubviews"
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.counter += 1
        self.logTextView.text = self.logTextView.text + "\n \(self.counter) viewDidLayoutSubviews"
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.counter += 1
        self.logTextView.text = self.logTextView.text + "\n \(self.counter) viewWillDisappear"
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        self.counter += 1
        self.logTextView.text = self.logTextView.text + "\n \(self.counter) viewDidDisappear"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        self.counter += 1
        self.logTextView.text = self.logTextView.text + "\n \(self.counter) viewWillTransition"
    }
    
    @IBAction func showDetailsButtonTapped(sender: UIButton) {
        self.performSegue(withIdentifier: "ShowDetails", sender: self)
    }
    
    @IBAction func clearLogButtonTapped(sender: UIButton) {
        self.logTextView.text = ""
        self.counter = 0
    }
    
    
}

