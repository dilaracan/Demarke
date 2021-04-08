//
//  SliderCollectionViewCell.swift
//  DemarkeDemoProject
//
//  Created by Dilara Can on 8.04.2021.
//

import UIKit

class SliderCollectionViewCell: UICollectionViewCell, UICollectionViewDelegate,UICollectionViewDataSource {
   
    @IBOutlet var sliderImageView: UIImageView!
    @IBOutlet var pageControl: UIPageControl!
    @IBOutlet var sliderCollectionView: UICollectionView!
    
    var mySlider: [Slider] = []
    var timer = Timer()
    var counter = 0
    
    static let identifier = "SliderCollectionViewCell"
    
    static func nib() -> UINib{
        return UINib(nibName: "SliderCollectionViewCell", bundle: nil)
        
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        pageControl.numberOfPages = mySlider.count
        pageControl.currentPage = 0
        DispatchQueue.main.async {
            self.timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(self.changeImage), userInfo: nil, repeats: true)
        }
        
    }
    //TIMER Selector
    
    @objc func changeImage () {
        if counter < mySlider.count {
            let index = IndexPath.init(item: counter, section: 0)
            self.sliderCollectionView.scrollToItem(at: index, at: .centeredHorizontally, animated: true)
            pageControl.currentPage = counter
            counter += 1
        }
        else {
            counter = 0
            let index = IndexPath.init(item: counter, section: 0)
            self.sliderCollectionView.scrollToItem(at: index, at: .centeredHorizontally, animated: false)
            pageControl.currentPage = counter
            counter = 1
        }
    }

   public func setupCell( slider: Slider){

        sliderImageView.image = slider.image
    }
    
    
    //COLLECTION VIEW
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mySlider.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = sliderCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
      
        if let vc = cell.viewWithTag(111) as? UIImageView{
            vc.image = mySlider[indexPath.row].image
        }
        else if let ab = cell.viewWithTag(222) as? UIPageControl {
            ab.currentPage = indexPath.row
        }
        return cell
    }
    
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
            return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            let size = collectionView.frame.size
            return CGSize(width: size.width, height: size.height)
        
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
            return 0.0
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
            return 0.0
        }
    
    }

