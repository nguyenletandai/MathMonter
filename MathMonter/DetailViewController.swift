//
//  DetailViewController.swift
//  MathMonter
//
//  Created by daicudu on 1/8/19.
//  Copyright © 2019 daicudu. All rights reserved.
//

import UIKit

extension DetailViewController: MonsterSelectionDelegate {
    func monsterSelected(_ newMonster: Monster) {
        monster = newMonster
    }
    
    
}
class DetailViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var weaponImageView: UIImageView!
    
    var monster: Monster? {
        didSet {
            refreshUI()
        }
    }
    
    func refreshUI() {
        loadViewIfNeeded()
        nameLabel.text = monster?.name
        descriptionLabel.text = monster?.description
        iconImageView.image = monster?.icon
        weaponImageView.image = monster?.weaponImage
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
