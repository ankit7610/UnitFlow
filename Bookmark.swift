//
//  Bookmark.swift
//  UNIT CONVERTER
//
//  Created by Ankit Kaushik on 10/08/23.
//

import SwiftUI

struct Bookmark: View {
    @State var value=0
    var body: some View {
        NavigationView{
            ZStack{
               Image("bk")
                    .resizable()
                    .ignoresSafeArea()
                Text("BOOKMARKS")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                    .bold()
                    .offset(y:-330)
                if(value==0){
                    Text("Nothing to show here.\nBookmark will be shown here.😊😊")
                        .foregroundColor(.black)
                }
            }
        }
    }
}

struct Bookmark_Previews: PreviewProvider {
    static var previews: some View {
        Bookmark()
    }
}
