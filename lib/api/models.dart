// class Product {
//   String id;
//   String title;
//   String slug;
//   String excerpt;
//   String createdAt;
//   String mainCategory;
//   String ribbon;
//   String customPerVariation;
//   String inStockCombinationId;
//   int price;
//   String realPrice;
//   String inStock;
//   String titleRelevance;
//   String relevance;
//   String url;
//   String thumbnail;
//   String alternativeImage;
//   int salePrice;
//   String saleType;
//   int saleAmount;
//   double commentScore;
//   int commentCount;
//   String maxQuantity;
//
//   // New Api Call Info
//   String rowCreationTime;
//   String productId;
//   int mainCategoryId;
//   int sub1CategoryId;
//   int sub2CategoryId;
//   String mainCategoryName;
//   String sub1CategoryName;
//   String sub2CategoryName;
//   int categoryId;
//   int discount;
//   int averageScore;
//
//   // web engage specific
//   String quantity;
//   String inventoryStatus;
//   String oversell;
//   int discountType;
//
//   // combination specific
//   String combinationId;
//   int combinationQuantity;
//   int combinationPrice;
//   String country;
//   String brandName;
//   int combinationIdInUse;
//   int combinationDiscount;
//   int combinationDiscountType;
//
//
//   Product.fromJson(Map<String, dynamic> json) {
//     id = json['id'].toString();
//     title = json['title'];
//     slug = json['slug'];
//     excerpt = json['excerpt'];
//     createdAt = json['created_at'];
//     mainCategory = json['main_category'];
//     ribbon = json['ribbon'];
//     combinationId = json['combination_id'];
//     customPerVariation = json['custom_per_variation'];
//     inStockCombinationId = json['in_stock_combination_id'];
//     price = json['price'];
//     realPrice = json['real_price'];
//     inStock = json['in_stock'].toString();
//     titleRelevance = json['title_relevance'];
//     relevance = json['relevance'];
//     rowCreationTime = json['row_creation_time'];
//     productId = json['product_id'].toString();
//     mainCategoryId = json['main_category_id'];
//     sub1CategoryId = json['sub_1_category_id'];
//     sub2CategoryId = json['sub_2_category_id'];
//     mainCategoryName = json['main_category_name'];
//     sub1CategoryName = json['sub_1_category_name'];
//     sub2CategoryName = json['sub_2_category_name'];
//     categoryId = json['category_id'];
//     discount = json['discount_value'];
//     if (discount == null) {
//       discount = json['discount'];
//     }
//     quantity = json['quantity'];
//     inventoryStatus = json['inventory_status'];
//     oversell = json['oversell'];
//     averageScore = json['average_score'] ?? 0;
//     discountType = json['discount_type'];
//     combinationQuantity = json['combination_quantity'];
//     combinationPrice = json['combination_price'];
//     maxQuantity = json['max_quantity'].toString();
//     country = json['country'];
//     brandName = json['brand_name'];
//     combinationIdInUse = json['combination_id_in_use'];
//     combinationDiscount = json['combination_discount'];
//     combinationDiscountType = json['combination_discount_type'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['title'] = this.title;
//     data['slug'] = this.slug;
//     data['excerpt'] = this.excerpt;
//     data['created_at'] = this.createdAt;
//     data['main_category'] = this.mainCategory;
//     data['ribbon'] = this.ribbon;
//     data['combination_id'] = this.combinationId;
//     data['custom_per_variation'] = this.customPerVariation;
//     data['in_stock_combination_id'] = this.inStockCombinationId;
//     data['price'] = this.price;
//     data['real_price'] = this.realPrice;
//     data['in_stock'] = this.inStock;
//     data['title_relevance'] = this.titleRelevance;
//     data['relevance'] = this.relevance;
//     data['thumbnail'] = this.thumbnail;
//     data['alternative_image'] = this.alternativeImage;
//     data['sale_price'] = this.salePrice;
//     data['sale_type'] = this.saleType;
//     data['sale_amount'] = this.saleAmount;
//     data['row_creation_time'] = this.rowCreationTime;
//     data['product_id'] = this.productId;
//     data['main_category_id'] = this.mainCategoryId;
//     data['sub_1_category_id'] = this.sub1CategoryId;
//     data['sub_2_category_id'] = this.sub2CategoryId;
//     data['main_category_name'] = this.mainCategoryName;
//     data['sub_1_category_name'] = this.sub1CategoryName;
//     data['sub_2_category_name'] = this.sub2CategoryName;
//     data['category_id'] = this.categoryId;
//     data['discount_value'] = this.discount;
//     data['quantity'] = this.quantity;
//     data['inventory_status'] = this.inventoryStatus;
//     data['oversell'] = this.oversell;
//     data['average_score'] = this.averageScore;
//     data['discount_type'] = this.discountType;
//     data['combination_quantity'] = this.combinationQuantity;
//     data['combination_price'] = this.combinationPrice;
//     data['max_quantity'] = this.maxQuantity;
//     data['country'] = this.country;
//     data['brand_name'] = this.brandName;
//     data['combination_id_in_use'] = this.combinationIdInUse;
//     data['combination_discount'] = this.combinationDiscount;
//     data['combination_discount_type'] = this.combinationDiscountType;
//     return data;
//   }
// }