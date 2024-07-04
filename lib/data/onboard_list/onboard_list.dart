
import 'package:travel/features/authentication/screen/onboard/model.dart';
import 'package:travel/utills/constants/icons.dart';
import 'package:travel/utills/constants/images.dart';
import 'package:travel/utills/constants/text.dart';

List<OnboardModel> onboardData = [
  OnboardModel(
      imagePath: RImages.onBoard1,
      vector: RIcons.onBoardV1,
      mainTitle: RTexts.onboard1Title,
      subTitle: RTexts.onboard1SubTitle,
      description: RTexts.onboard1Description),
  OnboardModel(
      imagePath: RImages.onBoard2,
      vector: RIcons.onBoardV2,
      mainTitle: RTexts.onboard2Title,
      subTitle: RTexts.onboard2SubTitle,
      description: RTexts.onboard2Description),
  OnboardModel(
      imagePath: RImages.onBoard3,
      vector: RIcons.onBoardV3,
      mainTitle: RTexts.onboard3Title,
      subTitle: RTexts.onboard3SubTitle,
      description: RTexts.onboard3Description)
];
