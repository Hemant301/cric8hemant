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
  String? img;
  UserdetailModal(js) {
    data = UserDataModal(js['data']);
    img = js['image_url'] ?? "";
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

class WalletdetailModal {
  List<WalletModal> data = [];
  WalletdetailModal(js) {
    for (var i = 0; i < js['wallet'].length; i++) {
      data.add(WalletModal(js['wallet'][i]));
    }
  }
}

class WalletModal {
  String? wallet;
  WalletModal(js) {
    wallet = js['wallet'] ?? "";
  }
}

class TicketModal {
  List<UserticketModal> userData = [];
  List<TicketdetailModal> ticket = [];
  TicketModal(js) {
    for (var i = 0; i < js['user_details'].length; i++) {
      userData.add(UserticketModal(js['user_details'][i]));
    }
    for (var i = 0; i < js['ticket'].length; i++) {
      ticket.add(TicketdetailModal(js['ticket'][i]));
    }
  }
}

class UserticketModal {
  String? name;
  String? last_name;
  String? mob_no;
  String? city;
  String? pincode;
  String? date;
  UserticketModal(js) {
    name = js['name'] ?? "";
    last_name = js['last_name'] ?? "";
    mob_no = js['mob_no'] ?? "";
    city = js['city'] ?? "";
    pincode = js['pincode'] ?? "";
  }
}

class TicketdetailModal {
  String? venue_start_time;
  String? venue_end_time;
  String? price;
  String? date;
  TicketdetailModal(js) {
    venue_start_time = js['venue_start_time'] ?? "";
    venue_end_time = js['venue_end_time'] ?? "";
    price = js['price'] ?? "";
    date = js['date'] ?? "";
  }
}

class AllticketModal {
  List<UserallticketModal> userData = [];
  List<TicketalldetailModal> ticket = [];
  AllticketModal(js) {
    for (var i = 0; i < js['user_details'].length; i++) {
      userData.add(UserallticketModal(js['user_details'][i]));
    }
    for (var i = 0; i < js['ticket'].length; i++) {
      ticket.add(TicketalldetailModal(js['ticket'][i]));
    }
  }
}

class UserallticketModal {
  String? name;
  String? last_name;
  String? mob_no;
  String? city;
  String? pincode;
  String? date;
  UserallticketModal(js) {
    name = js['name'] ?? "";
    last_name = js['last_name'] ?? "";
    mob_no = js['mob_no'] ?? "";
    city = js['city'] ?? "";
    pincode = js['pincode'] ?? "";
  }
}

class TicketalldetailModal {
  String? venue_start_time;
  String? venue_end_time;
  String? price;
  String? date;
  String? booking_id;
  TicketalldetailModal(js) {
    venue_start_time = js['venue_start_time'] ?? "";
    venue_end_time = js['venue_end_time'] ?? "";
    price = js['price'] ?? "";
    date = js['date'] ?? "";
    booking_id = js['booking_id'] ?? "";
  }
}
