
import SwiftUI

struct HomeView: View {
    let productController = HomeController()
    var body: some View {
        NavigationStack {
            List {
                ForEach(Array(productController.products.enumerated()), id: \.element.id) { index, product in
                    NavigationLink {
//                        ProductDetailsView(products: viewModel.products, index: index)
                    } label: {
                        Text("s")
//                        ProductRowView(product: product)
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Products")
        }.task{
            await  HomeController().getProducts()
          }
    }
}

#Preview {
    HomeView()
}
