//
//  ListGroupViewController.swift
//  LearnEnglish
//
//  Created by Rapax on 20.07.17.
//  Copyright © 2017 Rapax. All rights reserved.
//

import UIKit

class ListGroupViewController: UIViewController {

    @IBOutlet weak var ScrollGroup: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        /*
        self.ScrollGroup.contentSize=self.ScrollGroup.frame.size;
        
        // then set frame to be the size of the view's frame
        self.ScrollGroup.frame = self.view.frame;
        
        // now add our scroll view to the main view
        self.view .addSubview(self.ScrollGroup);
        */
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func pushGroupButton(_ sender: Any) {

        
        /*
         self.myViewControllerTab1 = [[MyViewControllerTab1 alloc] initWithNibName:@"MyViewControllerTab1" bundle:nil];
         
         //скрываем нижнюю панельку таббара
         self.hidesBottomBarWhenPushed = YES;
         
         UIButton *Button;
         Button=sender;
         
         self.myViewControllerTab1.Push_GroupID=Button.tag;
         [[self navigationController] pushViewController:self.myViewControllerTab1 animated:YES];
         
         self.hidesBottomBarWhenPushed=NO;
         
 */

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        /*
        if segue.identifier == "details" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationVC = segue.destination as! DetailsCollectionViewController
                //                destinationVC.city = cityList[indexPath.row]
                destinationVC.detailsCity = classCityList[indexPath.row]
            }
            
        }
 */
        
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
