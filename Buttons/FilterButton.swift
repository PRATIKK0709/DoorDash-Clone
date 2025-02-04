import SwiftUI

struct FilterButton: View {
   let title: String
   let icon: String
   
   var body: some View {
       Button(action: {}) {
           HStack {
               Image(systemName: icon)
               Text(title)
           }
           .padding(.horizontal, 16)
           .padding(.vertical, 8)
           .background(Color.white)
           .cornerRadius(20)
           .overlay(
               RoundedRectangle(cornerRadius: 20)
                   .stroke(Color.gray.opacity(0.3))
           )
       }
       .foregroundColor(.black)
   }
}
