//
//  ViewController.swift
//  DemarkeDemoProject
//
//  Created by Dilara Can on 6.04.2021.
//

import UIKit


class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{

    
    var myMovies: [movies] = []
    var chosenMovies : movies?

    
    @IBOutlet var tableVıew: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        createData()
        initVars()
    }
    
    func initVars(){
        tableVıew.delegate = self
        tableVıew.dataSource = self
        
        let nib = UINib(nibName: "SingleTableViewCell", bundle: nil)
        tableVıew.register(nib, forCellReuseIdentifier: "SingleTableViewCell")
        
        let nibCl = UINib(nibName: "CollectionTableViewCell", bundle: nil)
        tableVıew.register(nibCl, forCellReuseIdentifier: "CollectionTableViewCell")
        
        let nibSl = UINib(nibName: "SliderTableViewCell", bundle: nil)
        tableVıew.register(nibSl, forCellReuseIdentifier: "SliderTableViewCell")
        
    }
        
    func createData(){
        let harryPotter = movies(nameMovies: "Harry Potter", detailsMovies: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ", pointMovies: "1", imageMovies: UIImage(named: "harrypotter.jpg")!)
        
        
        let yuzuklerinEfendisi = movies(nameMovies: "Yüzüklerin Efendisi", detailsMovies: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ", pointMovies: "2", imageMovies: UIImage(named: "yuzuklerinEfendisi.jpg")!)
        
        
        let meBeforeYou = movies(nameMovies: "Me Before You", detailsMovies: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ", pointMovies: "3", imageMovies: UIImage(named: "mebeforeyou.jpg")!)
        
        
        let parcalamis = movies(nameMovies: "Parcalanmis", detailsMovies: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ", pointMovies: "4", imageMovies: UIImage(named: "parcalanmis.jpg")!)
        
        
        let gladiator = movies(nameMovies: "Gladiator", detailsMovies: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ", pointMovies: "5", imageMovies: UIImage(named: "gladiator.jpg")!)
        
        
        let benjaminButton = movies(nameMovies: "Benjamin Button'ın Tuhaf Hikayesi", detailsMovies: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ", pointMovies: "6", imageMovies: UIImage(named: "benjaminButton.jpg")!)
        
        myMovies.append(harryPotter)
        myMovies.append(yuzuklerinEfendisi)
        myMovies.append(meBeforeYou)
        myMovies.append(parcalamis)
        myMovies.append(gladiator)
        myMovies.append(benjaminButton)
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myMovies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        if indexPath.row == 0 {
            //slider cell
        }
            
        
        else if indexPath.row == 1 {
          //  CollectionTableViewCell
           /* if let CollectionCell = tableView.dequeueReusableCell(withIdentifier: "CollectionTableViewCell", for: indexPath) as? SingleTableViewCell {
                CollectionCell.setupCell(movie: myMovies[indexPath.row])
                return CollectionCell
 
        */
        }
        else {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "SingleTableViewCell", for: indexPath) as? SingleTableViewCell {
                cell.setupCell(movie: myMovies[indexPath.row])
                return cell
            }
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
           chosenMovies = myMovies[indexPath.row]
           self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
       }
       
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           if segue.identifier == "toDetailsVC" {
               let destinationVC = segue.destination as! detailsViewController
            destinationVC.selectedMovies = chosenMovies
           }
       }
    
    }
        

