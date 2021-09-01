//
//  Aiden.swift
//  
//
//  Created by 여나경 on 2021/07/14.
//

public protocol Aiden {
    var name: String { get }
    func eating()
    
}

open class AidenMini: Aiden {
    public var name: String = "Aiden mini"
    
    public func eating() {
        print("Aiden is eating something")
    }
    
}

