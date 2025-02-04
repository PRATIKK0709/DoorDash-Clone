import SwiftUI

struct CategoryGridView: View {
    let categories: [Category]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: [
                GridItem(.fixed(110)),
                GridItem(.fixed(110))
            ], spacing: 16) {
                ForEach(categories) { category in
                    CategoryCell(category: category)
                        .frame(width: 80)  // Fixed width for each cell
                }
            }
            .padding(.horizontal)
        }
        .frame(height: 220)  // Fixed height for two rows
        .background(Color.white)
    }
}

struct CategoryCell: View {
    let category: Category
    
    var body: some View {
        VStack(spacing: 8) {
            ZStack {
                Circle()
                    .fill(category.color.opacity(0.1))
                    .frame(width: 60, height: 60)
                Text(category.icon)
                    .font(.system(size: 30))
            }
            
            Text(category.name)
                .font(.system(size: 12, weight: .medium))
                .multilineTextAlignment(.center)
                .lineLimit(1)
        }
    }
}
