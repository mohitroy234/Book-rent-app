class Books{
  String name;
  String AuthorName;
  String imageUrl;
  String bimageUrl;
  String AimageUrl;
  String score;
  String description;
  String price;
  String stock;
  Books(this.name,this.AuthorName,this.imageUrl,this.bimageUrl,this.AimageUrl,this.score,this.description,this.price,this.stock);

  static List<Books> generateRecommended(){
    return [
      Books('Harry Potter','J.K. Rowling','asset/harry.webp','asset/HarrY1.jpg','asset/jkrowling.webp','4.6',"The second instalment of boy wizard Harry Potter's adventures at Hogwarts School of Witchcraft and Wizardry, based on the novel by JK Rowling. A mysterious elf tells Harry to expect trouble during his second year at Hogwarts, but nothing can prepare him for trees that fight back, flying cars, spiders that talk and deadly warnings written in blood on the walls of the school.","1200","0"),
      Books('Bhagwat Gita','Vedvyasa','asset/bhagwatgita.jpg','asset/bhagwatgita2.jpg','asset/vedvyasa.jpeg','4.8',"The Bhagavad Gita is the number one spiritual text in Hinduism, packed with wisdom about life and purpose as well as powerful advice on living virtuously but authentically without succumbing to life’s temptations or other people’s dreams.The Gita is a dialogue between the warrior-prince Arjuna and the god Krishna who is serving as his charioteer at the Battle of Kurukshetra fought between Arjuna's family and allies (the Pandavas) and those of the prince Duryodhana and his family (the Kauravas) and their allies.","1300","1"),
      Books('Ramayana','Maharishi Valmiki','asset/ramayana.jpg','asset/shreeram.jpg','asset/valmiki.jpg','4.7',"The Ramayana is an ancient Sanskrit epic which follows Prince Rama's quest to rescue his beloved wife Sita from the clutches of Ravana with the help of an army of monkeys. It is traditionally attributed to the authorship of the sage Valmiki and dated to around 500 BCE to 100 BCE.","1200","2"),
      Books('Sherlock Homes','Authur Conan Dyole','asset/sherlock.jpg','asset/sherlock2.jpg','asset/conan.webp','4.0',"Sherlock Holmes is a private detective who has keen powers of observation. He lives at 221b Baker Street in London. He notices things that others simply don't and then he draws accurate conclusions about what he sees.","850","3"),
      Books('Nineteen Eighty-Four','George Orwell','asset/george.jpg','asset/george2.webp','asset/george1.jpg','4.0',"The book is set in 1984 in Oceania, one of three perpetually warring totalitarian states (the other two are Eurasia and Eastasia). Oceania is governed by the all-controlling Party, which has brainwashed the population into unthinking obedience to its leader, Big Brother.","750","4"),
    ];
  }

  static List<Books>generateBestoffer() {
    return [
      Books('Introduction to Algorithm', 'Thomas H. Cormen', 'asset/algo.jpg','asset/algo2.jpg','asset/cormen.jpg','4.2',"Introduction to Algorithms uniquely combines rigor and comprehensiveness. The book covers a broad range of algorithms in depth, yet makes their design and analysis accessible to all levels of readers. Each chapter is relatively self-contained and can be used as a unit of study.","1000","5"),
      Books('Chronicles of Narnia', 'C.S.Lewis', 'asset/chronicles.jpg','asset/chronicles2.webp','asset/lewis.webp','4.1',"Narnia itself was once a peaceful realm filled with talking animals, fauns, Giants and dwarves that is now under a cursed eternal winter by the villainous White Witch. With aid from the majestic lion Aslan, the four lead Narnia into an all out war as they fight to outwit the Witch and restore peace to the land.","900","3"),
      Books('Percy Jackson', 'Rick Riordan', 'asset/percy.jpg','asset/percy2.jpeg','asset/rick.webp','4.5',"The Lightning Thief is a light-hearted fantasy about a modern 12-year-old boy who learns that his true father is Poseidon, the Greek god of the sea. Percy sets out to become a hero by undertaking a quest across the United States to find the entrance to the Underworld and stop a war between the gods.","950","6"),
      Books('One Piece', 'Eiichiro Oda', 'asset/onepiece.jpg','asset/onepiece2.webp','asset/oda.jpg','4.4',"The series focuses on Monkey D. Luffy, a young man made of rubber, who, inspired by his childhood idol, the powerful pirate Red-Haired Shanks, sets off on a journey from the East Blue Sea to find the mythical treasure, the One Piece, and proclaim himself the King of the Pirates.","1300","0"),
      Books('Jungle Book', 'Rudyard Kipling', 'asset/jungleBook.jpeg','asset/jungleBook2.jpg','asset/kipling.jpg','4.7',"The plot follows Mowgli, a feral child raised in the Indian jungle by wolves, as his friends Bagheera the panther and Baloo the bear try to convince him to leave the jungle before the evil tiger Shere Khan arrives.","1275","0"),
    ];
  }
}