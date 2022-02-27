//
//  DetailPageView.swift
//  CustomAppBar
//
//  Created by nakamura motoki on 2022/02/26.
//

import SwiftUI

struct DetailPageView: View{
    
    @State var carcModel: CardModel
    // DetailPageViewの表示有無をHomeViewと共有
    @Binding var show: Bool
    
    var body: some View{
        VStack(spacing: 0){
            HStack(spacing: 20){
                Button{
                    // Poping View back...
                    self.show.toggle()
                }label: {
                    Image(systemName: "chevron.left")
                        .font(.system(size: 24, weight: .bold))
                }// Button
                
                Text(self.carcModel.title)
                    .font(.title)
                    .fontWeight(.bold)
                
                Spacer(minLength: 0)
            }// HStack
            .foregroundColor(.white)
            .padding(.top, (UIApplication.shared.windows.first?.safeAreaInsets.top)! + 8)
            .padding([.horizontal, .bottom])
            .background(Color("Color"))
            // data配列の画像を表示
            Image(self.carcModel.image)
                .resizable()
                .frame(height: 320)
            VStack(alignment: .leading, spacing: 15){
                Text(self.carcModel.title)
                    .fontWeight(.bold)
                    .font(.title)

                Text(self.carcModel.details)
            }// VStack
            .foregroundColor(.white)
            .padding()
            Spacer(minLength: 0)
        }// VStack
        .edgesIgnoringSafeArea(.all)
        .navigationTitle("")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        
    }
}

struct DetailPageView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
