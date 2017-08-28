//
//  ViewController.swift
//  2 tableview
//
//  Created by apcs2 on 8/23/17.
//  Copyright © 2017 apcs2. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{

    @IBOutlet weak var tableViewOne: UITableView!
    
    @IBOutlet weak var tableViewTwo: UITableView!
    
    var pizzaToppings = [Toppings]()
    var finalPizzaVar = [finalPizza]()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        let toppings1 = Toppings(topping: "cheese")
        let toppings2 = Toppings(topping: "pepperoni")
        let toppings3 = Toppings(topping: "Pineapple")
        let toppings4 = Toppings(topping: "bacon")
        let toppings5 = Toppings(topping: "sausage")
        let ingrediants1 = finalPizza(ingrediants: "cheese")
        
        pizzaToppings.append(toppings1)
        pizzaToppings.append(toppings2)
        pizzaToppings.append(toppings3)
        pizzaToppings.append(toppings4)
        pizzaToppings.append(toppings5)
        finalPizzaVar.append(ingrediants1)
        
        tableViewOne.delegate = self
        tableViewOne.dataSource = self
        tableViewTwo.delegate = self
        tableViewTwo.dataSource = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        var count: Int?
        
        if tableView == self.tableViewOne
        {
            count = pizzaToppings.count
        }
        if tableView == self.tableViewTwo
        {
            count = finalPizzaVar.count
        }
        return count!
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        var cell: UITableViewCell?
        
        if tableView == self.tableViewOne
        {
            cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell?.textLabel?.text = pizzaToppings[indexPath.row].topping
            cell?.textLabel?.font = UIFont(name: "HelveticaNeue-Bold", size: 16.0)
        }
        
        if tableView == self.tableViewTwo
        {
            cell = tableView.dequeueReusableCell(withIdentifier: "finalcell", for: indexPath)
            cell?.textLabel?.text = finalPizzaVar[indexPath.row].ingrediants
            cell?.textLabel?.font = UIFont(name: "HelveticaNeue-Bold", size: 16.0)
        }
        return cell!
        //hih
        }
    




}
