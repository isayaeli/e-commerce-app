class ItemsData {
  final name;
  final img;
  final price;
  final amount;

  ItemsData({this.name, this.img, this.amount, this.price});
}

List <ItemsData> data = [
    ItemsData(
      name:'Bell pepper',
      img:'images/product-1.jpg',
      price:'Tsh 350',
      amount:'500g'
    ),
     ItemsData(
      name:'Carrot',
      img:'images/product-7.jpg',
      price:'Tsh 500',
      amount:'500g'
    ),
     ItemsData(
      name:'Beans',
      img:'images/product-3.jpg',
      price:'Tsh 399',
      amount:'750g'
    ),
     ItemsData(
      name:'purple cabbage',
      img:'images/product-4.jpg',
      price:'Tsh 1500',
      amount:'500g'
    ),
     ItemsData(
      name:'Tomatoes',
      img:'images/product-5.jpg',
      price:'Tsh 800',
      amount:'500g'
    )
];