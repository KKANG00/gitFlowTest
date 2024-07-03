import SwiftUI

struct PriceView: View {
    private let prices: [[String]]

    init(
        prices: [[String]]
    ) {
        self.prices = prices
    }

    var body: some View {
        HStack {
            ForEach(prices, id: \.self) { prices in
                HStack(spacing: 4) {
                    Spacer(minLength: 0)
                    ForEach(prices, id: \.self) { price in
                        HStack(spacing: 0) {
                            Text(price)
                                .background(.blue)
                        }
                    }
                }
                .frame(maxWidth: .infinity)
            }
            Text("This is Price View")
        }
    }
}

