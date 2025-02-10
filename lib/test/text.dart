abstract class shape {
  void Area();
  shape(String named) {
    print(named);
  }
}

class triangle extends shape {
  final int base;
  final int hiegh;

  triangle({required this.base, required this.hiegh}) : super('hello');

  @override
  void Area() {
    // TODO: implement Area
    print(base * hiegh * 0.5);
  }
}

class rectangle extends shape {
  final int length;
  final int width;

  rectangle(super.named, {required this.length, required this.width});
  @override
  void Area() {
    // TODO: implement Area
    print(length * width);
  }
}

class square extends shape {
  final int length;

  square({required this.length}) : super('hello');
  @override
  void Area() {
    // TODO: implement Area
    print(length * length);
  }
}

void main() {
  square a = square(length: 10);
  a.Area();
  triangle b = triangle(base: 10, hiegh: 5);
  b.Area();
  rectangle c = rectangle("dsdsd", length: 10, width: 12);
  c.Area();
}
