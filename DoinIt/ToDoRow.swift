//
//  ToDoRow.swift
//  DoinIt
//
//  Created by Andrew on 27/07/2019.
//  Copyright © 2019 Andrew. All rights reserved.
//

import SwiftUI

struct ToDoRow: View {
    
    @State var todo: ToDo
    
    var body: some View {
        HStack {
            Text("\(todo.title)")
            Spacer()
            if todo.completed {
                Image(systemName: "checkmark")
                    .imageScale(.large)
                    .foregroundColor(Color.green)
            } else {
                Image(systemName: "xmark")
                    .imageScale(.large)
                    .foregroundColor(Color.red)
            }
        }.padding()
    }
}

#if DEBUG
struct ToDoRow_Previews: PreviewProvider {
    static var previews: some View {
        ToDoRow(todo: ToDo(title: "Buy some po-ta-toes!"))
    }
}
#endif
