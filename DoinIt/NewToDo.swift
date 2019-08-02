//
//  NewToDo.swift
//  DoinIt
//
//  Created by Andrew on 27/07/2019.
//  Copyright © 2019 Andrew. All rights reserved.
//

import SwiftUI

struct NewToDo: View {
    
    @State var todos: [ToDo]
    
    var body: some View {
        
        NavigationView {
            Text("Create a new ToDo")
        }
            .navigationBarTitle(Text("Create a New ToDo"), displayMode: .large)
        
    }
}

#if DEBUG
struct NewToDo_Previews: PreviewProvider {
    
    static var previews: some View {
        NewToDo(todos: [ToDo(title: "Tester")])
    }
}
#endif
