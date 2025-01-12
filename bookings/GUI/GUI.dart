import 'package:web/web.dart';
import '../data/Booking.dart';

class GUI {
  late List<Luxury> bookingList;
  late HTMLInputElement gardenArea;
  late HTMLInputElement numberOfWeeks;
  late HTMLInputElement rooms;
  late HTMLInputElement address;
  late HTMLInputElement bookingDate;
  late HTMLInputElement bookingID;
  late HTMLInputElement contactNumber;
  late HTMLInputElement propertyOwnerName;
  late HTMLInputElement securityAlarmCheck;
  late HTMLInputElement poolMaintenance;
  late HTMLButtonElement submitButton;
  late HTMLButtonElement searchButton;
  late HTMLButtonElement updateButton;
  late HTMLButtonElement removeButton;
  late HTMLButtonElement clearButton;
  late HTMLTextAreaElement displayArea;

  GUI() {
    this.bookingList = [];
    this.securityAlarmCheck.setAttribute("type", "checkbox");
    this.poolMaintenance.setAttribute("type", "checkbox");
    this.gardenArea = document.querySelector('#gardenArea') as HTMLInputElement;
    this.numberOfWeeks = document.querySelector('#numberOfWeeks') as HTMLInputElement;
    this.rooms = document.querySelector('#rooms') as HTMLInputElement;
    this.address = document.querySelector('#address') as HTMLInputElement;
    this.bookingDate = document.querySelector('#bookingDate') as HTMLInputElement;
    this.bookingID = document.querySelector('#bookingID') as HTMLInputElement;
    this.contactNumber = document.querySelector('#contactNumber') as HTMLInputElement;
    this.propertyOwnerName = document.querySelector('#propertyOwnerName') as HTMLInputElement;
    this.securityAlarmCheck = document.querySelector('#securityAlarmCheck') as HTMLInputElement;
    this.poolMaintenance = document.querySelector('#poolMaintenance') as HTMLInputElement;
    this.submitButton = document.querySelector('#submit') as HTMLButtonElement;
    this.searchButton = document.querySelector('#search') as HTMLButtonElement;
    this.updateButton = document.querySelector('#update') as HTMLButtonElement;
    this.removeButton = document.querySelector('#remove') as HTMLButtonElement;
    this.clearButton = document.querySelector('#clear') as HTMLButtonElement;
    this.displayArea = document.querySelector('#displayArea') as HTMLTextAreaElement;
  }
}
