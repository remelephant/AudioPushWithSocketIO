//
//  ViewController.swift
//  AudioPushWithSocketIO
//
//  Created by Vahagn Gevorgyan on 6/22/17.
//  Copyright © 2017 Vahagn Gevorgyan. All rights reserved.
//

import UIKit
import SocketIO

class SendVoiceViewController: UIViewController {
    
    let socket = SocketIOClient(socketURL: URL(string: Config.serverUrl)!, config: [.log(true), .forceWebsockets(true)])

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func start() {
        
//        let stream = Stream
        //        stream.videoConfiguration.videoSize = CGSize.zero
//        stream.url = "\(Config.rtmpPushUrl)\(1234)"
//        session.startLive(stream)
        socket.connect()
        socket.once("connect") {[weak self] data, ack in
            guard let this = self else {
                return
            }
//            this.socket.emit("create_room", this.room.toDict())
        }
    }
}

