abstract class ListeyeEkleEvents{

}

class ListeyeEkleEventi extends ListeyeEkleEvents{
  final String statem;
  ListeyeEkleEventi(this.statem);
}

class ListedenCikartEventi extends ListeyeEkleEvents{
  final String cikartilacak;
  ListedenCikartEventi(this.cikartilacak);
}