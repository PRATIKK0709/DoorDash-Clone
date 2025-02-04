import SwiftUI

struct FilterOptionsView: View {
   var body: some View {
       ScrollView(.horizontal, showsIndicators: false) {
           HStack(spacing: 12) {
               FilterButton(title: "Delivery Fees", icon: "chevron.down")
               FilterButton(title: "Pickup", icon: "figure.walk")
               FilterButton(title: "Deals", icon: "tag.fill")
               FilterButton(title: "New", icon: "sparkles")
               FilterButton(title: "DashPass", icon: "checkmark.seal.fill")
               FilterButton(title: "Rating", icon: "star.fill")
           }
           .padding(.horizontal)
       }
       .padding(.vertical, 8)
       .background(Color.white)
   }
}
