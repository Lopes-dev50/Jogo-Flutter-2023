class PerguntaIngles {
  final String question;
  final List<String> answers;
  final String correctAnswer;

  PerguntaIngles(this.question, this.answers, this.correctAnswer);
}

class Fase {
  final List<PerguntaIngles> perguntas;

  Fase(this.perguntas);
}

List<Fase> quizFases = [
  Fase([
    // Fase 1 - Perguntas
      PerguntaIngles(
        "Which Brazilian soccer legend is known as 'O Rei'?",
        ['Zico', 'Ronaldinho Gaúcho', 'Pelé'],
        'Pelé'
    ),
    PerguntaIngles(
        "Which Brazilian city hosts the world-famous Carnival celebration?",
        ['São Paulo', 'Rio de Janeiro', 'Salvador'],
        'Rio de Janeiro'
    ),
    PerguntaIngles(
        "Who is the Brazilian singer behind the hit song 'Ai Se Eu Te Pego'?",
        ['Michel Teló', 'Wesley Safadão', 'Anitta'],
        'Michel Teló'
    ),
    PerguntaIngles(
        "Which Brazilian dance involves partners tapping and spinning around playfully?",
        ['Samba', 'Forró', 'Quadrilha'],
        'Quadrilha'
    ),
    PerguntaIngles(
        "Which Brazilian actress starred in the film 'City of God'?",
        ['Alice Braga', 'Fernanda Montenegro', 'Gisele Bündchen'],
        'Alice Braga'
    ),
    PerguntaIngles(
        "Who is the Brazilian author behind the book 'The Alchemist'?",
        ['Machado de Assis', 'Paulo Coelho', 'Clarice Lispector'],
        'Paulo Coelho'
    ),
    PerguntaIngles(
        "Which Brazilian TV show is known for its humorous social commentary sketches?",
        ['Zorra Total', 'Casseta & Planeta', 'Pânico na TV'],
        'Zorra Total'
    ),
    PerguntaIngles(
        "Which Brazilian city is famous for its beaches, including Copacabana and Ipanema?",
        ['Salvador', 'Recife', 'Rio de Janeiro'],
        'Rio de Janeiro'
    ),
    PerguntaIngles(
        "Who is the Brazilian actress known for her role in the 'Elite Squad' movies?",
        ['Giovanna Antonelli', 'Alice Braga', 'Fernanda Montenegro'],
        'Alice Braga'
    ),
    PerguntaIngles(
        "Which Brazilian music genre combines reggae and ska influences and is associated with Maranhão?",
        ['Bossa Nova', 'Sertanejo', 'Reggaeton'],
        'Reggaeton'
    ),

      PerguntaIngles(
        "Which Brazilian soccer player is often referred to as 'The Phenomenon'?",
        ['Ronaldinho Gaúcho', 'Neymar', 'Pelé'],
        'Pelé'
    ),
    PerguntaIngles(
        "Which Brazilian music genre originated in the favelas of Rio de Janeiro and features rhythm and fast-paced lyrics?",
        ['Samba', 'Funk Carioca', 'Bossa Nova'],
        'Funk Carioca'
    ),
    PerguntaIngles(
        "Which Brazilian model and actress gained international recognition for her role in 'City of God'?",
        ['Gisele Bündchen', 'Alice Braga', 'Fernanda Montenegro'],
        'Alice Braga'
    ),
    PerguntaIngles(
        "Which Brazilian city is famous for its historical center, Pelourinho, and its strong Afro-Brazilian cultural influence?",
        ['Salvador', 'Rio de Janeiro', 'São Paulo'],
        'Salvador'
    ),
    PerguntaIngles(
        "Which Brazilian dance style involves twirling a colorful umbrella and is popular during the Carnaval in Pernambuco?",
        ['Forró', 'Axé', 'Frevo'],
        'Frevo'
    ),
    PerguntaIngles(
        "Which Brazilian musician is known for combining traditional forró music with modern elements and has songs like 'Anunciação'?",
        ['Luiz Gonzaga', 'Dominguinhos', 'Alceu Valença'],
        'Alceu Valença'
    ),
    PerguntaIngles(
        "Which Brazilian actress starred in the telenovela 'Senhora do Destino' and is considered a grande dame of Brazilian television?",
        ['Giovanna Antonelli', 'Fernanda Montenegro', 'Camila Pitanga'],
        'Fernanda Montenegro'
    ),
    PerguntaIngles(
        "Which Brazilian festival celebrates São João (Saint John) and features traditional quadrilhas, bonfires, and corn-based dishes?",
        ['Carnaval', 'Festa Junina', 'Oktoberfest'],
        'Festa Junina'
    ),
    PerguntaIngles(
        "Which Brazilian reality TV show pits contestants against various challenges and is set in a remote location?",
        ['Big Brother Brasil', 'No Limite', 'The Voice Brasil'],
        'No Limite'
    ),
    PerguntaIngles(
        "Which Brazilian city is famous for its Japanese community and holds the largest Japanese festival outside of Japan?",
        ['Curitiba', 'São Paulo', 'Manaus'],
        'São Paulo'
    ),
     PerguntaIngles(
        "Which country won the first-ever FIFA World Cup in 1930?",
        ['Brazil', 'Uruguay', 'Italy'],
        'Uruguay'
    ),
    PerguntaIngles(
        "Who holds the record for the most goals scored in a single calendar year?",
        ['Lionel Messi', 'Cristiano Ronaldo', 'Pelé'],
        'Lionel Messi'
    ),
    PerguntaIngles(
        "Which player has won the most Ballon d'Or awards?",
        ['Cristiano Ronaldo', 'Lionel Messi', 'Michel Platini'],
        'Lionel Messi'
    ),
    PerguntaIngles(
        "In what year did a goalkeeper win the FIFA World Player of the Year award?",
        ['1998', '2002', '2010'],
        '1998'
    ),
    PerguntaIngles(
        "Which stadium is known as the 'Theatre of Dreams' and is the home of Manchester United?",
        ['Anfield', 'Camp Nou', 'Old Trafford'],
        'Old Trafford'
    ),
    PerguntaIngles(
        "Who is the all-time top scorer of the Brazilian national team?",
        ['Ronaldo Nazário', 'Zico', 'Pelé'],
        'Pelé'
    ),
    PerguntaIngles(
        "Which country has won the most Copa America titles in South American football?",
        ['Argentina', 'Brazil', 'Uruguay'],
        'Uruguay'
    ),
    PerguntaIngles(
        "Which player famously performed the 'Hand of God' goal in the 1986 World Cup?",
        ['Diego Maradona', 'Pele', 'Johan Cruyff'],
        'Diego Maradona'
    ),
    PerguntaIngles(
        "Which African country became the first to reach the quarter-finals of a World Cup in 1990?",
        ['Cameroon', 'Nigeria', 'Ghana'],
        'Cameroon'
    ),
    PerguntaIngles(
        "Which Italian club is known as 'The Old Lady'?",
        ['AC Milan', 'AS Roma', 'Juventus'],
        'Juventus'
    ),
      PerguntaIngles(
        "Which director is known for creating the 'Star Wars' franchise?",
        ['Steven Spielberg', 'George Lucas', 'James Cameron'],
        'George Lucas'
    ),
    PerguntaIngles(
        "Which film won the Academy Award for Best Picture in 2020?",
        ['Parasite', 'Joker', '1917'],
        'Parasite'
    ),
    PerguntaIngles(
        "Who played the role of Tony Stark / Iron Man in the Marvel Cinematic Universe?",
        ['Chris Evans', 'Chris Hemsworth', 'Robert Downey Jr.'],
        'Robert Downey Jr.'
    ),
    PerguntaIngles(
        "Which movie is often quoted with the line 'Here's looking at you, kid.'?",
        ['Casablanca', 'Gone with the Wind', 'The Godfather'],
        'Casablanca'
    ),
    PerguntaIngles(
        "Which director is famous for films like 'Pulp Fiction' and 'Django Unchained'?",
        ['Christopher Nolan', 'Martin Scorsese', 'Quentin Tarantino'],
        'Quentin Tarantino'
    ),
    PerguntaIngles(
        "Which actress starred in 'Breakfast at Tiffany's' and is an icon of classic Hollywood?",
        ['Audrey Hepburn', 'Grace Kelly', 'Marilyn Monroe'],
        'Audrey Hepburn'
    ),
    PerguntaIngles(
        "Which film is known for the quote 'May the Force be with you.'?",
        ['Star Wars', 'Star Trek', 'Interstellar'],
        'Star Wars'
    ),
    PerguntaIngles(
        "Who directed the film 'Inception'?",
        ['Steven Spielberg', 'James Cameron', 'Christopher Nolan'],
        'Christopher Nolan'
    ),
    PerguntaIngles(
        "Which actor played the role of the Joker in 'The Dark Knight'?",
        ['Joaquin Phoenix', 'Heath Ledger', 'Jack Nicholson'],
        'Heath Ledger'
    ),
    PerguntaIngles(
        "Which film holds the record for the highest-grossing box office of all time?",
        ['Avatar', 'Avengers: Endgame', 'Titanic'],
        'Avatar'
    ),
       PerguntaIngles(
        "Which war was fought from 1914 to 1918 and is often called the 'Great War'?",
        ['World War I', 'World War II', 'Cold War'],
        'World War I'
    ),
    PerguntaIngles(
        "Who was the first President of the United States?",
        ['John F. Kennedy', 'George Washington', 'Abraham Lincoln'],
        'George Washington'
    ),
    PerguntaIngles(
        "In which year did the Titanic sink after hitting an iceberg?",
        ['1912', '1920', '1931'],
        '1912'
    ),
  
    PerguntaIngles(
        "Who was the Egyptian queen known for her relationship with Julius Caesar and Mark Antony?",
        ['Nefertiti', 'Hatshepsut', 'Cleopatra'],
        'Cleopatra'
    ),
    PerguntaIngles(
        "Which revolution led to the end of the French monarchy in the late 18th century?",
        ['American Revolution', 'Russian Revolution', 'French Revolution'],
        'French Revolution'
    ),
    PerguntaIngles(
        "Which historical event is often associated with the phrase 'Let them eat cake'?",
        ['The Holocaust', 'Industrial Revolution', 'French Revolution'],
        'French Revolution'
    ),
    PerguntaIngles(
        "Who was the leader of the Soviet Union during much of the Cold War?",
        ['Joseph Stalin', 'Nikita Khrushchev', 'Vladimir Putin'],
        'Joseph Stalin'
    ),
    PerguntaIngles(
        "Which ancient civilization built the city of Machu Picchu?",
        ['Maya', 'Aztec', 'Inca'],
        'Inca'
    ),
    PerguntaIngles(
        "Which event marked the beginning of World War II in 1939?",
        ['Attack on Pearl Harbor', 'Invasion of Poland', 'D-Day'],
        'Invasion of Poland'
    ),

 ]),
  //============== Fase 2 - Perguntas
  Fase([

   PerguntaIngles(
  'What is the largest planet in our solar system?',
  ['Venus', 'Jupiter', 'Saturn'],
  'Jupiter',
),
PerguntaIngles(
  'Which famous scientist developed the theory of relativity?',
  ['Isaac Newton', 'Albert Einstein', 'Galileo Galilei'],
   'Isaac Newton',
),
PerguntaIngles(
  'Which gas do plants use to perform photosynthesis?',
  ['Carbon dioxide', 'Oxygen', 'Nitrogen'],
  'Carbon dioxide',
),
PerguntaIngles(
  'What is the chemical symbol for gold?',
  ['Ag', 'Au', 'Fe'],
  'Au',
),
PerguntaIngles(
  'Which planet is known as the "Morning Star" or "Evening Star"?',
  ['Mercury', 'Venus', 'Mars'],
  'Venus',
),
    PerguntaIngles(
    'In which year did the Titanic sink?',
    ['1908', '1912', '1920'],
    '1912',
  ),
  PerguntaIngles(
    'Who is known as the "Father of Modern Physics"?',
    ['Albert Einstein', 'Isaac Newton', 'Galileo Galilei'],
    'Albert Einstein',
  ),
   PerguntaIngles(
    'What is the chemical symbol for oxygen?',
    ['O', 'Ox', 'O2'],
    'O',
  ),
  PerguntaIngles(
    'Who wrote the play "Romeo and Juliet"?',
    ['William Shakespeare', 'Jane Austen', 'Charles Dickens'],
    'William Shakespeare',
  ),
  PerguntaIngles(
    'Which gas is responsible for the color of the Earth\'s sky?',
    ['Oxygen', 'Nitrogen', 'Carbon dioxide'],
    'Nitrogen',
  ),
  PerguntaIngles(
    'Which gas is responsible for the ozone layer in the Earth\'s atmosphere?',
    ['Oxygen', 'Carbon dioxide', 'Ozone'],
    'Ozone',
  ),
  PerguntaIngles(
    'Who wrote the play "Hamlet"?',
    ['William Shakespeare', 'George Bernard Shaw', 'Oscar Wilde'],
    'William Shakespeare',
  ),
  PerguntaIngles(
    'What is the chemical symbol for iron?',
    ['Ir', 'Fe', 'Au'],
    'Fe',
  ),
  PerguntaIngles(
    'Which element is known as a "noble gas"?',
    ['Helium', 'Oxygen', 'Neon'],
    'Helium',
  ),
  PerguntaIngles(
    'Who is the author of "The Great Gatsby"?',
    ['F. Scott Fitzgerald', 'Ernest Hemingway', 'Mark Twain'],
    'F. Scott Fitzgerald',
  ),
  PerguntaIngles(
    'What is the chemical symbol for potassium?',
    ['K', 'P', 'Ka'],
    'K',
  ),
  PerguntaIngles(
    'Which gas is essential for respiration and combustion?',
    ['Oxygen', 'Carbon dioxide', 'Nitrogen'],
    'Oxygen',
  ),
  PerguntaIngles(
    'Who is known for the theory of natural selection?',
    ['Charles Darwin', 'Isaac Newton', 'Galileo Galilei'],
    'Charles Darwin',
  ),
   
 

      PerguntaIngles(
        "Which ancient wonder of the world was a towering statue of the Greek god Helios?",
        ['Pyramids of Giza', 'Colossus of Rhodes', 'Hanging Gardens of Babylon'],
        'Colossus of Rhodes'
    ),
    PerguntaIngles(
        "Which explorer is credited with leading the first circumnavigation of the Earth?",
        ['Christopher Columbus', 'Ferdinand Magellan', 'Vasco da Gama'],
        'Ferdinand Magellan'
    ),
    PerguntaIngles(
        "What was the name of the ship that carried the Pilgrims to the New World in 1620?",
        ['Mayflower', 'Santa Maria', 'Golden Hind'],
        'Mayflower'
    ),
    PerguntaIngles(
        "Which empire was ruled by Julius Caesar, Augustus, and Nero?",
        ['Roman Empire', 'Ottoman Empire', 'Byzantine Empire'],
        'Roman Empire'
    ),
    PerguntaIngles(
        "Who was the leader of the Soviet Union during the Cuban Missile Crisis?",
        ['Vladimir Putin', 'Mikhail Gorbachev', 'Nikita Khrushchev'],
        'Nikita Khrushchev'
    ),
    PerguntaIngles(
        "Which famous British prime minister led the United Kingdom through most of World War II?",
        ['Winston Churchill', 'Margaret Thatcher', 'Tony Blair'],
        'Winston Churchill'
    ),
    PerguntaIngles(
        "In which year did the United States declare its independence from Britain?",
        ['1776', '1789', '1801'],
        '1776'
    ),
    PerguntaIngles(
        "Which Chinese philosophy emphasizes harmony, respect for tradition, and social order?",
        ['Taoism', 'Buddhism', 'Confucianism'],
        'Confucianism'
    ),
    PerguntaIngles(
        "Who was the queen of ancient Egypt who aligned herself with Julius Caesar and later Mark Antony?",
        ['Hatshepsut', 'Nefertiti', 'Cleopatra'],
        'Cleopatra'
    ),
    PerguntaIngles(
        "Which treaty marked the official end of World War I?",
        ['Treaty of Versailles', 'Treaty of Paris', 'Treaty of Tordesillas'],
        'Treaty of Versailles'
    ),
      PerguntaIngles(
        "Which city is known as the 'Eternal City' and is the capital of Italy?",
        ['Barcelona', 'Rome', 'Paris'],
        'Rome'
    ),
    PerguntaIngles(
        "In which city would you find the famous landmark 'Big Ben'?",
        ['London', 'New York City', 'Sydney'],
        'London'
    ),
    PerguntaIngles(
        "Which city is nicknamed the 'City of Light' and is known for its iconic Eiffel Tower?",
        ['Berlin', 'Paris', 'Tokyo'],
        'Paris'
    ),
    PerguntaIngles(
        "In which city is the famous 'Red Square' located?",
        ['Moscow', 'Beijing', 'Tokyo'],
        'Moscow'
    ),
    PerguntaIngles(
        "Which city is often called the 'Venice of the North' due to its numerous canals?",
        ['Amsterdam', 'Venice', 'Stockholm'],
        'Amsterdam'
    ),
    PerguntaIngles(
        "Which city in India is known as the 'City of Dreams' and is a major financial hub?",
        ['Kolkata', 'Mumbai', 'Chennai'],
        'Mumbai'
    ),
    PerguntaIngles(
        "In which U.S. city would you find the famous Golden Gate Bridge?",
        ['New York City', 'San Francisco', 'Los Angeles'],
        'San Francisco'
    ),
    PerguntaIngles(
        "Which Brazilian city is famous for its Carnival celebrations and the iconic Christ the Redeemer statue?",
        ['São Paulo', 'Salvador', 'Rio de Janeiro'],
        'Rio de Janeiro'
    ),
    PerguntaIngles(
        "In which city is the historic Colosseum located?",
        ['Athens', 'Rome', 'Cairo'],
        'Rome'
    ),
    PerguntaIngles(
        "Which Japanese city is known for its modern architecture, including the Skytree and Shibuya Crossing?",
        ['Tokyo', 'Osaka', 'Kyoto'],
        'Tokyo'
    ),
     PerguntaIngles(
        "In which city were the first modern Olympic Games held in 1896?",
        ['Paris', 'Rome', 'Athens'],
        'Athens'
    ),
    PerguntaIngles(
        "Which city hosted the 2016 Summer Olympics?",
        ['Beijing', 'London', 'Rio de Janeiro'],
        'Rio de Janeiro'
    ),
    PerguntaIngles(
        "Which athlete is known as the 'Fastest Man on Earth' and holds the record for the 100m sprint?",
        ['Usain Bolt', 'Michael Phelps', 'Mo Farah'],
        'Usain Bolt'
    ),
    PerguntaIngles(
        "In which year did women participate in the Olympic Games for the first time?",
        ['1900', '1920', '1948'],
        '1900'
    ),
    PerguntaIngles(
        "Which country boycotted the 1980 Summer Olympics held in Moscow?",
        ['United States', 'Canada', 'Australia'],
        'United States'
    ),
    PerguntaIngles(
        "In which sport can athletes win the Davis Cup and the Fed Cup?",
        ['Tennis', 'Soccer', 'Basketball'],
        'Tennis'
    ),
    PerguntaIngles(
        "Which city will host the 2024 Summer Olympics?",
        ['Paris', 'Tokyo', 'Los Angeles'],
        'Paris'
    ),
    PerguntaIngles(
        "Which gymnast is known for her incredible performance at the 1976 Olympics and won the 'Perfect 10'?",
        ['Simone Biles', 'Nadia Comăneci', 'Mary Lou Retton'],
        'Nadia Comăneci'
    ),
    PerguntaIngles(
        "In which year did the Winter Olympics and Summer Olympics take place in the same country?",
        ['1992', '2000', '2008'],
        '2000'
    ),
    PerguntaIngles(
        "Which country was the host of the Winter Olympics in 2018?",
        ['South Korea', 'Russia', 'Canada'],
        'South Korea'
    ),
    
    PerguntaIngles(
    'Which planet is known as the "Morning Star" or "Evening Star"?',
    ['Mercury', 'Venus', 'Mars'],
    'Venus',
  ),
  PerguntaIngles(
    'What is the largest planet in our solar system?',
    ['Jupiter', 'Saturn', 'Neptune'],
    'Jupiter',
  ),
  PerguntaIngles(
    'Who wrote the novel "Pride and Prejudice"?',
    ['Jane Austen', 'Emily Bronte', 'Charlotte Bronte'],
    'Jane Austen',
  ),
  PerguntaIngles(
    'Which gas do plants use for photosynthesis?',
    ['Oxygen', 'Carbon dioxide', 'Hydrogen'],
    'Carbon dioxide',
  ),
  PerguntaIngles(
    'What is the national flower of Japan?',
    ['Cherry blossom', 'Rose', 'Tulip'],
    'Cherry blossom',
  ),
  PerguntaIngles(
    'In which year did the Titanic sink?',
    ['1908', '1912', '1920'],
    '1912',
  ),
  PerguntaIngles(
    'Who is known as the "Father of Modern Physics"?',
    ['Albert Einstein', 'Isaac Newton', 'Galileo Galilei'],
    'Albert Einstein',
  ),
  PerguntaIngles(
    'What is the chemical symbol for gold?',
    ['Ag', 'Au', 'Cu'],
    'Au',
  ),
  PerguntaIngles(
    'What is the smallest bone in the human body?',
    ['Femur', 'Stapes', 'Radius'],
    'Stapes',
  ),
  PerguntaIngles(
    'Which famous scientist developed the theory of evolution?',
    ['Isaac Newton', 'Charles Darwin', 'Nikola Tesla'],
    'Charles Darwin',
  ),
  PerguntaIngles(
    'Which planet is known as the "Red Planet"?',
    ['Earth', 'Mars', 'Venus'],
    'Mars',
  ),
  PerguntaIngles(
    'What is the capital city of Australia?',
    ['Melbourne', 'Sydney', 'Canberra'],
    'Canberra',
  ),
  PerguntaIngles(
    'Who painted the Mona Lisa?',
    ['Pablo Picasso', 'Vincent van Gogh', 'Leonardo da Vinci'],
    'Leonardo da Vinci',
  ),
  PerguntaIngles(
    'Which element has the chemical symbol Na?',
    ['Nitrogen', 'Sodium', 'Neon'],
    'Sodium',
  ),
  PerguntaIngles(
    'What is the main gas that makes up the Earth\'s atmosphere?',
    ['Oxygen', 'Nitrogen', 'Carbon dioxide'],
    'Nitrogen',
  ),
  PerguntaIngles(
    'Which famous playwright wrote "Hamlet"?',
    ['William Shakespeare', 'George Bernard Shaw', 'Arthur Miller'],
    'William Shakespeare',
  ),
  PerguntaIngles(
    'What is the largest ocean on Earth?',
    ['Atlantic Ocean', 'Indian Ocean', 'Pacific Ocean'],
    'Pacific Ocean',
  ),
  PerguntaIngles(
    'Which gas do humans inhale for respiration?',
    ['Oxygen', 'Carbon dioxide', 'Nitrogen'],
    'Oxygen',
  ),
  PerguntaIngles(
    'What is the chemical symbol for helium?',
    ['H', 'He', 'O'],
    'He',
  ),
  PerguntaIngles(
    'Which historical figure is known for his theory of gravity?',
    ['Isaac Newton', 'Albert Einstein', 'Galileo Galilei'],
    'Isaac Newton',
  ),
  PerguntaIngles(
    'Which gas is responsible for the ozone layer in the Earth\'s atmosphere?',
    ['Oxygen', 'Carbon dioxide', 'Ozone'],
    'Ozone',
  ),
  PerguntaIngles(
    'Who wrote the play "Hamlet"?',
    ['William Shakespeare', 'George Bernard Shaw', 'Oscar Wilde'],
    'William Shakespeare',
  ),

//========================= Fase 3 
  ]),
  
  Fase([

  PerguntaIngles(
    'What is the chemical symbol for iron?',
    ['Ir', 'Fe', 'Au'],
    'Fe',
  ),
  PerguntaIngles(
    'Which element is known as a "noble gas"?',
    ['Helium', 'Oxygen', 'Neon'],
    'Helium',
  ),
  PerguntaIngles(
    'Who is the author of "The Great Gatsby"?',
    ['F. Scott Fitzgerald', 'Ernest Hemingway', 'Mark Twain'],
    'F. Scott Fitzgerald',
  ),
  PerguntaIngles(
    'What is the chemical symbol for potassium?',
    ['K', 'P', 'Ka'],
    'K',
  ),
  PerguntaIngles(
    'Which gas is essential for respiration and combustion?',
    ['Oxygen', 'Carbon dioxide', 'Nitrogen'],
    'Oxygen',
  ),
  PerguntaIngles(
    'Who is known for the theory of natural selection?',
    ['Charles Darwin', 'Isaac Newton', 'Galileo Galilei'],
    'Charles Darwin',
  ),
  
  
     PerguntaIngles(
    'What is the capital of France?',
    ['Berlin', 'London', 'Paris'],
    'Paris',
  ),
  PerguntaIngles(
    'Which planet is known as the "Red Planet"?',
    ['Earth', 'Venus', 'Mars'],
    'Mars',
  ),
  PerguntaIngles(
    'Who painted the Mona Lisa?',
    ['Vincent van Gogh', 'Leonardo da Vinci', 'Pablo Picasso'],
    'Leonardo da Vinci',
  ),
  PerguntaIngles(
    'What is the largest mammal on land?',
    ['African Elephant', 'Giraffe', 'Rhinoceros'],
    'African Elephant',
  ),
  PerguntaIngles(
    'Which element has the chemical symbol H?',
    ['Hydrogen', 'Helium', 'Oxygen'],
    'Hydrogen',
  ),
  PerguntaIngles(
    'Which gas is responsible for the ozone layer in the Earth\'s atmosphere?',
    ['Oxygen', 'Carbon dioxide', 'Ozone'],
    'Ozone',
  ),
  PerguntaIngles(
    'Who wrote the play "Hamlet"?',
    ['William Shakespeare', 'George Bernard Shaw', 'Oscar Wilde'],
    'William Shakespeare',
  ),
  PerguntaIngles(
    'What is the chemical symbol for iron?',
    ['Ir', 'Fe', 'Au'],
    'Fe',
  ),
  PerguntaIngles(
    'Which element is known as a "noble gas"?',
    ['Helium', 'Oxygen', 'Neon'],
    'Helium',
  ),
  PerguntaIngles(
    'Who is the author of "The Great Gatsby"?',
    ['F. Scott Fitzgerald', 'Ernest Hemingway', 'Mark Twain'],
    'F. Scott Fitzgerald',
  ),
  PerguntaIngles(
    'What is the chemical symbol for potassium?',
    ['K', 'P', 'Ka'],
    'K',
  ),
  PerguntaIngles(
    'Which gas is essential for respiration and combustion?',
    ['Oxygen', 'Carbon dioxide', 'Nitrogen'],
    'Oxygen',
  ),
  PerguntaIngles(
    'Who is known for the theory of natural selection?',
    ['Charles Darwin', 'Isaac Newton', 'Galileo Galilei'],
    'Charles Darwin',
  ),
  PerguntaIngles(
    'Which gas is responsible for the ozone layer in the Earth\'s atmosphere?',
    ['Oxygen', 'Carbon dioxide', 'Ozone'],
    'Ozone',
  ),
  PerguntaIngles(
    'Who wrote the play "Hamlet"?',
    ['William Shakespeare', 'George Bernard Shaw', 'Oscar Wilde'],
    'William Shakespeare',
  ),
  PerguntaIngles(
    'What is the chemical symbol for iron?',
    ['Ir', 'Fe', 'Au'],
    'Fe',
  ),
  PerguntaIngles(
    'Which element is known as a "noble gas"?',
    ['Helium', 'Oxygen', 'Neon'],
    'Helium',
  ),
  PerguntaIngles(
    'Who is the author of "The Great Gatsby"?',
    ['F. Scott Fitzgerald', 'Ernest Hemingway', 'Mark Twain'],
    'F. Scott Fitzgerald',
  ),
  PerguntaIngles(
    'What is the chemical symbol for potassium?',
    ['K', 'P', 'Ka'],
    'K',
  ),
  PerguntaIngles(
    'Which gas is essential for respiration and combustion?',
    ['Oxygen', 'Carbon dioxide', 'Nitrogen'],
    'Oxygen',
  ),
  PerguntaIngles(
    'Who is known for the theory of natural selection?',
    ['Charles Darwin', 'Isaac Newton', 'Galileo Galilei'],
    'Charles Darwin',
  ),
   
  
PerguntaIngles(
'What is the term for a word that is spelled the same but has a different meaning when pronounced differently?',
['Homonym', 'Synonym', 'Antonym', 'Heteronym'],
'Homonym',
),
PerguntaIngles(
'Who is often credited with creating the first successful incandescent light bulb?',
['Thomas Edison', 'Nikola Tesla', 'Benjamin Franklin', 'James Watt'],
'Thomas Edison',
),
PerguntaIngles(
'Which philosopher is known for his concept of the "Ubermensch"?',
['Friedrich Nietzsche', 'Immanuel Kant', 'Søren Kierkegaard', 'Jean-Jacques Rousseau'],
'Friedrich Nietzsche',
),
PerguntaIngles(
'What is the phenomenon where an initially small change can lead to significantly different outcomes in complex systems?',
['Butterfly Effect', 'Chaos Theory', 'Quantum Mechanics', 'Relativity'],
'Butterfly Effect',
),
PerguntaIngles(
'In which novel is the line "Call me Ishmael" the opening sentence?',
['Moby-Dick', 'Pride and Prejudice', 'To Kill a Mockingbird', '1984'],
'Moby-Dick',
),
PerguntaIngles(
'Which artist is known for his "drip painting" technique?',
['Jackson Pollock', 'Vincent van Gogh', 'Pablo Picasso', 'Leonardo da Vinci'],
'Jackson Pollock',
),
PerguntaIngles(
'What is the process of manipulating the behavior of search engines to improve the online visibility of a webpage?',
['Search Engine Optimization', 'Pay-per-click', 'Social Media Marketing', 'Content Marketing'],
'Search Engine Optimization',
),
PerguntaIngles(
'Who wrote the mathematical treatise "Principia Mathematica"?',
['Isaac Newton', 'Albert Einstein', 'Leonhard Euler', 'Euclid'],
'Isaac Newton',
),
PerguntaIngles(
'Which composer is known for his "Moonlight Sonata"?',
['Ludwig van Beethoven', 'Wolfgang Amadeus Mozart', 'Johann Sebastian Bach', 'Franz Schubert'],
'Ludwig van Beethoven',
),
PerguntaIngles(
'What is the name of the hypothesis that all languages share a common structural basis?',
['Universal Grammar', 'Linguistic Relativity', 'Sapir-Whorf Hypothesis', 'Structuralism'],
'Universal Grammar',
),
PerguntaIngles(
'In literature, what is the term for a speech given by a character alone on stage to reveal their thoughts?',
['Soliloquy', 'Monologue', 'Dialogue', 'Aside'],
'Soliloquy',
),
PerguntaIngles(
'Which scientist formulated the laws of motion and universal gravitation?',
['Isaac Newton', 'Albert Einstein', 'Galileo Galilei', 'Nikola Tesla'],
'Isaac Newton',
),
PerguntaIngles(
'What is the name for a word that imitates the sound it represents?',
['Onomatopoeia', 'Euphemism', 'Metaphor', 'Hyperbole'],
'Onomatopoeia',
),
PerguntaIngles(
'Who is known for the development of psychoanalysis and the concept of the id, ego, and superego?',
['Sigmund Freud', 'Carl Jung', 'Erik Erikson', 'B.F. Skinner'],
'Sigmund Freud',
),
PerguntaIngles(
'Which novel features the character Holden Caulfield?',
['The Catcher in the Rye', 'To Kill a Mockingbird', '1984', 'Brave New World'],
'The Catcher in the Rye',
),

PerguntaIngles(
'Which scientist developed the theory of relativity?',
['Albert Einstein', 'Isaac Newton', 'Niels Bohr', 'Max Planck'],
'Albert Einstein',
),
PerguntaIngles(
'What is the name of the economic theory that advocates for minimal government intervention in the economy?',
['Laissez-faire', 'Keynesianism', 'Marxism', 'Socialism'],
'Laissez-faire',
),

PerguntaIngles(
'What is the term for a recurring theme or idea in a work of art or literature?',
['Motif', 'Symbol', 'Allegory', 'Theme'],
'Motif',
),
PerguntaIngles(
'Who coined the term "survival of the fittest" in relation to natural selection?',
['Herbert Spencer', 'Charles Darwin', 'Alfred Russel Wallace', 'Gregor Mendel'],
'Herbert Spencer',
),
PerguntaIngles(
'Which novel features the character Jay Gatsby?',
['The Great Gatsby', 'Pride and Prejudice', 'Jane Eyre', 'Moby-Dick'],
'The Great Gatsby',
),
PerguntaIngles(
'What is the name of the fictional city where Batman operates?',
['Gotham City', 'Metropolis', 'Central City', 'Star City'],
'Gotham City',
),
PerguntaIngles(
'Who is considered the "father of modern physics"?',
['Albert Einstein', 'Niels Bohr', 'Max Planck', 'Isaac Newton'],
'Albert Einstein',
),
PerguntaIngles(
'In art, what term refers to the use of strong contrast between light and dark?',
['Chiaroscuro', 'Impasto', 'Sfumato', 'Fauvism'],
'Chiaroscuro',
),
PerguntaIngles(
'Which philosopher is known for his concept of "The Absurd"?',
['Albert Camus', 'Jean-Paul Sartre', 'Friedrich Nietzsche', 'Søren Kierkegaard'],
'Albert Camus',
),
PerguntaIngles(
'What is the study of the origin and history of words called?',
['Etymology', 'Linguistics', 'Semiotics', 'Morphology'],
'Etymology',
),
PerguntaIngles(
'Who painted "The Persistence of Memory"?',
['Salvador Dalí', 'Pablo Picasso', 'Vincent van Gogh', 'Leonardo da Vinci'],
'Salvador Dalí',
),
PerguntaIngles(
'What is the name of the theory that suggests Earths continents were once a single landmass?',
['Pangaea', 'Continental Drift', 'Tectonic Plates', 'Subduction'],
'Pangaea',
),
PerguntaIngles(
'Who wrote the epic poem "Paradise Lost"?',
['John Milton', 'Geoffrey Chaucer', 'Dante Alighieri', 'Homer'],
'John Milton',
),
PerguntaIngles(
'In psychology, what is the phenomenon where people tend to remember the beginning and end of a list more easily than the middle?',
['Serial Position Effect', 'Confirmation Bias', 'Recency Effect', 'Availability Heuristic'],
'Serial Position Effect',
),
PerguntaIngles(
'Who composed the symphony "Symphonie Fantastique"?',
['Hector Berlioz', 'Ludwig van Beethoven', 'Wolfgang Amadeus Mozart', 'Johannes Brahms'],
'Hector Berlioz',
),
PerguntaIngles(
'What is the term for a type of logical fallacy where someone attacks the person making the argument rather than addressing the argument itself?',
['Ad Hominem', 'Straw Man', 'False Dilemma', 'Red Herring'],
'Ad Hominem',
),
PerguntaIngles(
'Who is considered the "father of Western philosophy" and was a student of Socrates?',
['Plato', 'Aristotle', 'Epicurus', 'Pythagoras'],
'Plato',
),
PerguntaIngles(
'Which scientist is known for developing the theory of operant conditioning?',
['B.F. Skinner', 'Ivan Pavlov', 'John Watson', 'Sigmund Freud'],
'B.F. Skinner',
),
PerguntaIngles(
'In which novel is the line "All animals are equal, but some animals are more equal than others"?',
['Animal Farm', '1984', 'Brave New World', 'Fahrenheit 451'],
'Animal Farm',
),
PerguntaIngles(
'Who is credited with creating the worlds first computer program?',
['Ada Lovelace', 'Alan Turing', 'Charles Babbage', 'Grace Hopper'],
'Ada Lovelace',
),
PerguntaIngles(
'What is the term for a rhetorical device where contradictory terms are combined for emphasis?',
['Oxymoron', 'Paradox', 'Euphemism', 'Irony'],
'Oxymoron',
),
PerguntaIngles(
'Which artist painted "The Starry Night"?',
['Vincent van Gogh', 'Pablo Picasso', 'Claude Monet', 'Leonardo da Vinci'],
'Vincent van Gogh',
),
PerguntaIngles(
'Who is known for the economic principle that "people respond to incentives"?',
['Steven Levitt', 'Adam Smith', 'John Maynard Keynes', 'Milton Friedman'],
'Steven Levitt',
),
PerguntaIngles(
'Which psychological phenomenon refers to our tendency to remember information better when we actively engage with it?',
['The Testing Effect', 'The Primacy Effect', 'The Recency Effect', 'The Forgetting Curve'],
'The Testing Effect',
),
PerguntaIngles(
'Who wrote "The Canterbury Tales"?',
['Geoffrey Chaucer', 'William Shakespeare', 'John Milton', 'Jane Austen'],
'Geoffrey Chaucer',
),
PerguntaIngles(
'What is the term for a recurring theme or motif that represents a larger idea in literature?',
['Symbolism', 'Allegory', 'Theme', 'Metaphor'],
'Symbolism',
),
PerguntaIngles(
'Which ancient Greek mathematician is known as the "father of geometry"?',
['Euclid', 'Pythagoras', 'Archimedes', 'Hippocrates'],
'Euclid',
),
PerguntaIngles(
'What is the name of the process by which plants convert sunlight into energy?',
['Photosynthesis', 'Respiration', 'Transpiration', 'Glycolysis'],
'Photosynthesis',
),
PerguntaIngles(
'Who developed the theory of cognitive development stages in children?',
['Jean Piaget', 'Erik Erikson', 'Sigmund Freud', 'Lawrence Kohlberg'],
'Jean Piaget',
),
PerguntaIngles(
'In philosophy, what is the term for the study of knowledge, belief, and justification?',
['Epistemology', 'Metaphysics', 'Ethics', 'Aesthetics'],
'Epistemology',
),
PerguntaIngles(
'Who wrote the novel "One Hundred Years of Solitude"?',
['Gabriel García Márquez', 'Isabel Allende', 'Mario Vargas Llosa', 'Julio Cortázar'],
'Gabriel García Márquez',
),
PerguntaIngles(
'What is the term for a statement that contradicts itself and still seems true?',
['Paradox', 'Oxymoron', 'Hyperbole', 'Irony'],
'Paradox',
),
PerguntaIngles(
'Who is considered the founder of existentialism?',
['Søren Kierkegaard', 'Friedrich Nietzsche', 'Jean-Paul Sartre', 'Albert Camus'],
'Søren Kierkegaard',
),
   PerguntaIngles(
    'What is the chemical symbol for oxygen?',
    ['O', 'Ox', 'O2'],
    'O',
  ),
  PerguntaIngles(
    'Who wrote the play "Romeo and Juliet"?',
    ['William Shakespeare', 'Jane Austen', 'Charles Dickens'],
    'William Shakespeare',
  ),
  PerguntaIngles(
    'Which gas is responsible for the color of the Earth\'s sky?',
    ['Oxygen', 'Nitrogen', 'Carbon dioxide'],
    'Nitrogen',
  ),
  PerguntaIngles(
    'Which planet is known as the "Red Planet"?',
    ['Mars', 'Venus', 'Jupiter'],
    'Mars',
  ),
  PerguntaIngles(
    'Who is the author of the "Harry Potter" book series?',
    ['J.K. Rowling', 'Stephen King', 'George Orwell'],
    'J.K. Rowling',
  ),
  PerguntaIngles(
    'What is the chemical symbol for silver?',
    ['Sv', 'Si', 'Ag'],
    'Ag',
  ),
  PerguntaIngles(
    'Which famous scientist developed the theory of relativity?',
    ['Albert Einstein', 'Isaac Newton', 'Galileo Galilei'],
    'Albert Einstein',
  ),
  PerguntaIngles(
    'What is the largest continent on Earth?',
    ['North America', 'Asia', 'Africa'],
    'Asia',
  ),
  PerguntaIngles(
    'Which gas do plants release during photosynthesis?',
    ['Carbon dioxide', 'Oxygen', 'Nitrogen'],
    'Oxygen',
  ),
  PerguntaIngles(
    'What is the capital city of Japan?',
    ['Kyoto', 'Tokyo', 'Osaka'],
    'Tokyo',
  ),
  PerguntaIngles(
    'Who is known for developing the theory of general relativity?',
    ['Isaac Newton', 'Albert Einstein', 'Stephen Hawking'],
    'Albert Einstein',
  ),
  PerguntaIngles(
    'Which planet is known as the "Ringed Planet"?',
    ['Jupiter', 'Neptune', 'Saturn'],
    'Saturn',
  ),
  PerguntaIngles(
    'What is the chemical symbol for nitrogen?',
    ['Ni', 'N', 'Ne'],
    'N',
  ),
  PerguntaIngles(
    'Who painted the famous artwork "Starry Night"?',
    ['Vincent van Gogh', 'Leonardo da Vinci', 'Pablo Picasso'],
    'Vincent van Gogh',
  ),
  PerguntaIngles(
    'What is the smallest planet in our solar system?',
    ['Mercury', 'Mars', 'Venus'],
    'Mercury',
  ),
  PerguntaIngles(
    'Who wrote the novel "To Kill a Mockingbird"?',
    ['George Orwell', 'Harper Lee', 'Mark Twain'],
    'Harper Lee',
  ),
  PerguntaIngles(
    'What is the chemical symbol for carbon?',
    ['C', 'Co', 'Ca'],
    'C',
  ),
  PerguntaIngles(
    'What is the largest mammal on Earth?',
    ['Elephant', 'Blue Whale', 'Giraffe'],
    'Blue Whale',
  ),
  PerguntaIngles(
    'Which gas do humans exhale during respiration?',
    ['Oxygen', 'Carbon dioxide', 'Nitrogen'],
    'Carbon dioxide',
  ),
  PerguntaIngles(
    'Who is considered the "Father of the Computer"?',
    ['Bill Gates', 'Steve Jobs', 'Alan Turing'],
    'Alan Turing',
  ),
  PerguntaIngles(
    'What is the capital city of Russia?',
    ['Moscow', 'St. Petersburg', 'Kiev'],
    'Moscow',
  ),
  PerguntaIngles(
    'Which gas is responsible for the ozone layer in the Earth\'s atmosphere?',
    ['Oxygen', 'Carbon dioxide', 'Ozone'],
    'Ozone',
  ),
  PerguntaIngles(
    'Who wrote the play "Hamlet"?',
    ['William Shakespeare', 'George Bernard Shaw', 'Oscar Wilde'],
    'William Shakespeare',
  ),
  PerguntaIngles(
    'What is the chemical symbol for iron?',
    ['Ir', 'Fe', 'Au'],
    'Fe',
  ),
  PerguntaIngles(
    'Which element is known as a "noble gas"?',
    ['Helium', 'Oxygen', 'Neon'],
    'Helium',
  ),
  PerguntaIngles(
    'Who is the author of "The Great Gatsby"?',
    ['F. Scott Fitzgerald', 'Ernest Hemingway', 'Mark Twain'],
    'F. Scott Fitzgerald',
  ),
  PerguntaIngles(
    'What is the chemical symbol for potassium?',
    ['K', 'P', 'Ka'],
    'K',
  ),
  PerguntaIngles(
    'Which gas is essential for respiration and combustion?',
    ['Oxygen', 'Carbon dioxide', 'Nitrogen'],
    'Oxygen',
  ),
  PerguntaIngles(
    'Who is known for the theory of natural selection?',
    ['Charles Darwin', 'Isaac Newton', 'Galileo Galilei'],
    'Charles Darwin',
  ),
  PerguntaIngles(
    'What is the capital city of China?',
    ['Beijing', 'Shanghai', 'Hong Kong'],
    'Beijing',
  ),
   
PerguntaIngles(
'Who directed the movie "Inception"?',
['Christopher Nolan', 'Steven Spielberg', 'Martin Scorsese', 'James Cameron'],
'Christopher Nolan',
),
PerguntaIngles(
'Which actor portrayed James Bond in the film "GoldenEye" (1995)?',
['Pierce Brosnan', 'Sean Connery', 'Roger Moore', 'Daniel Craig'],
'Pierce Brosnan',
),
PerguntaIngles(
'Which Disney animated film features a character named Simba?',
['The Lion King', 'Aladdin', 'Beauty and the Beast', 'Cinderella'],
'The Lion King',
),
PerguntaIngles(
'Who directed the film "Jurassic Park"?',
['Steven Spielberg', 'James Cameron', 'George Lucas', 'Peter Jackson'],
'Steven Spielberg',
),
PerguntaIngles(
'In "The Lord of the Rings" film series, what is the name of the wizard played by Ian McKellen?',
['Gandalf', 'Saruman', 'Radagast', 'Frodo'],
'Gandalf',
),
PerguntaIngles(
'Which film features the line "Heres looking at you, kid"?',
['Casablanca', 'Gone with the Wind', 'The Godfather', 'Scarface'],
'Casablanca',
),
PerguntaIngles(
'Who played the role of Neo in "The Matrix" trilogy?',
['Keanu Reeves', 'Will Smith', 'Brad Pitt', 'Tom Cruise'],
'Keanu Reeves',
),


]),
  //============= Fase 4

  Fase([


PerguntaIngles(
'Which actress won an Academy Award for her role in "La La Land"?',
['Emma Stone', 'Meryl Streep', 'Jennifer Lawrence', 'Cate Blanchett'],
'Emma Stone',
),
PerguntaIngles(
'Which film is known for the quote "Life is like a box of chocolates"?',
['Forrest Gump', 'The Godfather', 'Pulp Fiction', 'Citizen Kane'],
'Forrest Gump',
),

PerguntaIngles(
'Which river is the longest in the world?',
['Nile', 'Amazon', 'Yangtze', 'Mississippi'],
'Nile',
),
PerguntaIngles(
'What is the largest planet in our solar system?',
['Jupiter', 'Saturn', 'Neptune', 'Earth'],
'Jupiter',
),
PerguntaIngles(
'Which country is known as the Land of the Rising Sun?',
['Japan', 'China', 'South Korea', 'Vietnam'],
'Japan',
),
PerguntaIngles(
'What is the largest mammal on Earth?',
['Blue Whale', 'Elephant', 'Giraffe', 'Hippopotamus'],
'Blue Whale',
),
PerguntaIngles(
'Which iconic monument is located in the center of Rome?',
['Colosseum', 'Eiffel Tower', 'Taj Mahal', 'Great Wall of China'],
'Colosseum',
),
PerguntaIngles(
'What is the capital city of Australia?',
['Canberra', 'Sydney', 'Melbourne', 'Perth'],
'Canberra',
),
PerguntaIngles(
'Which desert is the largest in the world?',
['Sahara Desert', 'Gobi Desert', 'Atacama Desert', 'Arabian Desert'],
'Sahara Desert',
),


PerguntaIngles(
'Which famous ship sank on its maiden voyage in 1912?',
['Titanic', 'Queen Mary 2', 'HMS Bounty', 'Lusitania'],
'Titanic',
),
PerguntaIngles(
'What is the tallest mountain in North America?',
['Denali', 'Mount Rainier', 'Mount McKinley', 'Mount St. Helens'],
'Denali',
),
PerguntaIngles(
'Which river flows through Egypt and is often associated with its ancient civilization?',
['Nile', 'Amazon', 'Yangtze', 'Mississippi'],
'Nile',
),


PerguntaIngles(
'What is the main component of the Earths atmosphere?',
['Nitrogen', 'Oxygen', 'Carbon dioxide', 'Helium'],
'Nitrogen',
),
PerguntaIngles(
'Which instrument has 88 keys, including black and white ones?',
['Piano', 'Guitar', 'Violin', 'Flute'],
'Piano',
),
PerguntaIngles(
'What is the chemical symbol for gold?',
['Au', 'Ag', 'Fe', 'Cu'],
'Au',
),
PerguntaIngles(
'Which famous scientist formulated the theory of general relativity?',
['Albert Einstein', 'Isaac Newton', 'Galileo Galilei', 'Nikola Tesla'],
'Albert Einstein',
),
PerguntaIngles(
'What is the process by which plants convert sunlight into energy?',
['Photosynthesis', 'Respiration', 'Transpiration', 'Fermentation'],
'Photosynthesis',
),
PerguntaIngles(
'Which gas do plants use to perform photosynthesis?',
['Carbon dioxide', 'Oxygen', 'Nitrogen', 'Hydrogen'],
'Carbon dioxide',
),
PerguntaIngles(
'What is the smallest prime number?',
['2', '1', '3', '5'],
'2',
),
PerguntaIngles(
'What is the chemical symbol for water?',
['H2O', 'CO2', 'O2', 'NaCl'],
'H2O',
),
PerguntaIngles(
'What is the process of water turning into vapor called?',
['Evaporation', 'Condensation', 'Sublimation', 'Freezing'],
'Evaporation',
),
PerguntaIngles(
'Which element is known as the "building block of life"?',
['Carbon', 'Hydrogen', 'Oxygen', 'Nitrogen'],
'Carbon',
),

PerguntaIngles(
'Which film is often considered the flagship of the Paisa cinema movement?',
['Cidade de Deus', 'Tropa de Elite', 'Central do Brasil', 'Pixote'],
'Cidade de Deus',
),
PerguntaIngles(
'Who directed the Brazilian film "Central do Brasil"?',
['Fernando Meirelles', 'Glauber Rocha', 'Walter Salles', 'José Padilha'],
'Walter Salles',
),
PerguntaIngles(
'What is the name of the Brazilian film known for depicting life in the favelas?',
['Cidade de Deus', 'Tropa de Elite', 'Central do Brasil', 'Que Horas Ela Volta?'],
'Cidade de Deus',
),
PerguntaIngles(
'Which Brazilian actor gained international recognition for his role in "Elite Squad"?',
['Wagner Moura', 'Fábio Assunção', 'Lázaro Ramos', 'Selton Mello'],
'Wagner Moura',
),
PerguntaIngles(
'What is the name of the Brazilian film that tells the story of a boy named Pixote?',
['Pixote', 'Cidade de Deus', 'Tropa de Elite', 'Carandiru'],
'Pixote',
),
  
PerguntaIngles(
'Who wrote the novel "Moby-Dick"?',
['Mark Twain', 'Herman Melville', 'Nathaniel Hawthorne'],
'Herman Melville',
),
PerguntaIngles(
'What is the process in which plants convert carbon dioxide and water into glucose and oxygen?',
['Photosynthesis', 'Transpiration', 'Respiration'],
'Photosynthesis',
),
PerguntaIngles(
'Who painted the famous artwork "Starry Night"?',
['Vincent van Gogh', 'Leonardo da Vinci', 'Pablo Picasso'],
'Vincent van Gogh',
),
PerguntaIngles(
'What is the largest planet in our solar system?',
['Mars', 'Jupiter', 'Saturn'],
'Jupiter',
),
PerguntaIngles(
'What is the name of the process where a solid changes directly into a gas without becoming a liquid first?',
['Sublimation', 'Evaporation', 'Condensation'],
'Sublimation',
),
PerguntaIngles(
'Who is the playwright known for works like "Waiting for Godot"?',
['Samuel Beckett', 'Arthur Miller', 'Tennessee Williams'],
'Samuel Beckett',
),
PerguntaIngles(
'Who wrote the novel "Jane Eyre"?',
['Emily Dickinson', 'Mary Shelley', 'Charlotte Brontë'],
'Charlotte Brontë',
),
PerguntaIngles(
'What is the process by which an organism produces offspring similar to itself?',
['Reproduction', 'Respiration', 'Photosynthesis'],
'Reproduction',
),
PerguntaIngles(
'Who wrote the play "Macbeth"?',
['William Shakespeare', 'George Bernard Shaw', 'Oscar Wilde'],
'William Shakespeare',
),
PerguntaIngles(
'Who is the author of the novel "Alices Adventures in Wonderland"?',
['Jane Austen', 'Charles Dickens', 'Lewis Carroll'],
'Lewis Carroll',
),
PerguntaIngles(
'What is the name of the force that opposes the motion of objects through a fluid (liquid or gas)?',
['Friction', 'Gravity', 'Inertia'],
'Friction',
),
PerguntaIngles(
'Who authored the novel "The Catcher in the Rye"?',
['J.D. Salinger', 'F. Scott Fitzgerald', 'Ernest Hemingway'],
'J.D. Salinger',
),
PerguntaIngles(
'What is the process by which plants release water vapor into the air?',
['Transpiration', 'Evaporation', 'Photosynthesis'],
'Transpiration',
),
PerguntaIngles(
'Who wrote the novel "1984"?',
['George Orwell', 'Aldous Huxley', 'Ray Bradbury'],
'George Orwell',
),
PerguntaIngles(
'What is the process of energy transfer through electromagnetic waves?',
['Radiation', 'Conduction', 'Convection'],
'Radiation',
),
PerguntaIngles(
'Who is the author of the novel "Frankenstein"?',
['Mary Shelley', 'Emily Dickinson', 'Jane Austen'],
'Mary Shelley',
),
PerguntaIngles(
'What is the process by which a liquid turns into a gas at temperatures below its boiling point?',
['Evaporation', 'Sublimation', 'Condensation'],
'Evaporation',
),
PerguntaIngles(
'Who authored the novel "To Kill a Mockingbird"?',
['Harper Lee', 'John Steinbeck', 'Mark Twain'],
'Harper Lee',
),
PerguntaIngles(
'Who wrote the play "Romeo and Juliet"?',
['William Shakespeare', 'George Bernard Shaw', 'Oscar Wilde'],
'William Shakespeare',
),
PerguntaIngles(
'What is the name of the scientist known for the laws of planetary motion?',
['Isaac Newton', 'Galileo Galilei', 'Johannes Kepler'],
'Johannes Kepler',
),
PerguntaIngles(
'Who is the author of the science fiction novel "The War of the Worlds"?',
['H.G. Wells', 'Jules Verne', 'Isaac Asimov'],
'H.G. Wells',
),
PerguntaIngles(
'What is the process of energy transfer through the movement of particles in a fluid (liquid or gas)?',
['Convection', 'Conduction', 'Radiation'],
'Convection',
),
PerguntaIngles(
'Who wrote the novel "The Grapes of Wrath"?',
['John Steinbeck', 'Ernest Hemingway', 'F. Scott Fitzgerald'],
'John Steinbeck',
),
PerguntaIngles(
'What is the name of the playwright known for works like "A Streetcar Named Desire"?',
['Tennessee Williams', 'Arthur Miller', 'Samuel Beckett'],
'Tennessee Williams',
),
  
     PerguntaIngles(
    'What is the chemical symbol for gold?',
    ['Go', 'Ag', 'Au'],
    'Au',
  ),
  PerguntaIngles(
    'Who is the author of "Pride and Prejudice"?',
    ['Emily Bronte', 'Jane Austen', 'Charlotte Bronte'],
    'Jane Austen',
  ),
  PerguntaIngles(
    'Which gas is known as laughing gas?',
    ['Carbon dioxide', 'Nitrous oxide', 'Oxygen'],
    'Nitrous oxide',
  ),
  PerguntaIngles(
    'Which planet is known as the "Red Planet"?',
    ['Mars', 'Jupiter', 'Saturn'],
    'Mars',
  ),
  PerguntaIngles(
    'Who wrote the novel "1984"?',
    ['George Orwell', 'Aldous Huxley', 'Ray Bradbury'],
    'George Orwell',
  ),
  PerguntaIngles(
    'What is the chemical symbol for sodium?',
    ['So', 'Na', 'Sa'],
    'Na',
  ),
  PerguntaIngles(
    'Which scientist is known for his theory of gravity?',
    ['Isaac Newton', 'Albert Einstein', 'Galileo Galilei'],
    'Isaac Newton',
  ),
  PerguntaIngles(
    'What is the smallest country in the world?',
    ['Monaco', 'Vatican City', 'Liechtenstein'],
    'Vatican City',
  ),
  PerguntaIngles(
    'Which gas is used by plants during photosynthesis?',
    ['Carbon dioxide', 'Oxygen', 'Hydrogen'],
    'Carbon dioxide',
  ),
  PerguntaIngles(
    'What is the capital city of Australia?',
    ['Sydney', 'Melbourne', 'Canberra'],
    'Canberra',
  ),
  PerguntaIngles(
    'Who is the author of the play "Macbeth"?',
    ['William Shakespeare', 'Oscar Wilde', 'George Bernard Shaw'],
    'William Shakespeare',
  ),
  PerguntaIngles(
    'What is the chemical symbol for copper?',
    ['Cu', 'Cp', 'Co'],
    'Cu',
  ),
  PerguntaIngles(
    'Who developed the theory of evolution by natural selection?',
    ['Charles Darwin', 'Gregor Mendel', 'Alfred Russel Wallace'],
    'Charles Darwin',
  ),
  PerguntaIngles(
    'What is the largest planet in our solar system?',
    ['Mars', 'Jupiter', 'Saturn'],
    'Jupiter',
  ),
  PerguntaIngles(
    'Who wrote the novel "The Catcher in the Rye"?',
    ['J.D. Salinger', 'F. Scott Fitzgerald', 'Mark Twain'],
    'J.D. Salinger',
  ),
  PerguntaIngles(
    'What is the chemical symbol for lead?',
    ['Ld', 'Pb', 'L'],
    'Pb',
  ),
  PerguntaIngles(
    'Which ocean is the largest on Earth?',
    ['Pacific Ocean', 'Atlantic Ocean', 'Indian Ocean'],
    'Pacific Ocean',
  ),
  PerguntaIngles(
    'Who is known for the theory of relativity?',
    ['Isaac Newton', 'Albert Einstein', 'Stephen Hawking'],
    'Albert Einstein',
  ),
  PerguntaIngles(
    'What is the capital city of France?',
    ['Berlin', 'London', 'Paris'],
    'Paris',
  ),
  PerguntaIngles(
    'What is the chemical symbol for helium?',
    ['Hl', 'H', 'He'],
    'He',
  ),
  PerguntaIngles(
    'Which gas is responsible for the ozone layer in the Earth\'s atmosphere?',
    ['Oxygen', 'Carbon dioxide', 'Ozone'],
    'Ozone',
  ),
  PerguntaIngles(
    'Who wrote the play "Hamlet"?',
    ['William Shakespeare', 'George Bernard Shaw', 'Oscar Wilde'],
    'William Shakespeare',
  ),
  PerguntaIngles(
    'What is the chemical symbol for iron?',
    ['Ir', 'Fe', 'Au'],
    'Fe',
  ),
  PerguntaIngles(
    'Which element is known as a "noble gas"?',
    ['Helium', 'Oxygen', 'Neon'],
    'Helium',
  ),
  PerguntaIngles(
    'Who is the author of "The Great Gatsby"?',
    ['F. Scott Fitzgerald', 'Ernest Hemingway', 'Mark Twain'],
    'F. Scott Fitzgerald',
  ),
  PerguntaIngles(
    'What is the chemical symbol for potassium?',
    ['K', 'P', 'Ka'],
    'K',
  ),
  PerguntaIngles(
    'Which gas is essential for respiration and combustion?',
    ['Oxygen', 'Carbon dioxide', 'Nitrogen'],
    'Oxygen',
  ),
  PerguntaIngles(
    'Who is known for the theory of natural selection?',
    ['Charles Darwin', 'Isaac Newton', 'Galileo Galilei'],
    'Charles Darwin',
  ),
  PerguntaIngles(
    'Which gas is responsible for the ozone layer in the Earth\'s atmosphere?',
    ['Oxygen', 'Carbon dioxide', 'Ozone'],
    'Ozone',
  ),
  PerguntaIngles(
    'Who wrote the play "Hamlet"?',
    ['William Shakespeare', 'George Bernard Shaw', 'Oscar Wilde'],
    'William Shakespeare',
  ),
  PerguntaIngles(
    'What is the chemical symbol for iron?',
    ['Ir', 'Fe', 'Au'],
    'Fe',
  ),
  PerguntaIngles(
    'Which element is known as a "noble gas"?',
    ['Helium', 'Oxygen', 'Neon'],
    'Helium',
  ),
  PerguntaIngles(
    'Who is the author of "The Great Gatsby"?',
    ['F. Scott Fitzgerald', 'Ernest Hemingway', 'Mark Twain'],
    'F. Scott Fitzgerald',
  ),
  PerguntaIngles(
    'What is the chemical symbol for potassium?',
    ['K', 'P', 'Ka'],
    'K',
  ),
  PerguntaIngles(
    'Which gas is essential for respiration and combustion?',
    ['Oxygen', 'Carbon dioxide', 'Nitrogen'],
    'Oxygen',
  ),


 ]),
  //============= Fase 5

Fase([

  PerguntaIngles(
    'Who is known for the theory of natural selection?',
    ['Charles Darwin', 'Isaac Newton', 'Galileo Galilei'],
    'Charles Darwin',
  ),
    PerguntaIngles(
        "Which planet is known as the 'Red Planet'?",
        ['Venus', 'Mars', 'Jupiter'],
        'Mars'
    ),
    PerguntaIngles(
        "What is the largest mammal in the world?",
        ['Elephant', 'Blue Whale', 'Giraffe'],
        'Blue Whale'
    ),
    PerguntaIngles(
        "Which famous scientist developed the theory of general relativity?",
        ['Isaac Newton', 'Albert Einstein', 'Galileo Galilei'],
        'Albert Einstein'
    ),
    PerguntaIngles(
        "What is the smallest bone in the human body?",
        ['Stapes', 'Femur', 'Tibia'],
        'Stapes'
    ),
    PerguntaIngles(
        "Which bird is known for its long neck and distinctive honking sound?",
        ['Penguin', 'Swan', 'Parrot'],
        'Swan'
    ),
    PerguntaIngles(
        "What is the world's largest ocean?",
        ['Atlantic Ocean', 'Indian Ocean', 'Pacific Ocean'],
        'Pacific Ocean'
    ),
    PerguntaIngles(
        "What is the chemical symbol for the element gold?",
        ['Au', 'Go', 'Gd'],
        'Au'
    ),
    PerguntaIngles(
        "Which natural satellite orbits the Earth and influences tides?",
        ['Mars', 'Moon', 'Saturn'],
        'Moon'
    ),
    PerguntaIngles(
        "Which insect is known for its ability to produce light through bioluminescence?",
        ['Butterfly', 'Firefly', 'Beetle'],
        'Firefly'
    ),
    PerguntaIngles(
        "What is the largest organ in the human body?",
        ['Liver', 'Heart', 'Skin'],
        'Skin'
    ),
    PerguntaIngles(
        "Which famous landmark is known as the 'City of a Hundred Spires'?",
        ['Eiffel Tower', 'Leaning Tower of Pisa', 'Prague Castle'],
        'Prague Castle'
    ),
    PerguntaIngles(
        "What is the process by which plants convert sunlight into energy?",
        ['Photosynthesis', 'Respiration', 'Fermentation'],
        'Photosynthesis'
    ),
    PerguntaIngles(
        "Which musical instrument is known as the 'King of Instruments'?",
        ['Piano', 'Violin', 'Organ'],
        'Organ'
    ),
    PerguntaIngles(
        "What is the smallest prime number?",
        ['0', '1', '2'],
        '2'
    ),
    PerguntaIngles(
        "Which organ in the human body produces insulin?",
        ['Liver', 'Pancreas', 'Kidney'],
        'Pancreas'
    ),
    PerguntaIngles(
        "Which planet is known for its beautiful rings?",
        ['Mars', 'Saturn', 'Jupiter'],
        'Saturn'
    ),
    PerguntaIngles(
        "What is the longest river in the world?",
        ['Nile', 'Amazon', 'Mississippi'],
        'Nile'
    ),
    PerguntaIngles(
        "Which species of dolphin is known for its distinctive pink color?",
        ['Bottlenose Dolphin', 'Pink Dolphin', 'Orca'],
        'Pink Dolphin'
    ),
    PerguntaIngles(
        "What is the chemical symbol for the element oxygen?",
        ['O', 'Ox', 'Oy'],
        'O'
    ),
    PerguntaIngles(
        "Which constellation is known as the 'Hunter'?",
        ['Orion', 'Ursa Major', 'Cassiopeia'],
        'Orion'
    ),
     PerguntaIngles(
        "Which actor played the character Jack Dawson in the movie 'Titanic'?",
        ['Leonardo DiCaprio', 'Tom Hanks', 'Brad Pitt'],
        'Leonardo DiCaprio'
    ),
    PerguntaIngles(
        "Which actress starred as Hermione Granger in the 'Harry Potter' film series?",
        ['Emma Watson', 'Jennifer Lawrence', 'Kristen Stewart'],
        'Emma Watson'
    ),
    PerguntaIngles(
        "Which musician is known as the 'King of Pop'?",
        ['Elton John', 'Michael Jackson', 'Justin Bieber'],
        'Michael Jackson'
    ),
    PerguntaIngles(
        "Who played the iconic character James Bond in the film series?",
        ['Sean Connery', 'Daniel Craig', 'Harrison Ford'],
        'Sean Connery'
    ),
    PerguntaIngles(
        "Which singer is known as the 'Material Girl' and 'Queen of Pop'?",
        ['Beyoncé', 'Madonna', 'Rihanna'],
        'Madonna'
    ),
    PerguntaIngles(
        "Which actor starred as Tony Stark / Iron Man in the Marvel Cinematic Universe?",
        ['Robert Downey Jr.', 'Chris Hemsworth', 'Mark Ruffalo'],
        'Robert Downey Jr.'
    ),
    PerguntaIngles(
        "Who is known for his role as Captain Jack Sparrow in the 'Pirates of the Caribbean' series?",
        ['Orlando Bloom', 'Johnny Depp', 'Tom Cruise'],
        'Johnny Depp'
    ),
    PerguntaIngles(
        "Which singer is famous for hits like 'Umbrella' and 'Diamonds'?",
        ['Adele', 'Beyoncé', 'Rihanna'],
        'Rihanna'
    ),
    PerguntaIngles(
        "Who is the highest-paid actor in Hollywood as of 2021?",
        ['Dwayne Johnson', 'Robert Downey Jr.', 'Tom Cruise'],
        'Dwayne Johnson'
    ),
    PerguntaIngles(
        "Which actress won an Academy Award for her role in 'La La Land'?",
        ['Emma Stone', 'Jennifer Lawrence', 'Scarlett Johansson'],
        'Emma Stone'
    ),
    PerguntaIngles(
        "Who is known as the creator of 'Star Wars'?",
        ['George Lucas', 'Steven Spielberg', 'James Cameron'],
        'George Lucas'
    ),
    PerguntaIngles(
        "Which Canadian singer is known for hits like 'Sorry' and 'Love Yourself'?",
        ['Justin Timberlake', 'Justin Bieber', 'Shawn Mendes'],
        'Justin Bieber'
    ),
    PerguntaIngles(
        "Who starred as Katniss Everdeen in 'The Hunger Games' film series?",
        ['Emma Watson', 'Jennifer Lawrence', 'Zendaya'],
        'Jennifer Lawrence'
    ),
    PerguntaIngles(
        "Which actor portrayed the character Wolverine in the 'X-Men' film series?",
        ['Hugh Jackman', 'Ryan Reynolds', 'Chris Evans'],
        'Hugh Jackman'
    ),
    PerguntaIngles(
        "Who is the youngest billionaire as of 2021 and co-founder of Snapchat?",
        ['Mark Zuckerberg', 'Elon Musk', 'Evan Spiegel'],
        'Evan Spiegel'
    ),
    PerguntaIngles(
        "Which actor is known for his role as Tony Stark / Iron Man in the Marvel Cinematic Universe?",
        ['Chris Hemsworth', 'Mark Ruffalo', 'Robert Downey Jr.'],
        'Robert Downey Jr.'
    ),
    PerguntaIngles(
        "Who is known for her role as Black Widow in the Marvel Cinematic Universe?",
        ['Scarlett Johansson', 'Jennifer Lawrence', 'Gal Gadot'],
        'Scarlett Johansson'
    ),
    PerguntaIngles(
        "Which rapper and actor starred in movies like 'Men in Black' and 'I Am Legend'?",
        ['Jay-Z', 'Snoop Dogg', 'Will Smith'],
        'Will Smith'
    ),
    PerguntaIngles(
        "Who is known for his role as Edward Cullen in the 'Twilight' film series?",
        ['Taylor Lautner', 'Robert Pattinson', 'Zac Efron'],
        'Robert Pattinson'
    ),
    PerguntaIngles(
        "Which actress played the character Elle Woods in the 'Legally Blonde' film series?",
        ['Reese Witherspoon', 'Julia Roberts', 'Cameron Diaz'],
        'Reese Witherspoon'
    ),
     PerguntaIngles(
        "Which actor played the character Jack Dawson in the movie 'Titanic'?",
        ['Leonardo DiCaprio', 'Tom Hanks', 'Brad Pitt'],
        'Leonardo DiCaprio'
    ),
    PerguntaIngles(
        "Which actress starred as Hermione Granger in the 'Harry Potter' film series?",
        ['Emma Watson', 'Jennifer Lawrence', 'Kristen Stewart'],
        'Emma Watson'
    ),
    PerguntaIngles(
        "Which musician is known as the 'King of Pop'?",
        ['Elton John', 'Michael Jackson', 'Justin Bieber'],
        'Michael Jackson'
    ),
    PerguntaIngles(
        "Who played the iconic character James Bond in the film series?",
        ['Sean Connery', 'Daniel Craig', 'Harrison Ford'],
        'Sean Connery'
    ),
    PerguntaIngles(
        "Which singer is known as the 'Material Girl' and 'Queen of Pop'?",
        ['Beyoncé', 'Madonna', 'Rihanna'],
        'Madonna'
    ),
    PerguntaIngles(
        "Which actor starred as Tony Stark / Iron Man in the Marvel Cinematic Universe?",
        ['Robert Downey Jr.', 'Chris Hemsworth', 'Mark Ruffalo'],
        'Robert Downey Jr.'
    ),
    PerguntaIngles(
        "Who is known for his role as Captain Jack Sparrow in the 'Pirates of the Caribbean' series?",
        ['Orlando Bloom', 'Johnny Depp', 'Tom Cruise'],
        'Johnny Depp'
    ),
    PerguntaIngles(
        "Which singer is famous for hits like 'Umbrella' and 'Diamonds'?",
        ['Adele', 'Beyoncé', 'Rihanna'],
        'Rihanna'
    ),
    PerguntaIngles(
        "Who is the highest-paid actor in Hollywood as of 2021?",
        ['Dwayne Johnson', 'Robert Downey Jr.', 'Tom Cruise'],
        'Dwayne Johnson'
    ),
    PerguntaIngles(
        "Which actress won an Academy Award for her role in 'La La Land'?",
        ['Emma Stone', 'Jennifer Lawrence', 'Scarlett Johansson'],
        'Emma Stone'
    ),
    PerguntaIngles(
        "Who is known as the creator of 'Star Wars'?",
        ['George Lucas', 'Steven Spielberg', 'James Cameron'],
        'George Lucas'
    ),
    PerguntaIngles(
        "Which Canadian singer is known for hits like 'Sorry' and 'Love Yourself'?",
        ['Justin Timberlake', 'Justin Bieber', 'Shawn Mendes'],
        'Justin Bieber'
    ),
    PerguntaIngles(
        "Who starred as Katniss Everdeen in 'The Hunger Games' film series?",
        ['Emma Watson', 'Jennifer Lawrence', 'Zendaya'],
        'Jennifer Lawrence'
    ),
    PerguntaIngles(
        "Which actor portrayed the character Wolverine in the 'X-Men' film series?",
        ['Hugh Jackman', 'Ryan Reynolds', 'Chris Evans'],
        'Hugh Jackman'
    ),
    PerguntaIngles(
        "Who is the youngest billionaire as of 2021 and co-founder of Snapchat?",
        ['Mark Zuckerberg', 'Elon Musk', 'Evan Spiegel'],
        'Evan Spiegel'
    ),
    PerguntaIngles(
        "Which actor is known for his role as Tony Stark / Iron Man in the Marvel Cinematic Universe?",
        ['Chris Hemsworth', 'Mark Ruffalo', 'Robert Downey Jr.'],
        'Robert Downey Jr.'
    ),
    PerguntaIngles(
        "Who is known for her role as Black Widow in the Marvel Cinematic Universe?",
        ['Scarlett Johansson', 'Jennifer Lawrence', 'Gal Gadot'],
        'Scarlett Johansson'
    ),
    PerguntaIngles(
        "Which rapper and actor starred in movies like 'Men in Black' and 'I Am Legend'?",
        ['Jay-Z', 'Snoop Dogg', 'Will Smith'],
        'Will Smith'
    ),
    PerguntaIngles(
        "Who is known for his role as Edward Cullen in the 'Twilight' film series?",
        ['Taylor Lautner', 'Robert Pattinson', 'Zac Efron'],
        'Robert Pattinson'
    ),
    PerguntaIngles(
        "Which actress played the character Elle Woods in the 'Legally Blonde' film series?",
        ['Reese Witherspoon', 'Julia Roberts', 'Cameron Diaz'],
        'Reese Witherspoon'
    ),
      PerguntaIngles(
        "Which planet is known as the 'Morning Star' or the 'Evening Star' due to its brightness?",
        ['Mars', 'Venus', 'Mercury'],
        'Venus'
    ),
    PerguntaIngles(
        "What is the largest planet in our solar system?",
        ['Earth', 'Saturn', 'Jupiter'],
        'Jupiter'
    ),
    PerguntaIngles(
        "Which space agency successfully landed the rover Curiosity on Mars?",
        ['NASA', 'ESA', 'Roscosmos'],
        'NASA'
    ),
    PerguntaIngles(
        "What is the name of the galaxy that contains our solar system?",
        ['Andromeda Galaxy', 'Milky Way Galaxy', 'Triangulum Galaxy'],
        'Milky Way Galaxy'
    ),
    PerguntaIngles(
        "Which moon of Jupiter is known for its potential to host extraterrestrial life due to its subsurface ocean?",
        ['Ganymede', 'Callisto', 'Europa'],
        'Europa'
    ),
    PerguntaIngles(
        "What is the name of the closest star to our solar system?",
        ['Proxima Centauri', 'Sirius', 'Alpha Centauri'],
        'Proxima Centauri'
    ),
    PerguntaIngles(
        "Which phenomenon occurs when a massive star collapses and releases an immense amount of energy?",
        ['Supernova', 'Black Hole', 'Nebula'],
        'Supernova'
    ),
    PerguntaIngles(
        "What is the name of the first American woman in space?",
        ['Sally Ride', 'Valentina Tereshkova', 'Mae Jemison'],
        'Sally Ride'
    ),
    PerguntaIngles(
        "Which space telescope has provided stunning images and insights into the universe since its launch in 1990?",
        ['Chandra X-ray Observatory', 'Spitzer Space Telescope', 'Hubble Space Telescope'],
        'Hubble Space Telescope'
    ),
    PerguntaIngles(
        "What is the process by which a star converts hydrogen into helium, releasing energy in the process?",
        ['Fusion', 'Fission', 'Condensation'],
        'Fusion'
    ),
    PerguntaIngles(
        "Which planet has the largest ring system in our solar system?",
        ['Saturn', 'Jupiter', 'Uranus'],
        'Saturn'
    ),
    PerguntaIngles(
        "What is the name of the rover that recently landed on Mars as part of the Mars 2020 mission?",
        ['Spirit', 'Opportunity', 'Perseverance'],
        'Perseverance'
    ),
    PerguntaIngles(
        "Which phenomenon occurs when the moon passes between the sun and the Earth, blocking out the sun's light?",
        ['Lunar Eclipse', 'Solar Eclipse', 'Aurora Borealis'],
        'Solar Eclipse'
    ),
    PerguntaIngles(
        "What is the name of the boundary beyond which nothing can escape a black hole's gravitational pull?",
        ['Event Horizon', 'Singularity', 'Quasar'],
        'Event Horizon'
    ),
    PerguntaIngles(
        "Which space probe was launched by NASA to study Pluto and the Kuiper Belt?",
        ['Voyager 1', 'New Horizons', 'Cassini'],
        'New Horizons'
    ),
    PerguntaIngles(
        "What is the largest moon in our solar system and is larger than the planet Mercury?",
        ['Io', 'Titan', 'Ganymede'],
        'Ganymede'
    ),
    PerguntaIngles(
        "Which planet is known as the 'Red Planet' due to its reddish appearance?",
        ['Venus', 'Mars', 'Uranus'],
        'Mars'
    ),
    PerguntaIngles(
        "What is the name of the bright band of light that appears in the night sky due to the clustering of stars?",
        ['Milky Way', 'Andromeda', 'Orion Belt'],
        'Milky Way'
    ),
    PerguntaIngles(
        "Which dwarf planet was formerly considered the ninth planet in our solar system?",
        ['Eris', 'Haumea', 'Pluto'],
        'Pluto'
    ),
    PerguntaIngles(
        "Which space agency successfully landed the rover Zhurong on Mars?",
        ['NASA', 'ESA', 'CNSA'],
        'CNSA'
    ),
    PerguntaIngles(
        "Which film is known for the line 'May the Force be with you'?",
        ['Star Wars', 'Star Trek', 'Guardians of the Galaxy'],
        'Star Wars'
    ),
    PerguntaIngles(
        "Which film is about a clownfish named Nemo searching for his son?",
        ['Finding Nemo', 'The Little Mermaid', 'Shark Tale'],
        'Finding Nemo'
    ),
    PerguntaIngles(
        "Which film is known for the line 'Life is like a box of chocolates'?",
        ['Forrest Gump', 'The Shawshank Redemption', 'Pulp Fiction'],
        'Forrest Gump'
    ),
    PerguntaIngles(
        "Which film is set in the fictional African country of Wakanda?",
        ['Black Panther', 'The Lion King', 'Madagascar'],
        'Black Panther'
    ),
    PerguntaIngles(
        "Which film is about a group of friends searching for a missing boy in a fictional town called Hawkins?",
        ['Super 8', 'Stranger Things', 'Stand by Me'],
        'Stranger Things'
    ),
    PerguntaIngles(
        "Which film features a robot named WALL-E and his adventures in a post-apocalyptic Earth?",
        ['Up', 'WALL-E', 'Toy Story'],
        'WALL-E'
    ),
    PerguntaIngles(
        "Which film follows the story of a young wizard named Harry Potter and his journey at Hogwarts School of Witchcraft and Wizardry?",
        ['The Chronicles of Narnia', 'Harry Potter and the Sorcerer\'s Stone', 'Percy Jackson & the Olympians'],
        'Harry Potter and the Sorcerer\'s Stone'
    ),
    PerguntaIngles(
        "Which film features a time-traveling DeLorean and the character Marty McFly?",
        ['The Terminator', 'Back to the Future', 'Interstellar'],
        'Back to the Future'
    ),
    PerguntaIngles(
        "Which film tells the story of a young woman named Belle and her encounters with a prince cursed to become a beast?",
        ['Cinderella', 'Beauty and the Beast', 'Sleeping Beauty'],
        'Beauty and the Beast'
    ),
    PerguntaIngles(
        "Which film franchise follows the adventures of Captain Jack Sparrow?",
        ['Pirates of the Caribbean', 'Indiana Jones', 'The Mummy'],
        'Pirates of the Caribbean'
    ),
    PerguntaIngles(
        "Which film is based on the Marvel Comics character and features a billionaire inventor and superhero?",
        ['Iron Man', 'Spider-Man', 'Ant-Man'],
        'Iron Man'
    ),
    PerguntaIngles(
        "Which film is about a group of people who find themselves trapped in a mysterious cube?",
        ['Cube', 'Saw', 'The Matrix'],
        'Cube'
    ),
    PerguntaIngles(
        "Which film follows the story of a young woman who moves to New York City and works as a journalist for a fashion magazine?",
        ['The Devil Wears Prada', 'Sex and the City', '27 Dresses'],
        'The Devil Wears Prada'
    ),
    PerguntaIngles(
        "Which film is set in a dystopian future and features a young archer named Katniss Everdeen?",
        ['The Giver', 'Divergent', 'The Hunger Games'],
        'The Hunger Games'
    ),
    PerguntaIngles(
        "Which film features a group of friends who embark on a road trip to attend a wedding?",
        ['Wedding Crashers', 'The Hangover', 'Bridesmaids'],
        'The Hangover'
    ),
    PerguntaIngles(
        "Which film is based on the book by Stephen King and features a prison guard overseeing death row?",
        ['The Green Mile', 'Misery', 'Shawshank Redemption'],
        'The Green Mile'
    ),
    PerguntaIngles(
        "Which film follows the story of a man who ages in reverse, born as an elderly man and getting younger as he grows older?",
        ['The Curious Case of Benjamin Button', 'Big Fish', 'The Age of Adaline'],
        'The Curious Case of Benjamin Button'
    ),
    PerguntaIngles(
        "Which film is a science fiction classic directed by Stanley Kubrick and based on a novel by Arthur C. Clarke?",
        ['2001: A Space Odyssey', 'Blade Runner', 'The Matrix'],
        '2001: A Space Odyssey'
    ),
    PerguntaIngles(
        "Which film follows the story of a girl named Dorothy who is transported to the magical land of Oz?",
        ['The Wizard of Oz', 'Alice in Wonderland', 'Pan\'s Labyrinth'],
        'The Wizard of Oz'
    ),
    PerguntaIngles(
        "Which film is about a killer great white shark that terrorizes a small coastal town?",
        ['Jaws', 'Sharknado', 'Deep Blue Sea'],
        'Jaws'
    )
   
])
  // Continue adicionando mais fases e perguntas
];
