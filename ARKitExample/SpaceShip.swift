//
//  SpaceShip.swift
//  ARKitExample
//
//  Created by Jonathan Saldivar on 17/07/17.
//  Copyright © 2017 gms. All rights reserved.
//

import ARKit

class SpaceShip: SCNNode {

    func loadMdel(){
        
        guard let virtualObjectScene = SCNScene(named: "art.scnassets/ship.scn") else {return}
        
        let wrappedNode = SCNNode()
        
        for child in virtualObjectScene.rootNode.childNodes{
            wrappedNode.addChildNode(child)
        }
        self.addChildNode(wrappedNode)
    }
}
