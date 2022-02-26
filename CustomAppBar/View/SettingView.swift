//
//  SettingView.swift
//  CustomAppBar
//
//  Created by nakamura motoki on 2022/02/26.
//

import SwiftUI

struct SettingView: View {
    @Binding var showSetting: Bool
    
    // Storing Current Day...
    @State private var CurrentDay: Int = 1
    
    var body: some View {
        NavigationView{
            // Sample List...
            List{
                Section(header: Text("Tutoriall's")){
                    ForEach(1...15, id: \.self){index in
                        Button{
                            withAnimation{
                                showSetting.toggle()
                            }
                        }label: {
                            
                            Text("Day\(index) of SwiftUI")
                        }
                        .foregroundColor(.primary)
                    }// ForEach
                }// Section
            }// List
            .listStyle(.insetGrouped)
            .navigationTitle("Setting View")
        }// NavigationView
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
