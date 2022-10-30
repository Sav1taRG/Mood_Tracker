//
//  ResultTableViewController.swift
//  MoodTracker
//
//  Created by hiirari on 29.10.2022.
//

import UIKit

class ResultTableViewController: UITableViewController {
    
    var daysInfo: [DayInfo]!
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 50
        

    }
    
    // MARK: - Table view data source
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        daysInfo.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "allResult", for: indexPath)
        let result = daysInfo[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = result.date
        content.secondaryText = getEmojis(result: result)
        cell.contentConfiguration = content
//        print(result)
        
        
        return cell
    }
    
    private func getEmojis(result: DayInfo ) -> String {
        var moodEmoji = " "
        for mood in result.moods {
            moodEmoji += mood.definition
        }
        return moodEmoji
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailVC = segue.destination as? DetailedResultViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        detailVC.day = daysInfo[indexPath.row]
    }
    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let day = days[indexPath.row]
//        performSegue(withIdentifier: "showDetailedDay", sender: day)
//    }
    
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }
    
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
    
    
//    // MARK: - Navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let detailedDayVC = segue.destination as? DetailedResultViewController
//        detailedDayVC?.day = sender as? DayInfo
//
//    }
}
