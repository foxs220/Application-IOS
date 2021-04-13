//
//  ViewController.swift
//  location
//
//  Created by yanis saadi on 22/02/2021.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()
        // Do any additional setup after loading the view.
        
    }


}

extension ViewController: UICollectionViewDataSource, CategorieCellDelegate{
    func choosecategorie(categorie: Categorie) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let detail = storyboard.instantiateViewController(identifier: "detail") as ViewControllerdetail
        detail.categorie=categorie
        self.navigationController?.pushViewController(detail, animated: true)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategorieCollectionViewCell", for: indexPath) as! CategorieCollectionViewCell
        cell.delegate = self
        
        cell.setup(with: categories[indexPath.row])
        return cell
    }
    

}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.collectionView.frame.width, height: 300)
    }
}

extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(categories[indexPath.row].title)
    }
}
