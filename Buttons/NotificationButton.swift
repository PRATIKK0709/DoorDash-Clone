import SwiftUI

    struct NotificationButton: View {
       var body: some View {
           Button(action: {}) {
               ZStack(alignment: .topTrailing) {
                   Image(systemName: "bell.fill")
                       .foregroundColor(.black)
                   Text("8")
                       .font(.system(size: 12))
                       .foregroundColor(.white)
                       .padding(4)
                       .background(Color.doordashRed)
                       .clipShape(Circle())
                       .offset(x: 8, y: -8)
               }
           }
       }
    }
