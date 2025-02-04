import SwiftUI

struct AddressHeaderView: View {
    var body: some View {
        HStack(spacing: 12) {
            VStack(alignment: .leading, spacing: 4) {
                HStack(spacing: 6) {
                    Image(systemName: "mappin.circle.fill")
                        .foregroundColor(.doordashRed)
                    Text("Delivery • Now")
                        .font(.system(size: 12, weight: .medium))
                }
                
                HStack(spacing: 4) {
                    Text("Current Location")
                        .font(.system(size: 14, weight: .semibold))
                    Image(systemName: "chevron.down")
                        .font(.system(size: 12, weight: .bold))
                }
            }
            .foregroundColor(.black)
            
            Spacer()
            
            Button(action: {}) {
                Text("Search dietary")
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(.black)
                    .padding(.horizontal, 12)
                    .padding(.vertical, 6)
                    .background(Color.backgroundGray)
                    .cornerRadius(16)
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 12)
        .background(Color.white)
    }
}

