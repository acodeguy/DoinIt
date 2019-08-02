//
//  ToDoDetail.swift
//  DoinIt
//
//  Created by Andrew on 27/07/2019.
//  Copyright © 2019 Andrew. All rights reserved.
//

import SwiftUI

struct ToDoDetail: View {
    
    @State var todo: ToDo
    
    var body: some View {
        
        VStack {
            Text(todo.title)
            Text(todo.dateCreated.description(with: Locale.current))
            if todo.completed {
                Image(systemName: "checkmark")
                    .imageScale(.large)
            } else {
                Image(systemName: "xmark")
                .imageScale(.large)
            }
            Button(action: {
                self.todo.toggleCompleted()
            }) {
                Text("Toggle completeness")
            }
        }
    }
}

#if DEBUG
struct ToDoDetail_Previews: PreviewProvider {
    static var previews: some View {
        ToDoDetail(todo: ToDo(title: "Test Todo"))
    }
}
#endif
