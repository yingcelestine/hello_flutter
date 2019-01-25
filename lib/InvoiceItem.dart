class Product {
  static int _counter = 0;
  int _id;
  String _description;
  double _unitPrice;
  Product(this._description, this._unitPrice) {
    this._id = Product._counter;
    Product._counter++;
  }

  get description {
    return _description;
  }

  get unitPrice {
    return _unitPrice;
  }
}

class InvoiceItem {
  static int _counter = 0;
  int _id;
  String _description;
  int _quantity;
  Product _prod;
  InvoiceItem(this._description, this._quantity, this._prod) {
    this._id = InvoiceItem._counter;
    InvoiceItem._counter++;
  }

  double price() {
    return _quantity * _prod.unitPrice;
  }

  double VAT() {
    return price() * 0.21;
  }

  double priceWithVAT() {
    return price() + VAT();
  }

  @override
  String toString() {
    return """
    Invoice ID: $_id
    Product: ${_prod.description}
    Quantity: $_quantity
    Price: ${price()}
    VAT: ${VAT()}
    Total price: ${priceWithVAT()}
    """;
  }
}

main(List<String> args) {
  var prod = Product("handcream", 3.1);
  var invoice = InvoiceItem("2 tubes of handcream for ying", 2, prod);
  print(invoice);
}
