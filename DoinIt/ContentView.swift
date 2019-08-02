//
//  ContentView.swift
//  DoinIt
//
//  Created by Andrew on 26/07/2019.
//  Copyright © 2019 Andrew. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var todos: [ToDo] = [
        ToDo(title: "Learn all of SwiftUI!"),
        ToDo(title: "Become the best Swift dev"),
        ToDo(title: "Buy milk")
    ]
    @State var showingNewToDoAlert: Bool = false
    
    var body: some View {
        
        NavigationView {

            List {
                ForEach(todos) { todo in
                    NavigationLink(destination: ToDoDetail(todo: todo)) {
                           ToDoRow(todo: todo)
                    }
                }
                    .onDelete { index in self.todos.remove(at: index.first!) }
            }
                .navigationBarTitle(Text("DoinIt"), displayMode: .large)
                .navigationBarItems(trailing:
                    NavigationLink(destination: NewToDo(todos: self.todos)) {
                        Image(systemName: "plus.circle.fill")
                            .imageScale(.large)
                    }
                )
            }
        }
    }


#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
