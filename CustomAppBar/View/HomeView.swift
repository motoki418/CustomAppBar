//
//  HomeView.swift
//  CustomAppBar
//
//  Created by nakamura motoki on 2022/02/26.
//

import SwiftUI

struct HomeView: View {
    // 入力文字を格納
    @State private var search = ""
    // Initialization...
    // CardModelを配列で管理するdata配列を格納
    // 初期値はdata配列の最初の要素(配列のインデックス番号は0が最初)
    @State private var detailCard: CardModel = data[0]
    // DetatiPageViewの表示有無を管理
    @State private var show = false
    // サイドメニューの表示有無を管理
    @State private var menu = false
    // 設定画面の表示有無を管理
    @State var showSetting = false
    
    var body: some View {
        ZStack{
            // Navigation Link...
            NavigationLink(destination: DetailPageView(cardModel: self.detailCard, show: self.$show), isActive: self.$show){
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
                        // data配列から要素を一つずつiに取り出す
                        ForEach(data){i in
                            Image(i.image)
                                .resizable()
                                .frame(height: 250)
                                .cornerRadius(15)
                                .onTapGesture {
                                    //1番目の画像をタップすると配列の0番を代入して配列の最初の要素を表示する
                                    //2番目の画像をタップすると配列の1番を代入して配列の2番目の要素を表示する
                                    self.detailCard = i
                                    // Navigation...
                                    self.show.toggle()
                                }// .onTapGesture
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
                    
                    Button{
                        
                    }label: {
                        Image(systemName: "bell")
                            .foregroundColor(Color("Color"))
                            .font(.title)
                    }// bellボタン
                    
                    Button{
                        withAnimation{
                            self.showSetting.toggle()
                            print(showSetting)
                        }
                    }label: {
                        Image(systemName: "gear")
                            .font(.system(size: 24, weight: .bold))
                    }
                    
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
            // スライドメニューを表示した際の白背景の背景色
            // 薄い青色の上に白色のスライドメニューを重ねて表示
            .background(Color.blue.opacity(self.menu ? 0.5 : 0).edgesIgnoringSafeArea(.all))
            .onTapGesture {
                // Closing Menu...
                withAnimation{
                    // スライドメニューの表示非表示を切り替える
                    self.menu.toggle()
                }
            }// .onTapGesture
        }// ZStack
        // NavigationBarを除いた画面の背景色
        .background(Color.blue.opacity(0.7).edgesIgnoringSafeArea(.all))
        .edgesIgnoringSafeArea(.all)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



