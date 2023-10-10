class OnBoardingContent{

  String image;
  String title;
  String description;

  OnBoardingContent({required this.image, required this.title, required this.description});

}

List<OnBoardingContent> contents =  [
     OnBoardingContent(image: '', title: 'Request Ride', description: 'Request a ride and get picked up by a nearby community driver.' ),
     OnBoardingContent(image: '', title: 'Confirm Your Driver', description: "Huge drivers network helps you find comforable, safe and cheap ride." ),
     OnBoardingContent(image: '', title: 'Track Your Ride', description: 'Know your driver in advance and be able to view current location in real time on the map.' ),

];