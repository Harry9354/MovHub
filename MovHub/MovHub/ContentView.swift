//
//  ContentView.swift
//  MovHub
//
//  Created by Hariom Kumar on 12/01/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab(Constants.homeString, systemImage: Constants.homeIconString){
                HomeView()
            }
            Tab(Constants.upcominString, systemImage: Constants.upcomingIconString){
                Text(Constants.upcominString)
            }
            Tab(Constants.searchString, systemImage: Constants.searchIconString){
                Text(Constants.searchString)
            }
            Tab(Constants.downloadString, systemImage: Constants.downloadIconString){
                Text(Constants.downloadString)
            }
        }
        
    }
}

#Preview {
    ContentView()
}
