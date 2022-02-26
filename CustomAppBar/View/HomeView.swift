//
//  HomeView.swift
//  CustomAppBar
//
//  Created by nakamura motoki on 2022/02/26.
//

import SwiftUI

struct HomeView: View {
    
    @State private var search = ""
    
    // Initialization...
    @State private var detailCard: CardModel = data[0]
    
    @State private var show = false
    
    @State private var menu = false
    
    @State var showSetting = false
    var body: some View {
        ZStack{
            // Navigation Link...
            NavigationLink(destination: DetailPageView(detail: self.detailCard, show: self.$show), isActive: self.$show){
                Text("")
            }
            // Navigation Link...
            NavigationLink(destination: SettingView(showSetting: $showSetting), isActive: self.$showSetting){
                Text("")
            }
            VStack(spacing: 0){
                VStack(spacing: 20){
                    HStack{
                        Text("Home")
                            .fontWeight(.bold)
                            .font(.title)
                        
                        Spacer(minLength: 0)
                        
                        Button{
                            withAnimation{
                                self.showSetting.toggle()
                                print(showSetting)
                            }
                            
                        }label: {
                            Image(systemName: "gear")
                                .font(.system(size: 24, weight: .bold))
                        }
                    }// HStack
                    .foregroundColor(.white)
                    .padding(.horizontal)
                    HStack(spacing: 15){
                        Button{
                            // Toggling Menu...
                            withAnimation{
                                self.menu.toggle()
                            }
                        }label: {
                            Image(systemName: "list.dash")
                                .font(.title)
                                .foregroundColor(Color("Color"))
                        }// menuボタン
                        
                        TextField("Search", text: self.$search)
                        Button{
                            
                        }label: {
                            Image(systemName: "magnifyingglass")
                                .font(.system(size: 24))
                                .foregroundColor(Color("Color"))
                        }
                        
                        Button{
                            
                        }label: {
                            Image(systemName: "bell")
                                .foregroundColor(Color("Color"))
                                .font(.title)
                        }// bellボタン
                    }// HStack
                    .padding()
                    .background(
                        Color.white
                        // shadow
                            .shadow(color: Color.black.opacity(0.11), radius: 5, x: 5, y: 5)
                    )
                    .padding(.horizontal, 25)
                }// VStack
                .padding(.top, (UIApplication.shared.windows.first?.safeAreaInsets.top)! + 8)
                // reduing height...
                .padding(.bottom, -25)
                .background(Color("Color"))
                // Moving View up...
                // TextFieldが画像の上に重なるようにする
                .zIndex(1)
                
                ScrollView(.vertical, showsIndicators: false){
                    VStack(spacing: 15){
                        ForEach(data){i in
                            Image(i.image)
                                .resizable()
                                .frame(height: 250)
                                .cornerRadius(15)
                                .onTapGesture {
                                    self.detailCard = i
                                    // Navigation...
                                    self.show.toggle()
                                }
                        }// ForEach
                    }// VStack
                    .padding([.horizontal, .bottom])
                    .padding(.top, 45)
                }// ScrollView
                Spacer(minLength: 0)
            }// VStack
            // Slide Out Menu...
            HStack{
                VStack(spacing: 15){
                    
                    Image("Pic")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        .padding(.top, (UIApplication.shared.windows.first?.safeAreaInsets.top)! + 30)
                    Text("iJustine")
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                    
                    Spacer(minLength: 0)
                }// VStack
                // Custom Width...
                // スライドメニューの幅を指定する
                .frame(width: UIScreen.main.bounds.width / 1.5)
                .background(.white)
                
                Spacer(minLength: 0)
            }// HStack
            // hiding View...
            .offset(x: self.menu ? 0 : -UIScreen.main.bounds.width)
            // background...
            .background(Color.black.opacity(self.menu ? 0.28 : 0).edgesIgnoringSafeArea(.all))
            .onTapGesture {
                // Closing Menu...
                withAnimation{
                    self.menu.toggle()
                }
            }// .onTapGesture
        }
        .background(Color.black.opacity(0.07).edgesIgnoringSafeArea(.all))
        .edgesIgnoringSafeArea(.all)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



