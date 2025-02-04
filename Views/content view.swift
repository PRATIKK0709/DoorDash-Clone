import SwiftUI


struct ContentView: View {
    @State private var searchText = "Search \"Coffee\""
    @State private var selectedCategory = 0
    @State private var likedRestaurants: Set<UUID> = []
    
    let categories = [
        // Row 1
        Category(name: "Convenience", icon: "🏪", color: .green),
        Category(name: "Offers", icon: "🔥", color: .red),
        Category(name: "Grocery", icon: "🥑", color: .blue),
        Category(name: "Electronics", icon: "💻", color: .purple),
        Category(name: "Packages", icon: "📦", color: .orange),
        Category(name: "Alcohol", icon: "🍷", color: .pink),
        
        // Row 2
        Category(name: "Fast Food", icon: "🍟", color: .red),
        Category(name: "Burgers", icon: "🍔", color: .orange),
        Category(name: "Pizza", icon: "🍕", color: .red),
        Category(name: "Chicken", icon: "🍗", color: .brown),
        Category(name: "Desserts", icon: "🍰", color: .purple),
        Category(name: "Chinese", icon: "🥡", color: .red)
    ]

    let restaurants = [
        Restaurant(
            name: "Gourmet Burger Kitchen",
            image: "https://images.unsplash.com/photo-1568901346375-23c9450c58cd",
            rating: "4.7",
            ratingCount: "2.8k",
            cuisine: "American • Burgers",
            deliveryTime: "15-30 min",
            deliveryFee: "$0.99",
            distance: "0.8 mi",
            isNew: true,
            isDashPass: true,
            topPicks: ["Classic Burger", "Truffle Fries"]
        ),
        Restaurant(
            name: "Pizza Artisans",
            image: "https://images.unsplash.com/photo-1513104890138-7c749659a591",
            rating: "4.8",
            ratingCount: "3.2k",
            cuisine: "Italian • Pizza",
            deliveryTime: "20-35 min",
            deliveryFee: "$1.99",
            distance: "1.2 mi",
            isNew: false,
            isDashPass: true,
            topPicks: ["Margherita Pizza", "Garlic Knots"]
        ),
        Restaurant(
            name: "Sushi Master",
            image: "https://images.unsplash.com/photo-1579871494447-9811cf80d66c",
            rating: "4.9",
            ratingCount: "1.5k",
            cuisine: "Japanese • Sushi",
            deliveryTime: "25-40 min",
            deliveryFee: "$2.99",
            distance: "1.7 mi",
            isNew: true,
            isDashPass: true,
            topPicks: ["Dragon Roll", "Miso Soup"]
        ),
        Restaurant(
            name: "Taco Fiesta",
            image: "https://images.unsplash.com/photo-1565299585323-38d6b0865b47",
            rating: "4.6",
            ratingCount: "2.1k",
            cuisine: "Mexican • Tacos",
            deliveryTime: "20-35 min",
            deliveryFee: "$1.49",
            distance: "0.9 mi",
            isNew: false,
            isDashPass: true,
            topPicks: ["Street Tacos", "Guacamole"]
        ),
        Restaurant(
            name: "Thai Spice",
            image: "https://images.unsplash.com/photo-1559314809-0d155014e29e",
            rating: "4.7",
            ratingCount: "1.9k",
            cuisine: "Thai • Asian",
            deliveryTime: "30-45 min",
            deliveryFee: "$2.49",
            distance: "2.1 mi",
            isNew: false,
            isDashPass: true,
            topPicks: ["Pad Thai", "Green Curry"]
        )
    ]

    let promotions = [
        Promotion(
            image: "https://images.unsplash.com/photo-1504674900247-0877df9cc836",
            title: "Save on your first month",
            subtitle: "50% off DashPass membership",
            promoText: "Limited time only",
            validUntil: "Ends soon",
            buttonText: "Sign up"
        ),
        Promotion(
            image: "https://images.unsplash.com/photo-1543168256-418811576931",
            title: "Free delivery on grocery",
            subtitle: "On orders $35+",
            promoText: "GROCERY35",
            validUntil: "This week only",
            buttonText: "Shop now"
        ),
        Promotion(
            image: "https://images.unsplash.com/photo-1521017432531-fbd92d768814",
            title: "Happy Hour deals",
            subtitle: "20% off local restaurants",
            promoText: "HAPPY20",
            validUntil: "4PM - 8PM daily",
            buttonText: "Order now"
        )
    ]

    var body: some View {
           NavigationStack {
               ScrollView {
                   VStack(spacing: 0) {
                       AddressHeaderView()
                       SearchBarView(searchText: $searchText)
                       CategoryGridView(categories: categories)
                       FilterOptionsView()
                       PromotionsView(promotions: promotions)
                       TopPickupOptionsView()
                       RestaurantListView(restaurants: restaurants, likedRestaurants: $likedRestaurants)
                   }
               }
               .background(Color.backgroundGray)
               .navigationBarHidden(true)
               .safeAreaInset(edge: .bottom) {
                   CustomTabBar()
               }
           }
       }
    }
