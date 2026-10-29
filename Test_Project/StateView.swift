//
//  StateView.swift
//  StateDemo
//
//  Created by iOS SDP Mac98 on 14/10/26.
//

import SwiftUI

struct StateView: View {
    @State var backgroundColor: Color = .black
    var body: some View {
        ZStack{
            backgroundColor
            HStack{
                Button("Red"){
                    backgroundColor = .red
                }
                .foregroundStyle(Color(.red))
                .padding()
                Button("Yellow"){
                    backgroundColor = .yellow
                }
                .foregroundStyle(Color(.yellow))
                .padding()
                Button("Green"){
                    backgroundColor = .green
                }
                .foregroundStyle(Color(.green))
                .padding()
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    StateView()
}
