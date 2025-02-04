import SwiftUI

struct Category: Identifiable {
    let id = UUID()
    let name: String
    let icon: String
    let color: Color
}

struct Restaurant: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let rating: String
    let ratingCount: String
    let cuisine: String
    let deliveryTime: String
    let deliveryFee: String
    let distance: String
    let isNew: Bool
    let isDashPass: Bool
    let topPicks: [String]
}

struct Promotion: Identifiable {
    let id = UUID()
    let image: String
    let title: String
    let subtitle: String
    let promoText: String
    let validUntil: String
    let buttonText: String
}
