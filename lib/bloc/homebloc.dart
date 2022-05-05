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

  final BehaviorSubject<SlotModal> _liveSlot = BehaviorSubject<SlotModal>();
  BehaviorSubject<SlotModal> get getSlot => _liveSlot;
  fetchslot() async {
    try {
      SlotModal homeSlider = await _homeRepo.fetchslot();
      // print(homeSlider.imgs!.length);

      _liveSlot.add(homeSlider);
    } catch (e) {
      print(e);
    }
  }

  final BehaviorSubject<UserdetailModal> liveUserData =
      BehaviorSubject<UserdetailModal>();
  BehaviorSubject<UserdetailModal> get getUserdetails => liveUserData;
  getuserData() async {
    try {
      UserdetailModal homeSlider = await _homeRepo.getuserData();
      // print(homeSlider.imgs!.length);

      liveUserData.add(homeSlider);
    } catch (e) {
      print(e);
    }
  }
}

final homeBloc = HomeBloc();
