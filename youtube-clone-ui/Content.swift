//
//  Content.swift
//  youtube-clone-ui
//
//  Created by Irfan Izudin on 20/03/22.
//

import SwiftUI

struct Content: View {
    var body: some View {
        VStack{
            ZStack(alignment: .bottomTrailing){
                Image("thumbnail")
                    .resizable()
                    .scaledToFit()
                Text("10:56")
                    .padding(4)
                    .background(.gray.opacity(0.6))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(8)
                    .font(.caption)
            }
            HStack{
                Image("profile")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40, alignment: .center)
                    .clipShape(Circle())
                    .padding(.leading)
                VStack(alignment: .leading){
                    Text("Swift UI 101 Tutorial #1")
                        .font(.headline)
                    HStack{
                        Text("Irfan Izudin")
                        Text("231K views")
                        Text("2 hours ago")
                    }.font(.caption)
                        .foregroundColor(.gray)
                }
                .padding(.leading)
                Spacer()
                Image(systemName: "ellipsis")
                    .rotationEffect(.degrees(90))
                    .padding(.trailing)
            }
        }

    }
}

struct Content_Previews: PreviewProvider {
    static var previews: some View {
        Content()
    }
}
