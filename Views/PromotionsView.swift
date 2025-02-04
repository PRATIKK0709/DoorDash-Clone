import SwiftUI

struct PromotionsView: View {
   let promotions: [Promotion]
   
   var body: some View {
       ScrollView(.horizontal, showsIndicators: false) {
           HStack(spacing: 12) {
               ForEach(promotions) { promotion in
                   PromotionCard(promotion: promotion)
               }
           }
           .padding(.horizontal)
       }
       .padding(.vertical, 8)
   }
}

struct PromotionCard: View {
   let promotion: Promotion
   
   var body: some View {
       VStack(alignment: .leading) {
           AsyncImage(url: URL(string: promotion.image)) { image in
               image
                   .resizable()
                   .aspectRatio(contentMode: .fill)
           } placeholder: {
               Color.gray.opacity(0.3)
           }
           .frame(width: 300, height: 150)
           .clipped()
           
           VStack(alignment: .leading, spacing: 8) {
               Text(promotion.title)
                   .font(.system(size: 18, weight: .bold))
               
               Text(promotion.subtitle)
                   .font(.system(size: 14))
               
               Text(promotion.validUntil)
                   .font(.system(size: 12))
                   .foregroundColor(.gray)
               
               Button(action: {}) {
                   Text(promotion.buttonText)
                       .font(.system(size: 14, weight: .semibold))
                       .foregroundColor(.white)
                       .padding(.horizontal, 16)
                       .padding(.vertical, 8)
                       .background(Color.doordashRed)
                       .cornerRadius(20)
               }
           }
           .padding()
       }
       .background(Color.white)
       .cornerRadius(12)
       .shadow(color: .black.opacity(0.1), radius: 4)
   }
}
