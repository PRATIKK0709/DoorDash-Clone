
import SwiftUI

struct TopPickupOptionsView: View {
   var body: some View {
       VStack(alignment: .leading) {
           HStack {
               Text("Popular Near You")
                   .font(.system(size: 20, weight: .bold))
               Spacer()
               Button(action: {}) {
                   Text("See all")
                       .font(.system(size: 14, weight: .semibold))
                       .foregroundColor(.doordashRed)
               }
           }
           .padding(.horizontal)
           
           ScrollView(.horizontal, showsIndicators: false) {
               HStack(spacing: 16) {
                   ForEach(0..<5) { _ in
                       TopPickupCard()
                   }
               }
               .padding(.horizontal)
           }
       }
       .padding(.vertical)
   }
}

struct TopPickupCard: View {
   var body: some View {
       VStack(alignment: .leading) {
           AsyncImage(url: URL(string: "https://images.unsplash.com/photo-1565299624946-b28f40a0ae38")) { image in
               image
                   .resizable()
                   .aspectRatio(contentMode: .fill)
           } placeholder: {
               Color.gray.opacity(0.3)
           }
           .frame(width: 280, height: 150)
           .clipped()
           .cornerRadius(12)
           
           Text("Popular Restaurant")
               .font(.system(size: 16, weight: .semibold))
           Text("$$$ • American • Fast Food")
               .font(.system(size: 14))
               .foregroundColor(.gray)
       }
   }
}
