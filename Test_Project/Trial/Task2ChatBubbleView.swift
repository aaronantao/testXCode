//
//  Task2ChatBubbleView.swift
//  VIewSIzingandPlacement
//
//  Created by iOS SDP Mac98 on 14/10/26.
//

import SwiftUI

struct Task2ChatBubbleView: View {
    var body: some View {
            VStack (spacing: 16) {
                HStack{
                    Text("Hello this is a long message that adjusts according to the width of the chat layout")
                        .padding()
                        .background(.green.opacity(0.5))
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .fixedSize(horizontal: false, vertical: true)
                .padding(.horizontal)
                HStack{
                    Text("Sure! Let me send you the details")
                        .padding()
                        .background(.gray.opacity(0.5))
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                }
                        .frame(maxWidth: 550, alignment: .trailing)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.horizontal)
            }
        }
    }

#Preview {
    Task2ChatBubbleView()
}
