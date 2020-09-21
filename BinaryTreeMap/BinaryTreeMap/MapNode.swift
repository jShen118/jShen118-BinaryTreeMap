//
//  File.swift
//  BinaryTreeMap
//
//  Created by Joshua Shen on 1/16/19.
//  Copyright © 2019 Joshua Shen. All rights reserved.
//

import Foundation


class MapNode<C: Comparable, V: Any> {
    var key: C
    var value: V
    var left: MapNode?
    var right: MapNode?
    
    init(_ key: C, _ value: V) {
        self.key = key
        self.value = value
    }
}







