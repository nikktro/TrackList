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

    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        trackList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "trackID", for: indexPath)
        
        cell.textLabel?.text = trackList[indexPath.row].song //TODO: - deprecated
        
        return cell
    }

    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    }
    
}
