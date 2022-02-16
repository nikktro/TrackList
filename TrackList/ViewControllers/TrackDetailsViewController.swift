//
//  TrackDetailsViewController.swift
//  TrackList
//
//  Created by Nikolay Trofimov on 17.02.2022.
//

import UIKit

class TrackDetailsViewController: UIViewController {

    @IBOutlet var trackCoverImageView: UIImageView!
    @IBOutlet var trackNameLabel: UILabel!
    
    var track: Track!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        trackCoverImageView.image = UIImage(named: track.title)
        trackNameLabel.text = track.title
    }
    
}
