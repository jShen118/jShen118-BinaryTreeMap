//
//  BinaryMap.swift
//  BinaryTreeMap
//
//  Created by Joshua Shen on 1/16/19.
//  Copyright © 2019 Joshua Shen. All rights reserved.
//

import Foundation

class BinaryMap<C: Comparable, V: Any> {
    var head: MapNode<C, V>? = nil
    var previousNode: MapNode<C, V>? = nil

    func put(_ key: C, _ value: V) {putHelper(head, key, value)}
    
    func putHelper(_ node: MapNode<C, V>?, _ key: C, _ value: V) {
        if node == nil {
            if previousNode != nil {
                //executes if no node for comparison (end of branch), sets one of previous node's children to a new node
                if key > previousNode!.key {previousNode!.right = MapNode(key, value)}
                else {previousNode!.left = MapNode(key, value)}
                return
            }
            //creates foundation for the tree, also initializes previous node so that it isn't nil when unwrapped
            head = MapNode(key, value)
            previousNode = head
            return
        }
    
        previousNode = node
        //this block of code dictates the next comparison down the tree except for the else which sets a new value to the given key
        if key > node!.key {
            putHelper(node!.right, key, value)
            return
        }
        if key < node!.key {
            putHelper(node!.left, key, value)
        } else {node!.value = value}
    }
    
    func get(_ key: C)-> V? {return getHelper(head, key)}
    
    func getHelper(_ node: MapNode<C, V>?, _ key: C)-> V? {
        if node == nil {return nil} //end of tree reached, node with key not found
        if key > node!.key {return getHelper(node!.right, key)}
        if key < node!.key {return getHelper(node!.left, key)}
        return node!.value
    }
    
    func size()-> Int {return sizeHelper(head)}
    
    func sizeHelper(_ node: MapNode<C, V>?)-> Int {
        if node == nil {return 0}
        return sizeHelper(node!.left) + 1 + sizeHelper(node!.right)
    }
}



