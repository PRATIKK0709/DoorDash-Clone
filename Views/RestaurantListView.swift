import SwiftUI

struct RestaurantListView: View {
   let restaurants: [Restaurant]
   @Binding var likedRestaurants: Set<UUID>
   
   var body: some View {
       VStack(alignment: .leading, spacing: 16) {
           Text("All Restaurants")
               .font(.system(size: 20, weight: .bold))
               .padding(.horizontal)
           
           ForEach(restaurants) { restaurant in
               RestaurantCard(
                   restaurant: restaurant,
                   isLiked: likedRestaurants.contains(restaurant.id)
               ) {
                   if likedRestaurants.contains(restaurant.id) {
                       likedRestaurants.remove(restaurant.id)
                   } else {
                       likedRestaurants.insert(restaurant.id)
                   }
               }
           }
       }
       .padding(.vertical)
   }
}

struct RestaurantCard: View {
   let restaurant: Restaurant
   let isLiked: Bool
   let onLikeTapped: () -> Void
   
   var body: some View {
       VStack(alignment: .leading, spacing: 0) {
           ZStack(alignment: .topTrailing) {
               AsyncImage(url: URL(string: restaurant.image)) { image in
                   image
                       .resizable()
                       .aspectRatio(contentMode: .fill)
               } placeholder: {
                   Color.gray.opacity(0.3)
               }
               .frame(height: 180)
               .clipped()
               
               Button(action: onLikeTapped) {
                   Image(systemName: isLiked ? "heart.fill" : "heart")
                       .foregroundColor(isLiked ? .doordashRed : .white)
                       .padding(8)
                       .background(Color.white.opacity(0.8))
                       .clipShape(Circle())
               }
               .padding(12)
           }
           
           VStack(alignment: .leading, spacing: 4) {
               HStack {
                   Text(restaurant.name)
                       .font(.system(size: 16, weight: .semibold))
                   if restaurant.isNew {
                       Text("NEW")
                           .font(.system(size: 12, weight: .bold))
                           .padding(.horizontal, 6)
                           .padding(.vertical, 2)
                           .background(Color.doordashRed)
                           .foregroundColor(.white)
                           .cornerRadius(4)
                   }
                   if restaurant.isDashPass {
                       Image(systemName: "checkmark.seal.fill")
                           .foregroundColor(.doordashRed)
                   }
               }
               
               HStack {
                   Image(systemName: "star.fill")
                       .foregroundColor(.doordashRed)
                   Text(restaurant.rating)
                   Text("(\(restaurant.ratingCount))")
                   Text("•")
                   Text(restaurant.cuisine)
               }
               .font(.system(size: 14))
               .foregroundColor(.gray)
               
               Text("\(restaurant.deliveryTime) • \(restaurant.deliveryFee) delivery • \(restaurant.distance)")
                   .font(.system(size: 14))
                   .foregroundColor(.gray)
               
               if !restaurant.topPicks.isEmpty {
                   Text("Popular: " + restaurant.topPicks.joined(separator: ", "))
                       .font(.system(size: 14))
                       .foregroundColor(.gray)
                       .padding(.top, 4)
               }
           }
           .padding(.horizontal)
           .padding(.vertical, 12)
       }
       .background(Color.white)
       .cornerRadius(12)
       .shadow(color: .black.opacity(0.1), radius: 4)
       .padding(.horizontal)
   }
}
