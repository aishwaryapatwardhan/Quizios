//
//  DataViewController.swift
//  Quiz
//
//  Created by admin on 12/2/16.
//  Copyright © 2016 admin. All rights reserved.
//

import UIKit


class DataViewController: UIViewController {
    @IBOutlet weak var progressView: UIProgressView!

    //@IBOutlet weak var dataLabel: UILabel!
    var dataObject: String = ""

    @IBOutlet weak var Addition: UILabel!
    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var Button3: UIButton!
    @IBOutlet weak var Button4: UIButton!
    @IBOutlet weak var Button5: UIButton!
    @IBOutlet weak var Button6: UIButton!
    @IBOutlet weak var Button7: UIButton!
    @IBOutlet weak var Button0: UIButton!
   // @IBOutlet weak var ButtonBack: UIButton!
    //@IBOutlet weak var ButtonBack: UIButton!
    
    @IBOutlet weak var NavBackButton: UIBarButtonItem!
    
  //  @IBOutlet weak var NavBack: UIBarButtonItem!
    
    @IBOutlet weak var ClearButton: UIButton!
    
    @IBOutlet weak var ButtonEnter: UIButton!
    @IBOutlet weak var Button8: UIButton!
    
    //@IBOutlet weak var Button9: UIButton!
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var QuestionLable2: UILabel!
    @IBOutlet weak var QuestionLable1: UILabel!
    @IBOutlet weak var Countdowm: UILabel!
   // @IBOutlet weak var Countdown: UILabel!
    @IBOutlet weak var QuestionNumber: UILabel!
   
    @IBOutlet weak var Button9: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        _ = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
        Question()
    }
    
    var totalquestion = 1
    var correct = 0
    var counter = 6
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLayoutSubviews() {
      
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //self.dataLabel!.text = dataObject
    }
    
    func timerAction() {
        if (counter > 0 )
        {
        counter -= 1
        Countdowm.text = "Time Left \(counter)"
        }
        else{
        Question()
        }
        
    }
    
    
    func Question(){
        if (totalquestion <= 10 )
        {
            counter = 6
            QuestionLable1.text = String(RandomNumber())
            QuestionLable2.text = String(RandomNumber())
            textField.text = "0"
            QuestionNumber.text = String(totalquestion) + " out of 10";
            NSLog(String(totalquestion) + " out of 10")
            //_ = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
            totalquestion += 1
        }
        else
        {
            NSLog(String(correct) + "  correct")
            NSLog(String(totalquestion) + "  totalquestion")
            let alertController = UIAlertController(title: "Quiz Completed ", message: "correct answer's  " + String(correct) ,preferredStyle: .alert)
            
            let actionYes = UIAlertAction(title: "Exit", style: .default) {
                (action:UIAlertAction) in
                print("You've pressed the Yes button");
              //   self.navigationController?.popToRootViewController(animated: true)
                self.dismiss(animated: true, completion: nil);
                
            }
           // self.dismiss(animated: true, completion: nil);
            
            
            alertController.addAction(actionYes)
           // alertController.addAction(actionNo)
            self.present(alertController, animated: true, completion:nil)

            
        }
    }

    
    func RandomNumber() -> UInt32{
        var RandomNumber = arc4random() % 10
        RandomNumber += 1
        return RandomNumber
    }
    
    func check()
    {
       
        
        if (Int(QuestionLable1.text!)! + Int(QuestionLable2.text!)! == Int(textField.text!)!)
        {
            NSLog("correct")
            correct += 1
            NSLog(String(correct) + "correct")
            NSLog(String(totalquestion) + "total question")
           // timer.invalidate()
            Question()
        }
        else
        {
            NSLog("wrong")
            //Question()
        }
        
    }
    
    func textbox(no1: Int)
    {
        if textField.text == "" {
            textField.text = String(no1)
        }
        
        else
        {
          let x = Int(textField.text!)!
            
           // NSLog(String(x))
       textField.text = String((x * 10) + no1)
        }
    }
    
    
    @IBAction func Button1Action(_ sender: Any) {
        textbox(no1: 1)
        //textField.text = String(1)
        check()}
    
    
    @IBAction func Button2Action(_ sender: Any) {
        textbox(no1: 2)
        //textField.text = String(1)
        check()}
    
    
    @IBAction func Button3Action(_ sender: Any) {
        textbox(no1: 3)
        //textField.text = String(1)
        check()}
    
    
    
    
    
    @IBAction func Button4Action(_ sender: Any) {
        textbox(no1: 4)
        //textField.text = String(1)
        check()}
    
    
    @IBAction func Button5Action(_ sender: Any) {
        textbox(no1: 5)
        //textField.text = String(1)
        check()}
    
    
    
    
    
    
    @IBAction func Button6Action(_ sender: Any) {
        textbox(no1: 6)
        //textField.text = String(1)
        check()}
    @IBAction func Button7Action(_ sender: Any) {
        textbox(no1: 7)
        //textField.text = String(1)
        check()}
    
    @IBAction func Button8Action(_ sender: Any) {
        textbox(no1: 8)
        //textField.text = String(1)
        check()}
    
    
    @IBAction func Button9Action(_ sender: Any) {
        textbox(no1: 9)
        //textField.text = String(1)
        check()
    }
    
   
    @IBAction func ClearButtonAction(_ sender: Any) {
        textField.text = "0"
        
        
    }
    
    
    
    @IBAction func NavBackButtonAction(_ sender: UIBarButtonItem) {
        let alertController = UIAlertController(title: "Do you want to exit ", message: "yes for main screen" ,preferredStyle: .alert)
        
        let actionYes = UIAlertAction(title: "Yes", style: .default) {
            (action:UIAlertAction) in
            print("You've pressed the Yes button");
            //self.navigationController?.popToRootViewController(animated: true)
            self.dismiss(animated: true, completion: nil);
            
        }
        
        let actionNo = UIAlertAction(title: "No", style: .default) {
            (action:UIAlertAction) in
            print("You've pressed No button");
        }
        
        alertController.addAction(actionYes)
        alertController.addAction(actionNo)
        self.present(alertController, animated: true, completion:nil)
        
    }
    
    
    
    
    @IBAction func Button0Action(_ sender: Any) {
        textbox(no1: 0)
        //textField.text = String(1)
        check()
    }
    
    
    
    
    
    
    @IBAction func ButtonEnterAction(_ sender: Any) {
    
        
        if (Int(QuestionLable1.text!)! + Int(QuestionLable2.text!)! == Int(textField.text!)!)
        {
            // NSLog("correct")
            correct += 1
            NSLog(String(correct))
            NSLog(String(totalquestion))
            Question()
        }
        else
        {
            // NSLog("wrong")
            Question()
        }
    }
    
}

