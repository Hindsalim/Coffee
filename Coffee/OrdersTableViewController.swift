//
//  OrdersTableViewController.swift
//  Coffee
//
//  Created by HIND12 on 03/06/1443 AH.
//

import UIKit

class OrdersTableViewController: UITableViewController {
    
    
    var ordersProducts : [Products] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    
    @IBAction func editOrders(_ sender: Any) {
        tableView.isEditing.toggle()
        
        
    }
    

    override func viewWillAppear(_ animated: Bool) {
        fetchProducts()
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return ordersProducts.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "orderCell", for: indexPath)
        
        cell.imageView?.image = UIImage(named:ordersProducts[indexPath.row].image ?? "")

        cell.textLabel?.text = "\(ordersProducts[indexPath.row].name ?? "") SAR \(ordersProducts[indexPath.row].price)"

        // Configure the cell...

        return cell
    }
    
    
    func fetchProducts(){
        
        do {
       ordersProducts =   try PersistentStorage.shared.context.fetch(Products.fetchRequest())
            
        } catch {
            print(error)
        }
        
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */
    
    
    

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            let removedProduct = ordersProducts.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            
            PersistentStorage.shared.context.delete(removedProduct)
            
            do {
             try PersistentStorage.shared.context.save()
            } catch{
                print(error)
            }
            
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
   

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

}
