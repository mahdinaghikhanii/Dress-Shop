
import SwiftUI

func productImage(url: URL) -> some View {
    AsyncImage(url: url) { image in
        image.resizable()
            .scaledToFit()
    } placeholder: {
        ProgressView()
    }
    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
}


var buyButton: some View{
    Button(action: {}, label: {
        Text("Buy").foregroundStyle(.white)
    })
}
