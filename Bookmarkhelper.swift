//
//  Bookmarkhelper.swift
//  UNIT CONVERTER
//
//  Created by Ankit Kaushik on 16/08/23.
//

import SwiftUI

struct Bookmarkhelper: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var length1:[String]
    @Binding var length2:[String]
    @Binding var toget:[Double]
    var body: some View {
        NavigationView{
            List {
                ForEach(0..<toget.count){ item in
                    Text("\(length1[item])-->\(length2[item])-->\(toget[item])")
                }
                .onDelete { IndexSet in
                    length1.remove(atOffsets: IndexSet)
                    length2.remove(atOffsets: IndexSet)
                    toget.remove(atOffsets: IndexSet)
                }
                .onMove { IndexSet,Int in
                    length1.move(fromOffsets: IndexSet, toOffset: Int)
                    length2.move(fromOffsets: IndexSet, toOffset: Int)
                    toget.move(fromOffsets: IndexSet, toOffset: Int)
                }
            }
            .navigationBarItems(leading:EditButton(),trailing:
                                    Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName:"house")
            })
            )
            .navigationTitle("BOOKMARKS")
        }
    }
}

struct Bookmarkhelper_Previews: PreviewProvider {
    static var previews: some View {
        Bookmarkhelper(length1:.constant(.init()), length2: .constant(.init()), toget:.constant(.init()))
    }
}
