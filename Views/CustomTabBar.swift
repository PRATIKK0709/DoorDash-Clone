import SwiftUI

struct CustomTabBar: View {
   var body: some View {
       HStack {
           TabBarButton(title: "Home", icon: "house.fill", isSelected: true)
           TabBarButton(title: "Grocery", icon: "leaf")
           TabBarButton(title: "Shopping", icon: "bag")
           TabBarButton(title: "Browse", icon: "magnifyingglass")
           TabBarButton(title: "Me", icon: "person")
       }
       .padding(.top, 8)
       .background(Color.white)
       .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: -5)
   }
}
