//
//  DetailViewController.swift
//  Gallery
//
//  Created by Mohammed Ibrahim on 12/8/21.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var selectedImage : String?
    var selectedNumber : Int?
    var totalCount : Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
        if let  imageToLoad = selectedImage,let selectedNum = selectedNumber, let count = totalCount {
            imageView.image = UIImage(named: imageToLoad)
            title = "\(imageToLoad) (\(selectedNum)/\(count))"
        }
        
       
        
        navigationItem.largeTitleDisplayMode = .never
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
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
