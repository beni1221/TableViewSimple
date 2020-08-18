//
//  VideoCell.swift
//  BeginnerTableView
//
//  Created by Sean Allen on 5/19/17.
//  Copyright © 2017 Sean Allen. All rights reserved.
//

import UIKit

class VideoCell: UITableViewCell {

    @IBOutlet weak var videoImageView: UIImageView!
    @IBOutlet weak var videoTitleLabel: UILabel!
  
    // (3)
    // lidhim parametrat me variablat e struktures
    func setVideo(video: Video) {
        videoImageView.image = video.image
        videoTitleLabel.text = video.title
    }
    
}
