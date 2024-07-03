import SwiftUI

struct ImageView: View {
    private let images: [[String]]

    init(
        images: [[String]]
    ) {
        self.images = images
    }

    var body: some View {
        HStack {
            ForEach(images, id: \.self) {
                Text("\(id)")
            }
        }
    }
}

