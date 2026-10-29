//
//  Task1MusicPlayerScreen.swift
//  VIewSIzingandPlacement
//
//  Created by iOS SDP Mac98 on 14/10/26.
//

import SwiftUI

struct Task1MusicPlayerScreen: View {
    var body: some View {
        ZStack{
            LinearGradient(
                colors: [.primary, .white, .brown],
                startPoint: .bottom,
                endPoint: .top
            )
            .ignoresSafeArea()
            VStack(spacing: 12){
                Text("Now Playing")
                    .foregroundStyle(Color(.black))
                Image("unnamed")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 10, height: 300)
                Text("She's Electric")
                    .font(.title.bold())
                    .foregroundStyle(Color(.black))
                Text("Oasis")
                    .foregroundStyle(Color(.black))
                Slider(value: .constant(0.4))
                    .tint(.white)
                    .padding()
                HStack(spacing: 28){
                    Image(systemName: "backward.fill")
                        .font(.system(size: 40))
                    Image(systemName: "play.circle.fill")
                        .font(.system(size: 65))
                    Image(systemName: "forward.fill")
                        .font(.system(size: 40))
                }
            }
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    Task1MusicPlayerScreen()
}
