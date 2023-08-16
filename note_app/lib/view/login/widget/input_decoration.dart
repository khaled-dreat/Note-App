part of "../../../utils/import/import.dart";

class InputDecorati {
  static InputDecoration inputDecoration(
      {required String hintText,
      required String labelText,
      required Icon icon}) {
    return InputDecoration(
        enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.deepPurple)),
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.deepPurple, width: 2)),
        hintText: hintText,
        labelText: labelText,
        prefixIcon: icon);
  }
}
