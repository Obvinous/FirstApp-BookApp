class Books {
  final String image;
  final String label;
  final String description;
  final String rating;
  final String genre;

  Books(
      {required this.image,
      required this.label,
      required this.description,
      required this.rating,
      required this.genre});
}

final book = [
  Books(
      image:
          'https://iuploads.scribblecdn.net/1864549e-5cda-42fa-b897-589893deb67e/global/imagelib/uncategorized/ebookmockup.png',
      label: 'Awaken The Giant Within',
      description:
          ' Awaken The Giant Within is the psychological blueprint you can follow to wake up and start taking control of your life, starting in your mind, spreading through your body and then all the way through your relationships, work and finances until you\'re the giant you were always meant to be.',
      rating: '⭐⭐⭐⭐',
      genre: 'Self Help'),
  Books(
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTncGoe-1NCyscP6WC7ey_uuG1u-hgjsABHUA&usqp=CAU',
      label: 'Rich Dad Poor Dad',
      description:
          'Rich Dad Poor Dad by Robert Kiyosaki and Sharon Lechter is a book that came out in 1997 and focuses on the importance of financial literacy from an early age. Throughout the book, the author explains how a person can increase their wealth by investing in assets and by being smart with money.',
      rating: '⭐⭐⭐⭐',
      genre: 'Money'),
  Books(
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqTFtYFwSuAaBQwh1YEmBIee9_RSg2Y9rx3A&usqp=CAU',
      label: 'Everything Is Fucked',
      description:
          'We live in an interesting time. Materially, everything is the best it’s ever been—we are freer, healthier and wealthier than any people in human history. Yet, somehow everything seems to be irreparably and horribly f*cked—the planet is warming, governments are failing, economies are collapsing, and everyone is perpetually offended on Twitter. ',
      rating: '⭐⭐⭐⭐',
      genre: 'Self Help'),
  Books(
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVJng1UQjhgld2nmgaAJtIVM2Er-w7A1itRw&usqp=CAU',
      label: 'To Kill a Mocking Bird',
      description:
          'To Kill a Mockingbird is a 1961 novel by Harper Lee. Set in small-town Alabama, the novel is a bildungsroman, or coming-of-age story, and chronicles the childhood of Scout and Jem Finch as their father Atticus defends a Black man falsely accused of rape. Scout and Jem are mocked by classmates for this.',
      rating: '⭐⭐⭐⭐',
      genre: 'Novel'),
  Books(
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6ujPuhgUxKgI0cPQ24SwkkVz2gw1CieTpdQ&usqp=CAU',
      label: 'A Brief History of Time',
      description:
          'A Brief History Of Time is Stephen Hawking’s way of explaining the most complex concepts and ideas of physics, such as space, time, black holes, planets, stars and gravity to the average Joe, so that even you and I can better understand how our planet was created, where it came from, and where it’s going.',
      rating: '⭐⭐⭐⭐',
      genre: 'Physics'),
];
