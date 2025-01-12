import 'dart:math';

/// Data class for BMI
class BMI {
  double height;
  double weight;
  BMI(this.height, this.weight);

  /// finds [BMI] rating from weight/height
  String get rating {
    double total = this.weight / pow((this.height / 100), 2);
    if (total < 16.00) return "Bulimic";
    if (total > 16.00 && total < 16.99) return "Lean";
    if (total > 17.00 && total < 18.49) return "Under";
    if (total > 18.50 && total < 24.99) return "Normal";
    if (total > 25.00 && total < 29.99) return "Over";
    if (total > 30.00 && total < 34.99) return "Obese";
    if (total > 34.99) return "Morbid";
    return "";
  }

  @override
  String toString() => "height: ${this.height}\nweight: ${this.weight}\nrating: ${this.rating}";
}
