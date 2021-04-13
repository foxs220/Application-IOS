//
//  ViewControllerdetail.swift
//  location
//
//  Created by yanis saadi on 03/03/2021.
//

import UIKit

class ViewControllerdetail: UIViewController {
    
    var categorie: Categorie?
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var TitreLabel: UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()
        if categorie != nil{
        self.imageView.image = categorie!.image
        self.TitreLabel.text = categorie!.title
        
        /* Cacher le clavier quand on tape sur l'écran */
 
        let tap = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
   

        }
        


        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
