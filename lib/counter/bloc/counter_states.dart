class CounterState{
  List<String> isimler = ["mustafa","ayşe","gamze","cansu"];
  List<String> kullanicininSectikleri;
  CounterState({required this.kullanicininSectikleri}); 
}

class InitialState extends CounterState{
  InitialState():super(kullanicininSectikleri: []);
}

