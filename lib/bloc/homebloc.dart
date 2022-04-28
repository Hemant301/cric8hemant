import 'package:cric8hemant/repo/homerepo.dart';
import 'package:rxdart/rxdart.dart';

import '../modal/homemodal.dart';

class HomeBloc {
  HomeRepo _homeRepo = HomeRepo();
  final BehaviorSubject<VenueModal> _liveSlider = BehaviorSubject<VenueModal>();
  BehaviorSubject<VenueModal> get getHomeSlider => _liveSlider;
  fetchVenue() async {
    try {
      VenueModal homeSlider = await _homeRepo.fetchVenue();
      // print(homeSlider.imgs!.length);

      _liveSlider.add(homeSlider);
    } catch (e) {
      print(e);
    }
  }
}

final homeBloc = HomeBloc();
