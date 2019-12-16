//
//  PersonCell.swift
//  TableviewCustomCell
//
//  Created by Sunmoon on 16/12/19.
//  Copyright © 2019 Sunmooon. All rights reserved.
//

import SwiftUI

struct PersonCell: View {
    var person:Person
    var body: some View {
        HStack{
            Image("\(person.id)").resizable()
                .aspectRatio(contentMode: .fit)
            .frame(width: 75, height: 75, alignment: .center)
            .clipShape(Circle())
            .shadow(radius: 10)
            
                
            VStack(alignment: .leading){
                Text(person.name)
                    .font(.title)
                    .fontWeight(.semibold)
                Text(person.dept)
                    .fontWeight(.medium)
                    .foregroundColor(Color.gray)
                
            }
        }.padding()
        
    }
}

struct PersonCell_Previews: PreviewProvider {
    static var previews: some View {
        let person = Person(id: 0, name: "Test name", dept: "Test dept")
        return PersonCell(person: person)
    }
}
