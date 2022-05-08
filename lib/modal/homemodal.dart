class VenueModal {
  int? status;
  VenueDataModal? data;
  VenueModal(js) {
    status = js['status'] ?? "";
    data = VenueDataModal(js['data']);
  }
}

class VenueDataModal {
  List<VenueListModal> venue = [];
  VenueDataModal(js) {
    for (var i = 0; i < js['venue_list'].length; i++) {
      venue.add(VenueListModal(js['venue_list'][i]));
    }
  }
}

class VenueListModal {
  String? venue_id;
  String? venue_name;
  String? venue_des;
  String? venue_state;
  String? venue_city;
  String? pincode;
  String? venue_img;
  VenueListModal(js) {
    venue_id = js['venue_id'] ?? "";
    venue_name = js['venue_name'] ?? "";
    venue_des = js['venue_des'] ?? "";
    venue_state = js['venue_state'] ?? "";
    venue_city = js['venue_city'] ?? "";
    pincode = js['pincode'] ?? "";
    venue_img = js['venue_img'] ?? "";
  }
}

class UserdetailModal {
  UserDataModal? data;
  UserdetailModal(js) {
    data = UserDataModal(js['data']);
  }
}

class UserDataModal {
  String? userid;
  String? name;
  String? lastname;
  String? mobile;
  String? state;
  String? city;
  String? email;
  String? pincode;
  UserDataModal(js) {
    userid = js['user_id'];
    name = js['name'];
    mobile = js['mob_no'];
    lastname = js['last_name'];
    email = js['email'];
    city = js['city'];
    state = js['state'];
    pincode = js['pincode'];
  }
}

class SlotModal {
  dynamic status;
  dynamic message;
  // String? slot_price;
  List<SlotdataModal> slot = [];
  SlotModal(js) {
    status = js['status'] ?? "";
    message = js['message'] ?? "";
    // slot_price = js['slot_price'] ?? "";
    for (var i = 0; i < js['data'].length; i++) {
      slot.add(SlotdataModal(js['data'][i]));
    }
  }
}

class SlotdataModal {
  String? venue_start_time;
  String? venue_end_time;
  String? slot_time_id;
  String? Slot_price;
  String? is_booked;
  String? price;
  SlotdataModal(js) {
    venue_start_time = js['venue_start_time'] ?? "";
    venue_end_time = js['venue_end_time'] ?? "";
    slot_time_id = js['slot_id'] ?? "";
    is_booked = js['is_booked'] ?? "";
    price = js['price'];
  }
}

class CityModal {
  List<CitymodalData> data = [];
  CityModal(js) {
    for (var i = 0; i < js['data'].length; i++) {
      data.add(CitymodalData(js['data'][i]));
    }
  }
}

class CitymodalData {
  String? id;
  String? place;
  CitymodalData(js) {
    id = js['id'] ?? "";
    place = js['place'] ?? "";
  }
}
