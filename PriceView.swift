import SwiftUI

struct PriceView: View {
    private let prices: [[String]]
    private let color: Color

    init(
        prices: [[String]],
        color: Color
    ) {
        self.prices = prices
        self.color = color
    }

    var body: some View {
        VStack(alignment: .trailing, spacing: 2) {
            ForEach(prices, id: \.self) { prices in
                HStack(spacing: 4) {
                    Spacer(minLength: 0)
                    ForEach(prices, id: \.self) { price in
                        HStack(spacing: 0) {
                            Text(price)
                                .background(color)
                        }
                    }
                }.frame(maxWidth: .infinity)
            }
        }
        .border(.black)
    }
}
