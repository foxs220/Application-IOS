//
//  CategorieCollectionViewCell.swift
//  location
//
//  Created by yanis saadi on 23/02/2021.
//

import UIKit

protocol CategorieCellDelegate: class {
    func choosecategorie(categorie: Categorie)
}

class CategorieCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var categorieImageView: UIImageView!
    @IBOutlet weak var TitreLabel: UILabel!
    weak  var delegate: CategorieCellDelegate?
    var categorie: Categorie!
    
    func setup(with categorie: Categorie) {
        self.categorie=categorie
    categorieImageView.image = categorie.image
        TitreLabel.text = categorie.title
}
    @IBAction func chooseAction(){
        
        delegate?.choosecategorie(categorie: categorie)
        
        
    }

}
