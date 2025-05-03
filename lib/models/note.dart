class Note {
  int id;
  String title;
  String content;
  DateTime modifiedTime;

  Note(
      {required this.id,
      required this.title,
      required this.content,
      required this.modifiedTime});
}

List<Note> initialnotes = [
  Note(
    id: 1,
    title: 'Recipes to Try',
    content: '1. Chicken Alfredo\n2. Vegan chili\n3. Spaghetti carbonara\n4. Chocolate lava cake',
    modifiedTime: DateTime(2022, 1, 1, 14, 5),
  ),
  Note(
    id: 2,
    title: 'Workout Plan',
    content: 'Monday: Chest\nTuesday: Back\nWednesday: Legs\nThursday: Rest',
    modifiedTime: DateTime(2022, 1, 3, 9, 30),
  ),
  Note(
    id: 3,
    title: 'Books to Read',
    content: '1. 1984\n2. Atomic Habits\n3. Sapiens\n4. The Alchemist',
    modifiedTime: DateTime(2022, 1, 5, 18, 15),
  ),
  Note(
    id: 4,
    title: 'Shopping List',
    content: 'Milk\nBread\nEggs\nApples\nToilet Paper',
    modifiedTime: DateTime(2022, 1, 7, 12, 45),
  ),
  Note(
    id: 5,
    title: 'Travel Ideas',
    content: '1. Japan in spring\n2. Iceland for Northern Lights\n3. Italy for food tour',
    modifiedTime: DateTime(2022, 1, 10, 17, 0),
  ),
  Note(
    id: 6,
    title: 'Project Goals',
    content: '1. Launch MVP\n2. User testing\n3. Bug fixing\n4. Final release',
    modifiedTime: DateTime(2022, 1, 12, 8, 10),
  ),
  Note(
    id: 7,
    title: 'Movie Watchlist',
    content: '1. Inception\n2. Interstellar\n3. Parasite\n4. The Matrix',
    modifiedTime: DateTime(2022, 1, 15, 20, 25),
  ),
  Note(
    id: 8,
    title: 'Meeting Notes',
    content: 'Discussed: Q1 roadmap, team hiring, and budget allocation.',
    modifiedTime: DateTime(2022, 1, 18, 11, 0),
  ),
];

