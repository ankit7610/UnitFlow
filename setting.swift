//
//  setting.swift
//  UNIT CONVERTER
//
//  Created by Ankit Kaushik on 11/08/23.
//

import SwiftUI

struct setting: View {
    @State var decimal=false
    @State var showterms=false
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView{
                VStack{
                    List(){
                        NavigationLink {
                            Bookmark()
                        } label: {
                            HStack{
                                Image(systemName:"bookmark")
                                    .foregroundColor(.blue)
                                Text("Edit Bookmarks")
                            }
                        }
                        HStack{
                            Image(systemName:"plus.slash.minus")
                            Toggle("Decimal Answer", isOn:$decimal)
                        }
                        Button {
                            showterms.toggle()
                        }
                        label: {
                            HStack{
                                Image(systemName: "person")
                                Text("Terms of use")
                                    .foregroundColor(.black)
                            }
                        }
                        NavigationLink {
                            AboutApp()
                        } label: {
                            HStack{
                                Image(systemName: "note")
                                Text("About App")
                            }
                        }
                    }
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        VStack{
                            Image(systemName: "house")
                            Text("Home")
                        }
                        .offset(y:10)
                        .font(.title)
                    }
                }
                .navigationTitle("Settings")
                .fullScreenCover(isPresented:$showterms) {
                    Termsofuse()
                }
            }
        }
}

struct setting_Previews: PreviewProvider {
    static var previews: some View {
        setting()
    }
}
