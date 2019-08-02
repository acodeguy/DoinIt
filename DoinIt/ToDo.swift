//
//  ToDo.swift
//  DoinIt
//
//  Created by Andrew on 27/07/2019.
//  Copyright © 2019 Andrew. All rights reserved.
//

import SwiftUI
import Combine

//struct ToDo: Identifiable {
//
//    var id = UUID()
//    var title: String
//    var completed: Bool = false
//    let dateCreated = Date()
//
//    init(title: String) {
//        self.title = title
//    }
//
//    mutating func toggleCompleted() {
//        completed = !completed
//    }
//}

final class ToDo: BindableObject {
    
    let willChange = PassthroughSubject<Void, Never>()
    
    var title: String
    let dateCreated = Date()
    var completed: Bool = false {
        willSet {
            willChange.send()
        }
    }
    
    init(title: String) {
        self.title = title
    }
    
    func toggleCompleted() {
        completed = !completed
    }
}
