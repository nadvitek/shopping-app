//
//  OnBoardingScreenView.swift
//  ShoppingApp
//
//  Created by Vít Nademlejnský on 31.07.2023.
//

import SwiftUI

struct OnBoardingScreenView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                Spacer()
                Image("img")
                    .resizable()
                    .aspectRatio(contentMode:.fill)
                    .padding()
                VStack(alignment: .leading, spacing: 10){
                    Text("Order your favorite fruits.")
                        .fontWeight(.bold)
                        .font(.system(.largeTitle))
                    Text("Eat fresh fruits and try to be halthy.")
                        .fontWeight(.bold)
                        .font(.system(.title3))
                        .foregroundColor(.black.opacity(0.7))
                }
                Spacer()
                NavigationLink {
                    HomeScreen()
                } label: {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color("6"))
                        .frame(width: 280, height: 60, alignment: .trailing)
                        .overlay {
                            HStack(spacing: 10) {
                                Text("Next")
                                    .font(.title)
                                    .fontWeight(.bold)
                                Image(systemName: "chevron.right")
                            }.foregroundColor(.black)
                        }
                }
                Spacer()

            }
            .toolbar(.hidden, for: .navigationBar)
        }
    }
}

struct OnBoardingScreenView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingScreenView()
    }
}
