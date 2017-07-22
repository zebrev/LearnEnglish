//
//  ScrollViewController.swift
//  LearnEnglish
//
//  Created by Rapax on 20.07.17.
//  Copyright © 2017 Rapax. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // set the content size to be the size our our whole frame
        self.scroll.contentSize = self.scroll.frame.size;
        
        // then set frame to be the size of the view's frame
        self.scroll.frame = self.view.frame;
        
        // now add our scroll view to the main view
        [self.view addSubview:self.scroll];
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
