//
//  ViewController.swift
//  mail
//
//  Created by Adam Moreno on 7/2/18.
//  Copyright © 2018 Adam Moreno. All rights reserved.
//

import UIKit
import MessageUI

class ViewController: UIViewController, MFMailComposeViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func send(_ sender: Any) {
        let sendMailVC = configureMailController()
        if MFMailComposeViewController.canSendMail(){
            self.present(sendMailVC, animated: true, completion: nil)
        }
        else{
            showMailError()
        }
    }
    
    func configureMailController() -> MFMailComposeViewController{
        let mailComposerVC = MFMailComposeViewController()
        mailComposerVC.mailComposeDelegate = self
        mailComposerVC.setToRecipients(["clpowerpalletchecklist@gmail.com", "abeangoalie39@gmail.com"])
        mailComposerVC.setSubject("ForkLift #PP1 Issue")
        mailComposerVC.setMessageBody("Hi Mom", isHTML: false)
        
        return mailComposerVC
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        switch result {
        case .cancelled:
            print("canceled")
            break
        case .failed:
            print("big nope")
            break
        case .saved:
            print("saved")
            break
        case .sent:
            
            break
        }
        controller.dismiss(animated: true, completion: {
            self.performSegue(withIdentifier: "by", sender: nil)
            
        })
    }
    
    func showMailError(){
        let sendMailErrorAlert =  UIAlertController (title:"Could not send Email to the following recipient", message: "Please notify your supervicer of the issue.", preferredStyle: .alert)
        let ok:UIAlertAction = UIAlertAction(title: "OK", style: .default){
            (_:UIAlertAction) in
            //self.performSegue(withIdentifier: "emailDone", sender: nil)
        }
        sendMailErrorAlert.addAction(ok)
        self.present(sendMailErrorAlert, animated: true, completion: nil)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

