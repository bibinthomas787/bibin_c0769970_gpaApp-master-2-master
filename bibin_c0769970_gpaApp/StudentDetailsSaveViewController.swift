//
//  StudentDetailsSaveViewController.swift
//  bibin_c0769970_gpaApp
//
//  Created by MacStudent on 2019-11-16.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

struct Student {
    
    var FirstName: String
    var LastName: String
    var ID: String
    var studentMarks = [[0,0,0,0,0],[0,0,0,0,0],[0,0,0,0,0]]
    var studentGPA = [0.0,0.0,0.0]
    var studentCGPA: Double{
        
        return (studentGPA[0] + studentGPA[1] + studentGPA[2]) / 3
    }
    
    static var studentDetails = [Student]()
    
}



class StudentDetailsSaveViewController: UIViewController {
    
    var deleteMain: MainTableViewController?
    
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var last: UITextField!
    
    @IBOutlet weak var ID: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func saveFunction(_ sender: UIButton) {
        
           let firstName: String = name.text!
             let lastName: String = last.text!
             let studentId: String = ID.text!
         if (firstName.isEmpty || lastName.isEmpty || studentId.isEmpty)  {
                   
                    let alertController = UIAlertController(title: "Alert", message: "Please fill all the fields", preferredStyle: .alert)
                    
                    let cancelAction = UIAlertAction(title: "Ok", style: .default, handler: { (action : UIAlertAction!) -> Void in })

                    alertController.addAction(cancelAction)

                    self.present(alertController, animated: true, completion: nil)
                   
               }
        
         else {
            
            for stud in Student.studentDetails {
                
                if stud.ID == ID.text {
                    
                    
                    let alertController = UIAlertController(title: "Student ID Taken", message: "Sorry. pleae enter diffrent student ID", preferredStyle: .alert)
                    
                    let OK = UIAlertAction(title: "Ok", style: .default, handler: { (action : UIAlertAction!) -> Void in })

                    alertController.addAction(OK)

                    self.present(alertController, animated: true, completion: nil)
                    
                    return
                    
                }
                
                
            }
            
            // saving the data
            
            
            let saveAlert = UIAlertController(title: nil, message: "Are you sure you want to save", preferredStyle: .actionSheet)
            
            let temp1 = UIAlertAction(title: "No", style: .cancel, handler: nil)
            let temp2 = UIAlertAction(title: "Yes", style: .default, handler: { (action) in
                
                
                self.saveTheContact()
            })
            
            saveAlert.addAction(temp1)
            saveAlert.addAction(temp2)
            self.present(saveAlert,animated: true,completion: nil)
            
        }
        
        
        
    }
    // function to save the contact detail

    func saveTheContact(){
        
        
        let saveAlert = UIAlertController(title: "Contact Saved !", message: "", preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "OK", style: .cancel, handler: {(action)  in
            
            let s = Student(FirstName: self.name.text!,LastName: self.last.text!,ID:self.ID.text!)
            Student.studentDetails.append(s)
            self.name.text = nil
            self.last.text = nil
            self.ID.text = nil
            
            
        })
        
        saveAlert.addAction(ok)
        self.present(saveAlert,animated: true,completion: nil)
        
        
        
    }
    
    
    
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
