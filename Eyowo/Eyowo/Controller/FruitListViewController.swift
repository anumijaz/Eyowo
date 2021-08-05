//
//  FruitListViewController.swift
//  Eyowo
//
//  Created by Anum Ijaz on 27/07/2021.
//  Copyright © 2021 Anum Ijaz. All rights reserved.
//

import UIKit

class FruitListViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!;
    var data = [FruitData]()
    var fruit_model = [FruitModel]()

    override func viewDidLoad() {
        super.viewDidLoad()
        title="FruitList";
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target:self, action: #selector(logout));
        
        populateTableview();
        tableView.delegate=self;
        tableView.dataSource=self;
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return fruit_title.count;
        return data.count;
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell=tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath as IndexPath)
            as! FruitTableViewCell;
        let fruitData = data[indexPath.row]
        cell.Desclbl.text = fruitData.description
        cell.FruitName.text = fruitData.name
        cell.ImageView?.image = UIImage(named: fruitData.image)
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let model = fruit_model[indexPath.row];
        
        let detail_fruit=storyboard?.instantiateViewController(withIdentifier: "DetailFruitViewController") as? DetailFruitViewController;
        detail_fruit?.f_image = model.fruit_image!;
        detail_fruit?.f_title=model.fruit_name!;
        detail_fruit?.f_detail=model.fruit_desc!;
        navigationController?.pushViewController(detail_fruit!, animated: true);
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160;
    }
    @objc func logout(){
        let appdelegate = UIApplication.shared.delegate as! AppDelegate
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        UserDefaults.standard.set(false, forKey:"Login")
        var rootVC:UIViewController?
        rootVC = storyboard.instantiateViewController(withIdentifier: "LoginController")
        let navigationController = UINavigationController.init(rootViewController: rootVC!);
        appdelegate.window?.rootViewController = navigationController
        appdelegate.window?.makeKeyAndVisible()
        
    }
    func populateTableview(){
        FruitService.getFruits(){ fruitresponse in
            self.data = fruitresponse.fruitsList;
            self.tableView.reloadData()
        }
        
    }
        
}
