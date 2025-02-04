import SwiftUI

struct TabBarButton: View {
   let title: String
   let icon: String
   var isSelected: Bool = false
   
   var body: some View {
       VStack {
           Image(systemName: icon)
               .foregroundColor(isSelected ? .doordashRed : .gray)
           Text(title)
               .font(.system(size: 12))
               .foregroundColor(isSelected ? .doordashRed : .gray)
       }
       .frame(maxWidth: .infinity)
   }
}

