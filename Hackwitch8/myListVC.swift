//
//  myListVC.swift
//  Hackwitch8
//
//  Created by Jaquawn Yarborough on 4/20/18.
//  Copyright © 2018 CM Student. All rights reserved.
//

import UIKit

class myListVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    @IBOutlet weak var tableView: UITableView!
    
    var restaurantArray = [ " Bubba Gumps", " Mortons", " Tanaka of Tokyo" , "Mai Tai's", "Mcdonald's", " Cinnabon"]
    
    var restaurantImageData = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        
        self.tableView.dataSource = self
        
        
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:"cellReuseIdentifier")
        let text = restaurantArray[indexPath.row]
        cell?.textLabel?.text = text
        return cell!
        
        func tableView(_ tableView:UITableView, didSelectRowAt indexpath: IndexPath  ){
            tableView.deselectRow(at: <#T##IndexPath#>, animated: true)
        }
        
      
        
        
        let path = Bundle.main.path(forResource: "Property list", ofType:"pList")
        let dict = NSDictionary(contentsOfFile: path!)
       
        restaurantImageData = dict!.object(forKey: restaurantImage) as! [String]
        
        
            
    
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
