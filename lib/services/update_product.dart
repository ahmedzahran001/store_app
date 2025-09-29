import 'package:store_me/helper/api.dart';
import 'package:store_me/models/product_model.dart';

class UpdateProductServices {
  Future<ProductModel> updateProduct(
      {required String title,
      required String price,
      required String description,
      required String image,
      required dynamic id,
      required String category}) async {
    // ignore: missing_required_param
    // print('product id = $id');
    Map<String, dynamic> data = await Api().put(
      url: 'https://fakestoreapi.com/products/',
      // url: 'https://fakestoreapi.com/products/$id',
      body: {
        'title': title,
        'price': price,
        'description': description,
        'image': image,
        'category': category,
      },
    );
    return ProductModel.fromJson(data);
  }
}
