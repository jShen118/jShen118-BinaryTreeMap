//
//  main.swift
//  BinaryTreeMap
//
//  Created by Joshua Shen on 1/16/19.
//  Copyright © 2019 Joshua Shen. All rights reserved.
//

import Foundation
/*
var binMap = BinaryMap<Int, String>()
binMap.put(3, "three")
binMap.put(1, "one")
binMap.put(2, "two")
binMap.put(5, "five")
binMap.put(7, "seven")
binMap.put(4, "four")
binMap.put(6, "six")
print(binMap.inOrder(binMap.head))
print(binMap.get(1))
print(binMap.get(2))
print(binMap.get(3))
print(binMap.get(4))
print(binMap.get(5))
print(binMap.get(6))
print(binMap.get(7))
print(binMap.get(8))
print(binMap.size())
*/

var bMap = BinaryMap<String, Int>()
bMap.put("fred", 87)
bMap.put("amy", 92)
bMap.put("sarah", 73)
bMap.put("phil", 87)
bMap.put("tom", 68)
bMap.put("kate", 91)
print(bMap.get("phil"))
print(bMap.get("kate"))
print(bMap.get("tom"))
print(bMap.get("adolf"))
print(bMap.size())

var bMap2 = BinaryMap<Int, String>()
bMap2.put(87, "fred")
bMap2.put(92, "amy")
bMap2.put(73, "sarah")
bMap2.put(87, "phil")
bMap2.put(68, "tom")
bMap2.put(91, "kate")
print(bMap2.get(87))
print(bMap2.get(73))
print(bMap2.get(92))
print(bMap2.get(91))
print(bMap2.size())

