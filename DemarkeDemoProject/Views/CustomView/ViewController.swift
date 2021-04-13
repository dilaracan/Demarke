//
//  ViewController.swift
//  DemarkeDemoProject
//
//  Created by Dilara Can on 6.04.2021.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    
    var myMovies: [movies] = []
    var mySlider: [Slider] = []
    var myModel: [Model] = []

    var chosenMovies : movies?

    
    @IBOutlet var tableVıew: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        createData()
        initVars()
        createCollection ()
        createSlider()
        
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
    //Collection
    func createCollection (){
        
        myModel.append(Model(collectionText: "1", collectionImage: UIImage(named: "collection1")!))
        myModel.append(Model(collectionText: "2", collectionImage: UIImage(named: "collection2")!))
        myModel.append(Model(collectionText: "3", collectionImage: UIImage(named: "collection3")!))
        myModel.append(Model(collectionText: "4", collectionImage: UIImage(named: "collection4")!))
        myModel.append(Model(collectionText: "5", collectionImage: UIImage(named: "collection5")!))
        myModel.append(Model(collectionText: "6", collectionImage: UIImage(named: "collection1")!))
        myModel.append(Model(collectionText: "7", collectionImage: UIImage(named: "collection2")!))
        myModel.append(Model(collectionText: "8", collectionImage: UIImage(named: "collection3")!))
        myModel.append(Model(collectionText: "9", collectionImage: UIImage(named: "collection4")!))
        myModel.append(Model(collectionText: "0", collectionImage: UIImage(named: "collection5")!))
        
    }
    //Slider
    func createSlider() {
        
        let banner1 = Slider(BannerSlider: "banner1", imageSlider: UIImage(named: "banner1")!)
        let banner2 = Slider(BannerSlider: "Banner2", imageSlider: UIImage(named: "banner2")!)
        let banner3 = Slider(BannerSlider: "Banner3", imageSlider: UIImage(named: "banner3")!)
        let banner4 = Slider(BannerSlider: "Banner4", imageSlider: UIImage(named: "banner4")!)
        let banner5 = Slider(BannerSlider: "Banner5", imageSlider: UIImage(named: "banner5")!)
        
        mySlider.append(banner1)
        mySlider.append(banner2)
        mySlider.append(banner3)
        mySlider.append(banner4)
        mySlider.append(banner5)
    }
    //Details
    func createData(){
        
        let harryPotter = movies(nameMovies: "  Harry Potter", detailsMovies: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make.", pointMovies: "IMDB 1", imageMovies: UIImage(named: "harrypotter.jpg")!)
        
        
        let yuzuklerinEfendisi = movies(nameMovies: "   Yüzüklerin Efendisi", detailsMovies: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make.", pointMovies: "IMDB 2", imageMovies: UIImage(named: "yuzuklerinEfendisi.jpg")!)
        
        
        let meBeforeYou = movies(nameMovies: "   Me Before You", detailsMovies: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make.", pointMovies: "IMDB 3", imageMovies: UIImage(named: "mebeforeyou.jpg")!)
        
        
        let parcalamis = movies(nameMovies: "  Parcalanmis", detailsMovies:"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make.", pointMovies: "IMDB 4", imageMovies: UIImage(named: "parcalanmis.jpg")!)
        
        
        let gladiator = movies(nameMovies: "   Gladiator", detailsMovies: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make.", pointMovies: "IMDB 5", imageMovies: UIImage(named: "gladiator.jpg")!)
        
        
        let benjaminButton = movies(nameMovies: "   Benjamin Button", detailsMovies: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make.", pointMovies: "IMDB 6", imageMovies: UIImage(named: "benjaminButton.jpg")!)
        
        
        let harryPotter2 = movies(nameMovies: "Harry Potter", detailsMovies: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make.", pointMovies: "IMDB 1", imageMovies: UIImage(named: "harrypotter.jpg")!)
        
        
        let yuzuklerinEfendisi2 = movies(nameMovies: "Yüzüklerin Efendisi", detailsMovies: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make.", pointMovies: "IMDB 2", imageMovies: UIImage(named: "yuzuklerinEfendisi.jpg")!)
        
        let meBeforeYou2 = movies(nameMovies: "Me Before You", detailsMovies: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make.", pointMovies: "IMDB 3", imageMovies: UIImage(named: "mebeforeyou.jpg")!)
        
        
        let parcalamis2 = movies(nameMovies: "Parcalanmis", detailsMovies: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make.", pointMovies: "IMDB 4", imageMovies: UIImage(named: "parcalanmis.jpg")!)
        
        
        let gladiator2 = movies(nameMovies: "Gladiator", detailsMovies: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make.", pointMovies: "IMDB 5", imageMovies: UIImage(named: "gladiator.jpg")!)
        
        
        let benjaminButton2 = movies(nameMovies: "Benjamin Button'ın Tuhaf Hikayesi", detailsMovies: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make.", pointMovies: "IMDB 6", imageMovies: UIImage(named: "benjaminButton.jpg")!)
        
        myMovies.append(harryPotter)
        myMovies.append(yuzuklerinEfendisi)
        myMovies.append(meBeforeYou)
        myMovies.append(parcalamis)
        myMovies.append(gladiator)
        myMovies.append(benjaminButton)
        myMovies.append(harryPotter2)
        myMovies.append(meBeforeYou2)
        myMovies.append(parcalamis2)
        myMovies.append(gladiator2)
        myMovies.append(benjaminButton2)
        myMovies.append(yuzuklerinEfendisi2)

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myMovies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        if indexPath.row == 0 {
            //slider cell
            
            if let cell = tableView.dequeueReusableCell(withIdentifier: SliderTableViewCell.identifier, for: indexPath) as? SliderTableViewCell
            {
                cell.setupCell(sliderView: mySlider)
                return cell
            }
        }
        else if indexPath.row == 1 {
          //  CollectionTableViewCell
            
            if let cell = tableVıew.dequeueReusableCell(withIdentifier: CollectionTableViewCell.identifier, for: indexPath) as? CollectionTableViewCell
            {
                cell.setupCell(modelView: myModel)
                return cell
            }
        }
        
        else {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "SingleTableViewCell", for: indexPath) as? SingleTableViewCell {
                cell.setupCell(movie: myMovies[indexPath.row])
                return cell
            }
        }
        return UITableViewCell()
    }
    
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250.0
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
        


