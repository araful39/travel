class BestDestinationModel {
  final String imagePath;
  final String resortName;
  final String location;
  final String ratings;
  final String amount;
  final List imageList;

  BestDestinationModel(
      {required this.imagePath,
      required this.resortName,
      required this.location,
      required this.ratings,
      required this.amount,
      required this.imageList});
}
