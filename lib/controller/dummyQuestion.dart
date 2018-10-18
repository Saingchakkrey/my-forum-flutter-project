class Data {
  String title;
  String description;
  int answerAmount;
  int votedAmount;
  int viewAmount;
  DateTime postDuration;

  Data(this.title, this.description, this.answerAmount, this.votedAmount, this.viewAmount, this.postDuration);
}

final List<Data> data = [
  Data(
    'Cannot sign in to Facebook',
    'Yesterday after changing my password on FB, I cannot sign in to FB using my old password',
    234,
    100,
    980,
    DateTime.now(),
  ),
  Data(
    'Cannot sign in to Gmail',
    'Yesterday after changing my password on GG, I cannot sign in to Gmail using my old password',
    221,
    545,
    675,
    DateTime.now(),
  ),
  Data(
    'Damn',
    'Yesterday after changing my password on GG, I cannot sign in to Gmail using my old password',
    111,
    222,
    333,
    DateTime.now(),
  ),
];
