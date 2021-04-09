//
//  detailsViewController.swift
//  DemarkeDemoProject
//
//  Created by Dilara Can on 6.04.2021.
//

import UIKit

class detailsViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
   

    var myMovies: [movies] = []
    var chosenMovies : movies?
    
    @IBOutlet var moviesDetailsLabel: UILabel!
    @IBOutlet var moviesNameLabel: UILabel!
    @IBOutlet var moviesPointLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var detailsTableView: UITableView!
    var selectedMovies : movies?
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        moviesNameLabel.text = selectedMovies?.name
        moviesDetailsLabel.text = selectedMovies?.details
        moviesPointLabel.text = selectedMovies?.point
        imageView.image = selectedMovies?.image
        
        initVars()
        createData()

   
    }
    
    func initVars(){
        detailsTableView.delegate = self
        detailsTableView.dataSource = self
        
        let nib = UINib(nibName: "DetailsTableViewCell", bundle: nil)
        detailsTableView.register(nib, forCellReuseIdentifier: "DetailsTableViewCell")
    
    }
    
    func createData(){
        let harryPotter = movies(nameMovies: "   Harry Potter", detailsMovies: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ", pointMovies: "IMDB 1", imageMovies: UIImage(named: "harrypotter.jpg")!)
        
        
        let yuzuklerinEfendisi = movies(nameMovies: "   Yüzüklerin Efendisi", detailsMovies: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ", pointMovies: "IMDB 2", imageMovies: UIImage(named: "yuzuklerinEfendisi.jpg")!)
        
        
        let meBeforeYou = movies(nameMovies: "   Me Before You", detailsMovies: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ", pointMovies: "IMDB 3", imageMovies: UIImage(named: "mebeforeyou.jpg")!)
        
        
        let parcalamis = movies(nameMovies: "  Parcalanmis", detailsMovies: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ", pointMovies: "IMDB 4", imageMovies: UIImage(named: "parcalanmis.jpg")!)
        
        
        let gladiator = movies(nameMovies: "   Gladiator", detailsMovies: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ", pointMovies: "IMDB 5", imageMovies: UIImage(named: "gladiator.jpg")!)
        
        
        let benjaminButton = movies(nameMovies: "   Benjamin Button", detailsMovies: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ", pointMovies: "IMDB 6", imageMovies: UIImage(named: "benjaminButton.jpg")!)
        
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
       
        if let cell = detailsTableView.dequeueReusableCell(withIdentifier: "DetailsTableViewCell", for: indexPath) as? DetailsTableViewCell {
            cell.setupCell(movie: myMovies[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
      
   
}
    
