//
//  VideoListScreen.swift
//  BeginnerTableView
//
//  Created by Sean Allen on 5/19/17.
//  Copyright © 2017 Sean Allen. All rights reserved.
//


// (1)
// Shtojme TableView tek VC kryesor ne storboard -> i shtojme cell -> i caktojme height -> i vendosim identifier -> e lidhim tableView me UIVC (drag and drop)
// Ne cell shtojme image dhe label -> u vendosim constrainsta
import UIKit

class VideoListScreen: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    // krijojme array (list) te tipit Video te struktures
    var videos: [Video] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // inicializojme arrayn me funksionin qe e mbushen array me data
        videos = createArray()
    }
    
    // (4)
    // krijojme funks. te tipit te objekit Video, deklarojme dhe e mbushim arrayn me data
    func createArray() -> [Video] {
        
        let video1 = Video(image: #imageLiteral(resourceName: "beginner-first-app"), title: "Your First App")
        let video2 = Video(image: #imageLiteral(resourceName: "dev-setup"), title: "My Dev Setup")
        let video3 = Video(image: #imageLiteral(resourceName: "int-overview"), title: "iOS Interview")
        let video4 = Video(image: #imageLiteral(resourceName: "ss-delegates"), title: "Buttons in TableViews")
        let video5 = Video(image: #imageLiteral(resourceName: "ss-uipickerview-card"), title: "UIPickerView Tutorial")
        let video6 = Video(image: #imageLiteral(resourceName: "vlog-4"), title: "Day in the Life")
    
        return [video1, video2, video3, video4, video5, video6]
    }
}

// caktojme protokolet per tableView -> delegatin dhe datasourcin
extension VideoListScreen: UITableViewDataSource, UITableViewDelegate {
    
    // caktojme numrin e rreshtave -> varesisht sa variabla ka array
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
      // added comment Veton majki
    }
    // krijojem cellat dhe lidhim me fajllin e cellit -> VideCell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let video = videos[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell") as! VideoCell
        cell.setVideo(video: video)
        
        return cell
    }
}





