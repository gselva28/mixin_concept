void main() {
  print('normal movement of animal');
  Animal().move();
  Fish().move();
  Bird().move();
  print('mixin movement');
  Duck().swim();
  Aeroplane().fly();
}

class Animal {
  void move() {
    print('changed position');
  }
}

class Fish extends Animal {
  @override
  void move() {
    super.move(); //calls the move in animal
    print('by swimming');
  }
}

class Bird extends Animal {
  @override
  void move() {
    super.move(); //calls the move in animal
    print('by flying');
  }
}

mixin CanSwim {
  void swim() {
    print('Changing position by swimming');
  }
}

mixin CanFly {
  void fly() {
    print('Changing position by flying');
  }
}

class Duck extends Animal with CanSwim, CanFly {}

class Aeroplane with CanFly {}
