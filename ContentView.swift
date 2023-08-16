//
//  ContentView.swift
//  UNIT CONVERTER
//
//  Created by Ankit Kaushik on 05/08/23.
//

import SwiftUI
struct ContentView: View {
    @State var search=""
    @State var showsheet=false
    @State var showsetting=false
    @State var showsfeedback=false
    @State var changecolor=false
    @State var Back:Color=Color.blue.opacity(0.1)
    var body: some View{
        NavigationView{
                VStack{
                    ZStack{
                    Back
                            .ignoresSafeArea()
                            .navigationBarItems(trailing:
                                                    HStack{
                                NavigationLink {
                                    Bookmark()
                                } label: {
                                    Image(systemName:"bookmark")
                                        .foregroundColor(.black)
                                }
                                Menu {
                                    Button {
                                        showsetting.toggle()
                                    } label: {
                                        HStack{
                                            Text("Settings")
                                            Image(systemName: "gear")
                                        }
                                    }
                                    Button {
                                        changecolor.toggle()
                                    } label: {
                                        HStack{
                                            Text("Color Theme")
                                            Image(systemName:"paintbrush")
                                        }
                                    }
                                    Button {
                                        showsfeedback.toggle()
                                    } label: {
                                        HStack{
                                            Text("Feedback!")
                                            Image(systemName:"note.text")
                                        }
                                    }
                                } label: {
                                    Image(systemName:"ellipsis.circle")
                                        .foregroundColor(Color.black)
                                }

                            }
                            )
                        TextField("Search for units and categories", text:$search)
                            .overlay(
                                Image(systemName:"magnifyingglass")
                                    .offset(x:150)
                            )
                            .foregroundColor(.black)
                            .padding(20)
                            .frame(width:350,height:50)
                            .background(.white)
                            .font(.system(size:20))
                            .cornerRadius(20)
                            .offset(y:-320)
                            .keyboardType(.decimalPad)
                        VStack(spacing:25){
                            Text("Common")
                                .foregroundColor(.gray.opacity(0.9))
                                .bold()
                                .offset(x:-125,y:15)
                            HStack(spacing:15){
                                NavigationLink {
                                    Length()
                                } label: {
                                    RoundedRectangle(cornerRadius:20)
                                        .frame(width:100,height:100)
                                        .foregroundColor(.white)
                                        .shadow(radius:10)
                                        .overlay{
                                            VStack(spacing:-10){
                                                Image("Length")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(width:70,height:70)
                                                Text("Length")
                                                    .bold()
                                                    .foregroundColor(.black)
                                            }
                                        }
                                }
                                NavigationLink {
                                    Area()
                                } label: {
                                    RoundedRectangle(cornerRadius:20)
                                        .frame(width:100,height:100)
                                        .foregroundColor(.white)
                                        .shadow(radius:10)
                                        .overlay{
                                            VStack(spacing:-10){
                                                Image("area")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(width:70,height:70)
                                                Text("Area")
                                                    .foregroundColor(.black)
                                                    .bold()
                                            }
                                        }
                                }
                                RoundedRectangle(cornerRadius:20)
                                    .frame(width:100,height:100)
                                    .foregroundColor(.white)
                                    .shadow(radius:10)
                                    .overlay{
                                        VStack(spacing:-10){
                                            Image("weight")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width:70,height:70)
                                            Text("Mass")
                                                .bold()
                                        }
                                    }
                            }
                            HStack(spacing:15){
                                NavigationLink {
                                    Temperature()
                                } label: {
                                    RoundedRectangle(cornerRadius:20)
                                        .frame(width:100,height:100)
                                        .foregroundColor(.white)
                                        .shadow(radius:10)
                                        .overlay{
                                            VStack(spacing:5){
                                                Image(systemName:"thermometer.sun")
                                                    .resizable()
                                                    .foregroundColor(.black)
                                                    .scaledToFit()
                                                    .frame(width:50,height:50)
                                                Text("Temperature")
                                                    .bold()
                                                    .foregroundColor(.black)
                                                    .font(.subheadline)
                                            }
                                        }
                                }
                                RoundedRectangle(cornerRadius:20)
                                    .frame(width:100,height:100)
                                    .foregroundColor(.white)
                                    .shadow(radius:10)
                                    .overlay{
                                        VStack(spacing:-10){
                                            Image("Speed")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width:70,height:70)
                                            Text("Speed")
                                                .bold()
                                        }
                                    }
                                RoundedRectangle(cornerRadius:20)
                                    .frame(width:100,height:100)
                                    .foregroundColor(.white)
                                    .shadow(radius:10)
                                    .overlay{
                                        VStack(spacing:5){
                                            Image("flask")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width:60,height:60)
                                            Text("Volume")
                                                .bold()
                                        }
                                    }
                            }
                        }
                        .offset(y:-150)
                        VStack(spacing:-85){
                            Text("Life")
                                .foregroundColor(.gray.opacity(0.9))
                                .bold()
                                .offset(x:-140,y:25)
                            HStack(spacing:15){
                                RoundedRectangle(cornerRadius:20)
                                    .frame(width:100,height:100)
                                    .foregroundColor(.white)
                                    .shadow(radius:10)
                                    .overlay{
                                        VStack(spacing:-10){
                                            Image(systemName:"dollarsign.circle")
                                                .resizable()
                                                .scaledToFit()
                                                .foregroundColor(Color(hue: 0.144, saturation: 0.977, brightness: 0.848))
                                                .frame(width:45,height:70)
                                            Text("Currency")
                                                .bold()
                                        }
                                    }
                                RoundedRectangle(cornerRadius:20)
                                    .frame(width:100,height:100)
                                    .foregroundColor(.white)
                                    .shadow(radius:10)
                                    .overlay{
                                        VStack(spacing:-10){
                                            Image(systemName:"clock")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width:40,height:70)
                                                .foregroundColor(.purple)
                                            Text("Time")
                                                .bold()
                                        }
                                    }
                                RoundedRectangle(cornerRadius:20)
                                    .frame(width:100,height:100)
                                    .foregroundColor(.white)
                                    .shadow(radius:10)
                                    .overlay{
                                        VStack(spacing:-10){
                                            Image(systemName:"fuelpump")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width:40,height:70)
                                                .foregroundColor(.pink)
                                            Text("Fuel")
                                                .bold()
                                        }
                                    }
                            }
                            .offset(x:0,y:120)
                            HStack(spacing:15){
                                RoundedRectangle(cornerRadius:20)
                                    .frame(width:100,height:100)
                                    .foregroundColor(.white)
                                    .shadow(radius:10)
                                    .overlay{
                                        VStack(spacing:-10){
                                            Image(systemName:"square.and.arrow.up.circle")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width:45,height:80)
                                                .foregroundColor(.blue)
                                            Text("Data")
                                                .bold()
                                        }
                                    }
                                NavigationLink {
                                    BMI()
                                } label: {
                                    RoundedRectangle(cornerRadius:20)
                                        .frame(width:100,height:100)
                                        .foregroundColor(.white)
                                        .shadow(radius:10)
                                        .overlay{
                                            VStack(spacing:-10){
                                                Image(systemName:"figure.stand")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(width:20,height:80)
                                                    .foregroundColor(.black)
                                                Text("BMI")
                                                    .foregroundColor(.black)
                                                    .font(.subheadline)
                                                    .bold()
                                            }
                                        }
                                }
                                RoundedRectangle(cornerRadius:20)
                                    .frame(width:100,height:100)
                                    .foregroundColor(.white)
                                    .shadow(radius:10)
                                    .overlay{
                                        VStack(spacing:-10){
                                            Image(systemName:"bolt")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width:35,height:80)
                                                .foregroundColor(.yellow)
                                            Text("Power")
                                                .font(.subheadline)
                                                .bold()
                                        }
                                    }
                            }
                            .offset(x:0,y:230)
                        }
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.gray.opacity(0.3))
                            .frame(width:400,height:110)
                            .offset(y:340)
                        HStack{
                            Button {
                                
                            } label: {
                                VStack{
                                    Image(systemName:"house.fill")
                                        .font(.title)
                                        .padding(40)
                                        .foregroundColor(.black)
                                        .overlay{
                                            Text("Home")
                                                .bold()
                                                .foregroundColor(.black)
                                                .offset(y:30)
                                        }
                                }
                            }
                            Spacer()
                            NavigationLink{
                                Calculator()
                            } label: {
                                Image(systemName:"plus.forwardslash.minus")
                                    .font(.title)
                                    .foregroundColor(.black)
                                    .overlay{
                                        Text("Cal")
                                            .bold()
                                            .foregroundColor(.black)
                                            .offset(y:30)
                                    }
                            }
                            Spacer()
                            Button {
                                showsheet.toggle()
                            } label: {
                                Image(systemName:"square.grid.2x2")
                                    .font(.title)
                                    .foregroundColor(.black)
                                    .padding(40)
                                    .overlay{
                                        Text("Tools")
                                            .bold()
                                            .foregroundColor(.black)
                                            .offset(y:30)
                                    }
                            }
                            .fullScreenCover(isPresented:$showsetting) {
                                setting()
                            }
                            .sheet(isPresented:$showsheet) {
                               Tools()
                            }
                            .fullScreenCover(isPresented:$showsfeedback) {
                                Feedback()
                            }
                            .sheet(isPresented:$changecolor) {
                                Colorchange(Back:$Back)
                                    .presentationDetents([.height(300)])
                            }
                        }
                        .offset(y:325)
                    }
                }
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
