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
        fartLabel.layer.cornerRadius = 25
        gotchaLabel.layer.cornerRadius = 25
        awkwardLabel.layer.cornerRadius = 25
        lolLabel.layer.cornerRadius = 25
        trumpertsLabel.layer.cornerRadius = 25
        drumRollLabel.layer.cornerRadius = 25
    }
    
    @IBAction func fart(_ sender: UIButton) {
        
    }
    
    @IBAction func gotcha(_ sender: UIButton) {
    }
    
    @IBAction func awkward(_ sender: UIButton) {
    }
    
    @IBAction func lol(_ sender: UIButton) {
    }
    
    @IBAction func trumpets(_ sender: UIButton) {
    }
    
    @IBAction func drumRoll(_ sender: UIButton) {
    }
    
    func playFunction(sound: String, type: String) {
        let path = Bundle.main.path(forResource: sound, ofType: type)!
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

