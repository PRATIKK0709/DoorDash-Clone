import SwiftUI

  struct SearchBarView: View {
       @Binding var searchText: String
       
       var body: some View {
           HStack {
               HStack {
                   Image(systemName: "magnifyingglass")
                       .foregroundColor(.gray)
                   TextField("", text: $searchText)
                       .foregroundColor(.gray)
               }
               .padding(12)
               .background(Color.white)
               .cornerRadius(25)
               .shadow(color: .black.opacity(0.1), radius: 2)
               
               Button(action: {}) {
                   Image(systemName: "map.fill")
                       .foregroundColor(.black)
                       .padding(12)
                       .background(Color.white)
                       .clipShape(Circle())
                       .shadow(color: .black.opacity(0.1), radius: 2)
               }
           }
           .padding(.horizontal)
           .padding(.vertical, 8)
           .background(Color.white)
       }
    }


