//
//  ContentView.swift
//  TableviewCustomCell
//
//  Created by Sunmoon on 16/12/19.
//  Copyright © 2019 Sunmooon. All rights reserved.
//

import SwiftUI

struct Person :Identifiable{
    let id:Int
    
    let name:String
    let dept:String
}

struct ContentView: View {
    var persons = [
        Person(id: 0, name: "Ravi", dept: "Education Dept"),
        Person(id: 1, name: "Chandra", dept: "Resource dept"),
        Person(id: 2, name: "Sun", dept: "Fire Dept"),
        Person(id: 3, name: "Moon", dept: "Police Dept")
        
    ]
    var body: some View {
        
        NavigationView{
            List (persons) { person in
                PersonCell(person: person)
                
            }
            .navigationBarTitle(Text("Resource List"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
