//
//  ViewController.swift
//  Gotcha
//
//  Created by Hithesh Vurjana on 20/07/18.
//  Copyright © 2018 Hithesh Vurjana. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var fartLabel: UIButton!
    @IBOutlet weak var gotchaLabel: UIButton!
    @IBOutlet weak var awkwardLabel: UIButton!
    @IBOutlet weak var lolLabel: UIButton!
    @IBOutlet weak var trumpertsLabel: UIButton!
    @IBOutlet weak var drumRollLabel: UIButton!
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fartLabel.layer.cornerRadius = 40
        gotchaLabel.layer.cornerRadius = 40
        awkwardLabel.layer.cornerRadius = 40
        lolLabel.layer.cornerRadius = 40
        trumpertsLabel.layer.cornerRadius = 40
        drumRollLabel.layer.cornerRadius = 40
    }
    
    @IBAction func fart(_ sender: UIButton) {
        playFunction(sound: "fart", fileType: "mp3")
    }
    
    @IBAction func evil(_ sender: UIButton) {
        playFunction(sound: "evil", fileType: "mp3")
    }
    
    @IBAction func praise(_ sender: UIButton) {
        playFunction(sound: "applause", fileType: "mp3")
    }
    
    @IBAction func donkey(_ sender: UIButton) {
        playFunction(sound: "stupid", fileType: "mp3")
    }
    
    @IBAction func kamehameha(_ sender: UIButton) {
        playFunction(sound: "kamehameha", fileType: "mp3")
    }
    
    @IBAction func chicken(_ sender: UIButton) {
        playFunction(sound: "chicken", fileType: "mp")
    }
    
    func playFunction(sound: String, fileType: String) {
        let path = Bundle.main.path(forResource: sound, ofType: fileType)!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
        player.play()
    }
    
}

