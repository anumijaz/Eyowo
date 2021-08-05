//
//  DetailFruitViewController.swift
//  Eyowo
//
//  Created by Anum Ijaz on 28/07/2021.
//  Copyright © 2021 Anum Ijaz. All rights reserved.
//

import UIKit

class DetailFruitViewController: UIViewController {

    
    @IBOutlet var Fruit_image: UIImageView!
    
    @IBOutlet var Fruit_Name: UILabel!
    
    @IBOutlet var Fruit_desc: UILabel!
    var f_title:String?
    var f_detail:String?
    var f_image:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title="Fruit Detail"
        Fruit_Name?.text=f_title!;
        Fruit_desc?.text=f_detail!;
        Fruit_image?.image=UIImage(named:f_image!);
        
    }
    

    

}
