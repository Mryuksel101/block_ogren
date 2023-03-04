class People{
 List<String> greatPeople = ["fatih kaftanci", "bugra abi", "mehmet atci", "burcin kılıç"];
 List<String> kullaniciSecimi;

 People({required this.kullaniciSecimi});
}

class InitialState extends People{
  InitialState():super(
    kullaniciSecimi: [],
  );
}