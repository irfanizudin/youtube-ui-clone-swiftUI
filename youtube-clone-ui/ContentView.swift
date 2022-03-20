//
//  ContentView.swift
//  youtube-clone-ui
//
//  Created by Irfan Izudin on 15/03/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            TabView{
                HomeView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                ShortView()
                    .tabItem {
                        Image(systemName: "play.square")
                        Text("Shorts")
                    }
                UploadView()
                    .tabItem {
                        Image(systemName: "plus.circle")
                            .font(.headline)
                            .imageScale(.large)
                    }
                SubscriptionsView()
                    .tabItem {
                        Image(systemName: "play.tv")
                        Text("Subscriptions")
                    }
                LibraryView()
                    .tabItem {
                        Image(systemName: "play.rectangle.on.rectangle")
                        Text("Library")
                    }

                
            }
            .accentColor(.red)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}

struct HomeView: View {
    var body: some View{
        NavigationView{
            ScrollView{
                Content()
                Content()
                Content()
            }
            .navigationBarItems(
                leading:
                    HStack{
                        Button(action: {print("Hello Button")}){
                            Image("youtube-logo")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width:90, height:20)
                        }
                    },
                trailing:
                    HStack(spacing:10){
                        Button(action: {print("notification")}){
                            Image(systemName: "bell")
                                .foregroundColor(Color.secondary)
                        }
                        Button(action: {print("search")}){
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(Color.secondary)
                        }
                        Button(action: {print("profile")}){
                            Image("profile")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                                .clipShape(Circle())
                            
                        }
                    }
            )
            .navigationTitle("")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ShortView : View {
    var body: some View{
        Text("Shorts")
    }
}

struct UploadView : View {
    var body: some View {
        Text("Upload")
    }
}

struct SubscriptionsView : View {
    var body: some View {
        Text("Subscriptions")
    }
}

struct LibraryView : View {
    var body: some View {
        Text("Library")
    }
}
