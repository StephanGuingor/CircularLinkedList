//
//  turnosCircularList.swift
//  CoreDataNew
//
//  Created by Stephan Guingor on 12/3/19.
//  Copyright © 2019 Stephan Guingor. All rights reserved.
//

import Foundation


class Node:Equatable{
    static func == (lhs: Node, rhs: Node) -> Bool {
        return lhs.data == rhs.data
    }
    
    var next:Node?
    var data:Int //this value will represent player index
   
    
    init(_ data:Int) {
        self.next = nil
        self.data = data
        
    }
}

class CircularLinkedList{
    var last:Node?
    var currentTurn:Node?
    init() {
        self.last = nil
        self.currentTurn = nil
    }
    
    func addToEmptyList(data:Int){
        
        //Will set the last node
        let temp = Node(data)
        self.last = temp
        
        //Creates the link (of one rn)
        self.last?.next = self.last
        
        //Sets the turns at the beggining of the list
        self.currentTurn = self.last?.next!
        
    }
    
    func addToListEnd(data:Int){
        
        if self.last == nil{
            self.addToEmptyList(data: data)
            return
        }
        
        //Connecting new node with the first, and setting previus last to link with new value
        let temp = Node(data)
        temp.next = self.last?.next
        self.last!.next! = temp
        self.last = temp

        
    }
    
    func popItem(data:Int){
        var currentNode = self.last
        while (currentNode != nil){
            if currentNode?.next?.data == data{
                print("\(currentNode!.next!.data) was deleted")
                
                currentNode?.next = currentNode?.next?.next
                break
            }
            currentNode = currentNode?.next
            
            if currentNode == self.last{
                print("item not in list")
                break
            }
        }
    }
     func traverse(){
            var currentNode = self.last?.next
            while (currentNode != nil){
                print(currentNode!.data)
                currentNode = currentNode?.next
                if currentNode == self.last?.next{
                    break
                }
        }
        }
    
    func retrieveTurn() -> Int{
        return self.currentTurn!.data
    }
    
    func updateTurn(){
        self.currentTurn = self.currentTurn?.next
    }
}



