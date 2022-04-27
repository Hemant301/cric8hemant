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
