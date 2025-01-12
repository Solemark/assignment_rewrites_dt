import 'package:web/web.dart';

///This class is for building the dart side JS widgets
class BMIView {
  late HTMLInputElement height;
  late HTMLInputElement weight;
  late HTMLButtonElement submitButton;
  late HTMLButtonElement clearButton;
  late HTMLTextAreaElement displayArea;

  BMIView() {
    this.height = document.querySelector("#height") as HTMLInputElement;
    this.weight = document.querySelector("#weight") as HTMLInputElement;
    this.submitButton = document.querySelector("#submit") as HTMLButtonElement;
    this.clearButton = document.querySelector("#clear") as HTMLButtonElement;
    this.displayArea = document.querySelector("#displayArea") as HTMLTextAreaElement;
  }
}
