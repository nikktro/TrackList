//
//  TrackListViewController.swift
//  TrackList
//
//  Created by Nikolay Trofimov on 15.02.2022.
//

import UIKit

class TrackListViewController: UITableViewController {

    // MARK: - Public Properties
    private let trackList = Track.getTrackList()
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        trackList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "trackID", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let track = trackList[indexPath.row]
        
        content.text = track.song
        content.secondaryText = track.artist
        content.image = UIImage(named: track.title)
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        
        cell.contentConfiguration = content
        return cell
    }

    // MARK: - Table View Delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let track = trackList[indexPath.row]
        performSegue(withIdentifier: "showDetails", sender: track)
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsVC = segue.destination as? TrackDetailsViewController else { return }
        detailsVC.track = sender as? Track
    }
    
}
