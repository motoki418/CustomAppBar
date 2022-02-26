//
//  ContentView.swift
//  CustomAppBar
//
//  Created by nakamura motoki on 2022/02/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            HomeView()
                .navigationTitle("")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
