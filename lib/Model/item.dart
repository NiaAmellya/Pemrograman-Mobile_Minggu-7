class Item {
  int _id;
  String _name;
  int _price;
  int _stok;
  String _kode;

  int get id => _id;

  String get name => this._name;
  set name(String value) => this._name = value;

  get price => this._price;
  set price(value) => this._price = value;

  get stok => _stok;
  set stok(value) => this._stok = value;

  String get kode => this._kode;
  set kode(String value) => this._kode = value;

// konstruktor versi 1
  Item(this._name, this._price, this._stok, this._kode);
  Item.fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._name = map['name'];
    this._price = map['price'];
    this._stok = map['stok'];
    this._kode = map['kode'];
  }
  // konversi dari Item ke Map
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this._id;
    map['name'] = this._name;
    map['price'] = this._price;
    map['stok'] = this._stok;
    map['kode'] = this._kode;
    return map;
  }
}
