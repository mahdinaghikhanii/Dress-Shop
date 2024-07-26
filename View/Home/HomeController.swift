

import Foundation


@Observable class HomeController {
    var products: [HomeProductsModel] = []
    private let manager = APIManager()
    
    func getProducts()async{
        do{
   
            products = try await manager.request(url: "https://fakestoreapi.com/products")
            print(products)
        } catch{
            print("we have problems Here")
        }
    }
}
