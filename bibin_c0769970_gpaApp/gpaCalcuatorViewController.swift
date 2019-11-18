//
//  gpaCalcuatorViewController.swift
//  bibin_c0769970_gpaApp
//
//  Created by MacStudent on 2019-11-16.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit
import  AVFoundation

class gpaCalcuatorViewController: UITableViewController {
    
    
    var audion : AVAudioPlayer!
    var student : Int?
    //var delGPA: semTableViewController?
    let claps = ["win"]
    var total = 0.0
    var totalcredit = 0.0
    var gpa = 0.0
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    
   // @IBAction func calculateGpa(_ sender: UIButton) {
        
        
       // for temp1 in courseibrary.indices {
            
         //   let mark = Int(courseTotalmark[c].text)
            //Student.studentData[delGPA!.stIndex].studentMarks[delGPA!.semIndex[c]] = marks
            
           // let grade = Double(gpaCalculate(mark))
            
          //  let credit = CourseCredit(courselibrary[c].text!)
            
          // GPATotal += (grade * credit)
            
          //  totalcredit += Double(courseCredit(courselibrary[c].text))
            
            
            
      //  }
        
       // gpa = total/totalcredit
        
        //Student.studentDetails[delGPA!.index].studentGPA[delGPA!.semIndex] = gpa
       // gpalibrary.text! = String(format: "GPA: %.2f / 4",(gpa))
        
        
        
      //  if gpa >= 2.0 {
            
       //     let clapURL = bundle.main.url(forResource: "Win", withExtension: "wav")
       //     audio = try! AVAudioPlayer(contentsOf: clapURL)
      //      audio.play()
            
      //  }
        
   // }
    
    func gpaCalculate(_ grades : Int) ->Double  {
        
        switch grades
        
        {
            
        case 0...49: return 0.0
        case 50...59: return 1.0
        case 60...62: return 1.7
        case 63...66: return 2.0
        case 67...69: return 2.3
        case 70...72: return 2.7
        case 73...76: return 3.0
        case 77...79: return 3.2
        case 80...86: return 3.5
        case 87...93: return 3.7
        case 94...100: return 4.0
        default : return 0.0
            
            
            
            
            
            
            
        }
        
        
        
       // func courseCredit(_ courseName: String)-> Double {
            
            
            
         //   return Double(String(courseName.index(before: courseName.endIndex)))
            
            
            
       // }
        
       // func viewWillDisappear(_ animated: Bool) {
            
            
         //   delGPA?.tableview.reloadData()
         
            
      //  }
        
        
   // }
    
    
    
    
    
    
    
    }
}
