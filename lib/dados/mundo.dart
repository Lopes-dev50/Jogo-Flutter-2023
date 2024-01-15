class Pergunta {
  final String question;
  final List<String> answers;
  final String correctAnswer;

  Pergunta(this.question, this.answers, this.correctAnswer);
}

class Fase {
  final List<Pergunta> perguntas;

  Fase(this.perguntas);
}

List<Fase> quizFases = [
  Fase([
    // Fase 1 - Perguntas
Pergunta(
        'Qual é o cantor brasileiro conhecido como "Rei do Baião" e famoso por músicas como "Asa Branca"?',
        ['Gilberto Gil', 'Luiz Gonzaga', 'Caetano Veloso', 'Chico Buarque'],
        'Luiz Gonzaga'
    ),
    Pergunta(
        'Qual é o nome do famoso evento de música que acontece anualmente na cidade de São Paulo, reunindo artistas de diferentes gêneros?',
        ['Rock in Rio', 'Lollapalooza', 'Festival de Verão', 'Festival de São Paulo'],
        'Lollapalooza'
    ),
    Pergunta(
        'Quem é o apresentador do programa de televisão brasileiro "Caldeirão do Huck"?',
        ['Luciano Huck', 'Fausto Corrêa', 'Rodrigo Faro', 'Danilo Gentili'],
        'Luciano Huck'
    ),
    Pergunta(
        'Qual é o nome da atriz brasileira que protagonizou a personagem Bibi na novela "A Força do Querer"?',
        ['Grazi Massafera', 'Juliana Paes', 'Deborah Secco', 'Paolla Oliveira'],
        'Juliana Paes'
    ),
   
    Pergunta(
        'Qual é o nome do cineasta responsável pela trilogia "O Senhor dos Anéis"?',
        ['Steven Spielberg', 'Christopher Nolan', 'James Cameron', 'Peter Jackson'],
        'Peter Jackson'
    ),
    Pergunta(
        'Qual ator interpretou o papel do icônico vilão "Coringa" no filme "Batman: O Cavaleiro das Trevas"?',
        ['Heath Ledger', 'Joaquin Phoenix', 'Jack Nicholson', 'Cesar Romero'],
        'Heath Ledger'
    ),
    Pergunta(
        'Qual é o nome do robô que serve como protagonista no filme de animação "Wall-E" da Pixar?',
        ['Bender', 'R2-D2', 'Wall-E', 'C-3PO'],
        'Wall-E'
    ),
    Pergunta(
        'Qual é o nome do filme dirigido por Quentin Tarantino que apresenta uma trama não linear e inclui diferentes histórias entrelaçadas?',
        ['Pulp Fiction', 'Kill Bill', 'Django Livre', 'Bastardos Inglórios'],
        'Pulp Fiction'
    ),
    Pergunta(
        'Qual é o nome do filme que apresenta o personagem "Tony Stark" como um super-herói bilionário e inventor?',
        ['Superman', 'Batman Begins', 'Homem-Aranha', 'Homem de Ferro'],
        'Homem de Ferro'
    ),
    Pergunta(
        'Qual filme dirigido por Christopher Nolan apresenta a exploração do espaço e um conceito complexo de tempo?',
        ['Inception', 'Interstellar', 'Dunkirk', 'The Prestige'],
        'Interstellar'
    ),
    Pergunta(
        'Qual é o nome do filme de animação que conta a história de um jovem leão que precisa assumir seu lugar como rei da selva?',
        ['O Rei Leão', 'A Era do Gelo', 'Mulan', 'Procurando Nemo'],
        'O Rei Leão'
    ),
    Pergunta(
        'Qual é o filme dirigido por Martin Scorsese que apresenta um personagem envolvido com o mundo do crime organizado e estrelado por Robert De Niro?',
        ['Scarface', 'Pulp Fiction', 'O Poderoso Chefão', 'Taxi Driver'],
        'Taxi Driver'
    ),
    Pergunta(
        'Qual é o nome da saga de filmes de fantasia que apresenta o bruxo "Geralt de Rívia" como protagonista?',
        ['Harry Potter', 'O Senhor dos Anéis', 'Percy Jackson', 'The Witcher'],
        'The Witcher'
    ),
     Pergunta(
        'Qual seleção venceu a Copa do Mundo de Futebol de 2018, realizada na Rússia?',
        ['Brasil', 'França', 'Alemanha', 'Argentina'],
        'França'
    ),
    Pergunta(
        'Em qual cidade brasileira fica o estádio do Maracanã, famoso por sediar finais de Copas do Mundo?',
        ['São Paulo', 'Belo Horizonte', 'Rio de Janeiro', 'Salvador'],
        'Rio de Janeiro'
    ),
   
    Pergunta(
        'Quem é o treinador da seleção brasileira de futebol masculino que venceu a Copa América em 2019?',
        ['Tite', 'Felipão', 'Dunga', 'Mano Menezes'],
        'Tite'
    ),
Pergunta(
'Quem escreveu a peça "Romeu e Julieta"?',
['William Shakespeare', 'Charles Dickens', 'Jane Austen', 'Mark Twain'],
'William Shakespeare',
),
Pergunta(
'Qual é o maior planeta do nosso sistema solar?',
['Vênus', 'Júpiter', 'Marte', 'Saturno'],
'Júpiter',
),
Pergunta(
'Qual é o elemento químico mais abundante na crosta terrestre?',
['Ferro', 'Oxigênio', 'Cálcio', 'Alumínio'],
'Oxigênio',
),
 Pergunta(
        'Qual é o nome da banda brasileira de rock famosa por músicas como "Pais e Filhos" e "Que País É Este"?',
        ['Paralamas do Sucesso', 'Legião Urbana', 'Raimundos', 'Titãs'],
        'Legião Urbana'
    ),
         Pergunta(
        'Qual é o nome do primeiro filme da franquia "Harry Potter"?',
        ['Harry Potter e o Cálice de Fogo', 'Harry Potter e a Pedra Filosofal', 'Harry Potter e a Ordem da Fênix', 'Harry Potter e o Enigma do Príncipe'],
        'Harry Potter e a Pedra Filosofal'
    ),
Pergunta(
'Qual é a maior cordilheira do mundo?',
['Cordilheira dos Andes', 'Montanhas Rochosas', 'Himalaias', 'Cordilheira dos Alpes'],
'Cordilheira dos Andes',
),
Pergunta(
'Qual é o país com a maior população do mundo?',
['Brasil', 'Índia', 'Estados Unidos', 'China'],
'China',
),
Pergunta(
'Quem foi o primeiro presidente dos Estados Unidos?',
['John Adams', 'Thomas Jefferson', 'George Washington', 'Benjamin Franklin'],
'George Washington',
),
Pergunta(
'Qual é a maior espécie de tubarão?',
['Tubarão-martelo', 'Tubarão-baleia', 'Tubarão-tigre', 'Tubarão-branco'],
'Tubarão-baleia',
),
Pergunta(
'Qual é a montanha mais alta do mundo?',
['Monte Everest', 'Monte Kilimanjaro', 'Monte Fuji', 'Monte McKinley'],
'Monte Everest',
),
Pergunta(
'Qual é o maior deserto do mundo?',
['Deserto do Saara', 'Deserto de Atacama', 'Deserto da Arábia', 'Deserto de Gobi'],
'Deserto do Saara',
),
Pergunta(
'Quem escreveu a obra "Dom Quixote"?',
['Miguel de Cervantes', 'Gabriel García Márquez', 'Jorge Luis Borges', 'Pablo Neruda'],
'Miguel de Cervantes',
),
Pergunta(
'Qual é a unidade básica de estrutura dos seres vivos?',
['Célula', 'Átomo', 'Molécula', 'Órgão'],
'Célula',
),
Pergunta(
'Em que ano ocorreu a queda do Império Romano do Ocidente?',
['476 d.C.', '732 d.C.', '532 d.C.', '524 d.C.'],
'476 d.C.',
),
Pergunta(
'Qual é a maior ilha do mundo?',
['Ilha de Java', 'Ilha de Sumatra', 'Ilha de Groenlândia', 'Ilha de Madagascar'],
'Ilha de Groenlândia',
),
Pergunta(
'Qual é a famosa escultura que tem o corpo de um leão e a cabeça de um ser humano?',
['Esfinge de Gizé', 'Estátua de Zeus em Olímpia', 'Vênus de Milo', 'David de Michelangelo'],
'Esfinge de Gizé',
),
Pergunta(
'Qual é o rio mais longo do mundo?',
['Rio Amazonas', 'Rio Nilo', 'Rio Yangtzé', 'Rio Mississipi'],
'Rio Nilo',
),
Pergunta(
'Qual é a menor unidade de informação em um computador?',
['Byte', 'Bit', 'Nibble', 'Kilobyte'],
'Bit',
),
Pergunta(
'Quem foi o cientista que formulou as leis do movimento e a lei da gravidade?',
['Isaac Newton', 'Albert Einstein', 'Galileu Galilei', 'Marie Curie'],
'Isaac Newton',
),
Pergunta(
'Qual é o gás responsável pela cor vermelha das chamas?',
['Hidrogênio', 'Lítio', 'Nitrogênio', 'Hélio'],
'Lítio',
),
Pergunta(
'Qual é o instrumento utilizado para medir a pressão atmosférica?',
['Termômetro', 'Barômetro', 'Higrômetro', 'Anemômetro'],
'Barômetro',
),
Pergunta(
'Qual é o processo natural que converte a luz solar em energia química?',
['Fotossíntese', 'Respiração', 'Fermentação', 'Transpiração'],
'Fotossíntese',
),
Pergunta(
'Qual é o metal líquido à temperatura ambiente?',
['Ouro', 'Prata', 'Chumbo', 'Mercúrio'],
'Mercúrio',
),
Pergunta(
'Qual é o maior satélite natural de Júpiter?',
['Calisto', 'Europa', 'Ganímedes', 'Io'],
'Ganímedes',
),
Pergunta(
'Qual é a maior espécie de urso?',
['Urso-negro', 'Urso-pardo', 'Urso-polar', 'Urso-panda'],
'Urso-polar',
),
Pergunta(
'Qual é o planeta conhecido como "Planeta Vermelho"?',
['Terra', 'Vênus', 'Júpiter', 'Marte'],
'Marte',
),
Pergunta(
'Qual é o livro mais vendido de todos os tempos, depois da Bíblia?',
['O Pequeno Príncipe', 'Dom Quixote', 'Cem Anos de Solidão', 'Harry Potter e a Pedra Filosofal'],
'O Pequeno Príncipe',
),
Pergunta(
'Qual é o período de rotação da Terra em relação ao Sol?',
['24 horas', '365 dias', '30 dias', '48 horas'],
'24 horas',
),
Pergunta(
'Qual é o maior órgão do corpo humano?',
['Coração', 'Fígado', 'Cérebro', 'Pele'],
'Pele',
),
Pergunta(
'Qual é o instrumento musical de teclas mais conhecido?',
['Violino', 'Piano', 'Flauta', 'Violoncelo'],
'Piano',
),


Pergunta(
'Qual é o processo de conversão de açúcares em álcool e dióxido de carbono?',
['Fermentação', 'Destilação', 'Oxidação', 'Vaporização'],
'Fermentação',
),
Pergunta(
'Qual é o autor de "1984", um famoso romance distópico?',
['George Orwell', 'Aldous Huxley', 'Ray Bradbury', 'Philip K. Dick'],
'George Orwell',
),
Pergunta(
'Qual é a unidade de medida de resistência elétrica?',
['Ampère', 'Volt', 'Ohm', 'Watt'],
'Ohm',
),
Pergunta(
'Qual é a capital da Rússia?',
['São Petersburgo', 'Kiev', 'Moscovo', 'Vladivostok'],
'Moscovo',
),
Pergunta(
'Qual é o processo de conversão de luz em energia elétrica?',
['Fotossíntese', 'Fotólise', 'Fotocélula', 'Fototropismo'],
'Fotocélula',
),
 Pergunta(
        'Qual jogador de futebol é conhecido como "O Fenômeno" e venceu a Copa do Mundo com o Brasil em 2002?',
        ['Cristiano Ronaldo', 'Ronaldinho Gaúcho', 'Ronaldo', 'Neymar'],
        'Ronaldo'
    ),
    Pergunta(
        'Qual país sediou a Copa do Mundo de Futebol Feminino em 2015?',
        ['Estados Unidos', 'Alemanha', 'França', 'Canadá'],
        'Canadá'
    ),
Pergunta(
'Qual é o nome da famosa estátua grega que representa a deusa da vitória?',
['Vênus de Milo', 'Vitória de Samotrácia', 'Atena Parthenos', 'Afrodite'],
'Vitória de Samotrácia',
),
Pergunta(
'Qual é o fenômeno natural que causa a coloração do céu ao entardecer?',
['Aurora Boreal', 'Arco-íris', 'Refração', 'Pôr do Sol'],
'Pôr do Sol',
),
Pergunta(
'Qual é o nome da famosa estátua que é meio leão e meio homem, e guardava a entrada das antigas cidades-estado gregas?',
['Vênus de Milo', 'Colosso de Rodes', 'Esfinge de Gizé', 'Minotauro'],
'Esfinge de Gizé',
),
Pergunta(
'Qual é o processo em que as plantas convertem gás carbônico e água em glicose e oxigênio, usando energia solar?',
['Fotossíntese', 'Respiração', 'Fermentação', 'Transpiração'],
'Fotossíntese',
),
Pergunta(
'Qual é o símbolo químico para o ouro?',
['Ag', 'O', 'Au', 'G'],
'Au',
),
Pergunta(
'Qual é o nome da teoria científica que descreve a evolução das espécies?',
['Teoria do Big Bang', 'Leis de Newton', 'Teoria da Relatividade', 'Teoria da Evolução'],
'Teoria da Evolução',
),
Pergunta(
'Qual é o processo que transforma um líquido em vapor, através do fornecimento de calor?',
['Ebulição', 'Solidificação', 'Condensação', 'Sublimação'],
'Ebulição',
),
Pergunta(
'Qual é o instrumento óptico usado para observar objetos distantes?',
['Telescópio', 'Microscópio', 'Binóculos', 'Lupa'],
'Telescópio',
),
Pergunta(
'Qual é o sobrenome da famosa pintora mexicana conhecida por suas obras com autoretratos?',
['Kahlo', 'Picasso', 'da Vinci', 'Monet'],
'Kahlo',
),
Pergunta(
'Qual é o processo de conversão de um gás em líquido, através do resfriamento?',
['Solidificação', 'Ebulição', 'Condensação', 'Evaporação'],
'Condensação',
),
Pergunta(
'Qual é o elemento químico que é essencial para a vida, formando a base das moléculas orgânicas?',
['Carbono', 'Oxigênio', 'Nitrogênio', 'Hidrogênio'],
'Carbono',
),
Pergunta(
'Qual é o processo em que um corpo celeste passa entre a Terra e o Sol, bloqueando parcial ou totalmente a visão do Sol?',
['Eclipse lunar', 'Eclipse solar', 'Cometa', 'Meteorito'],
'Eclipse solar',
),
Pergunta(
'Qual é o país conhecido como "Terra do Sol Nascente"?',
['China', 'Índia', 'Japão', 'Coreia do Sul'],
'Japão',
),
Pergunta(
'Qual é o nome da famosa pintura que retrata a cena de Adão e Deus estendendo as mãos um para o outro?',
['A Última Ceia', 'O Nascimento de Vênus', 'O Grito', 'A Criação de Adão'],
'A Criação de Adão',
),
    Pergunta(
      'Qual é a capital da França?',
      ['Berlim', 'Londres', 'Paris', 'Belgica'],
      'Paris',
    ),
    Pergunta(
      'Qual é a cor do céu em um dia ensolarado?',
      ['Azul', 'Vermelho', 'Verde', 'cinza'],
      'Azul',
    ),
    
     Pergunta(
        'Qual é o planeta conhecido como "Planeta Vermelho"?',
        ['Terra', 'Vênus', 'Marte', 'Júpiter'],
        'Marte'
    ),
    Pergunta(
        'Qual é o maior mamífero terrestre?',
        ['Elefante Africano', 'Baleia Azul', 'Rinoceronte', 'Girafa'],
        'Elefante Africano'
    ),
    Pergunta(
        'Quem pintou a Mona Lisa?',
        ['Vincent van Gogh', 'Leonardo da Vinci', 'Pablo Picasso', 'Michelangelo'],
        'Leonardo da Vinci'
    ),
    Pergunta(
        'Qual é o maior osso do corpo humano?',
        ['Fêmur', 'Tíbia', 'Úmero', 'Rádio'],
        'Fêmur'
    ),
    Pergunta(
        'Qual é a maior organela nas células eucarióticas?',
        ['Núcleo', 'Mitocôndria', 'Retículo Endoplasmático', 'Complexo de Golgi'],
        'Núcleo'
    ),
    Pergunta(
        'Qual é a unidade básica da vida?',
        ['Átomo', 'Célula', 'Molécula', 'Gene'],
        'Célula'
    ),
    Pergunta(
        'Qual é o metal mais abundante na crosta terrestre?',
        ['Ferro', 'Alumínio', 'Ouro', 'Cobre'],
        'Alumínio'
    ),
    
    Pergunta(
      'Qual é o maior planeta do sistema solar?',
      ['Terra', 'Marte', 'Júpiter', 'Saturno'],
      'Júpiter',
    ),
    Pergunta(
      'Qual é a capital do Brasil?',
      ['São Paulo', 'Rio de Janeiro', 'Brasília', 'Porto Alegre'],
      'Brasília',
    ),
   
  ]),



   //================================= Fase 2 - Perguntas
  Fase([
  Pergunta(
        'Qual filme ficou famoso pela frase "You can\'t handle the truth!"?',
        ['O Poderoso Chefão', 'Um Sonho de Liberdade', 'A Few Good Men', 'Clube da Luta'],
        'A Few Good Men'
    ),
    Pergunta(
        'Qual é o filme que possui o personagem "Hannibal Lecter", um psiquiatra canibal?',
        ['Seven', 'O Silêncio dos Inocentes', 'Psicose', 'Jogos Mortais'],
        'O Silêncio dos Inocentes'
    ),
    Pergunta(
        'Qual é o nome do filme de animação da Pixar que se passa no fundo do mar e apresenta o peixe-palhaço Nemo?',
        ['Procurando Nemo', 'A Pequena Sereia', 'Up - Altas Aventuras', 'Toy Story'],
        'Procurando Nemo'
    ),
    Pergunta(
        'Qual filme é conhecido por popularizar o termo "carpe diem"?',
        ['Clube dos Cinco', 'Sociedade dos Poetas Mortos', 'Meia-Noite em Paris', 'Pulp Fiction'],
        'Sociedade dos Poetas Mortos'
    ),
    Pergunta(
        'Qual é o filme em preto e branco que apresenta a cena da atriz principal cantando "Diamonds Are a Girl\'s Best Friend"?',
        ['Bonequinha de Luxo', 'Casablanca', 'Cantando na Chuva', 'Crepúsculo dos Deuses'],
        'Bonequinha de Luxo'
    ),
    Pergunta(
        'Qual filme de ficção científica de 1982 foi dirigido por Ridley Scott e se passa em um futuro distópico em Los Angeles?',
        ['Matrix', 'Blade Runner', 'Mad Max', 'Minority Report'],
        'Blade Runner'
    ),
    Pergunta(
        'Qual é o nome do filme de 2000 que apresenta um sistema de inteligência artificial chamado "Skynet"?',
        ['O Exterminador do Futuro', 'A.I. - Inteligência Artificial', 'Matrix', 'Interestelar'],
        'O Exterminador do Futuro'
    ),
    Pergunta(
        'Qual filme é conhecido por ter popularizado a frase "Here\'s looking at you, kid"?',
        ['Casablanca', 'O Grande Gatsby', 'Cidadão Kane', 'E o Vento Levou'],
        'Casablanca'
    ),
    Pergunta(
        'Qual é o nome da série de filmes que apresenta um agente secreto britânico conhecido como "007"?',
        ['Missão Impossível', 'Jason Bourne', 'Kingsman', 'James Bond'],
        'James Bond'
    ),
    Pergunta(
        'Qual é o nome do filme que se passa em um futuro pós-apocalíptico e apresenta o personagem "Max Rockatansky"?',
        ['Mad Max', 'Eu Sou a Lenda', 'O Livro de Eli', 'Planeta dos Macacos'],
        'Mad Max'
    ),
      Pergunta(
        'Qual cantor brasileiro é conhecido como "Cazuza" e teve sucessos como "Exagerado" e "Codinome Beija-Flor"?',
        ['Renato Russo', 'Gilberto Gil', 'Cazuza', 'Raul Seixas'],
        'Cazuza'
    ),
    Pergunta(
        'Qual é o nome da primeira telenovela exibida na televisão brasileira?',
        ['Irmãos Coragem', 'Beto Rockfeller', 'O Bem-Amado', 'Saramandaia'],
        'Beto Rockfeller'
    ),
    Pergunta(
        'Qual é o nome da atriz brasileira que interpretou a personagem "Viúva Porcina" na novela "Roque Santeiro"?',
        ['Fernanda Montenegro', 'Glória Pires', 'Regina Duarte', 'Suzana Vieira'],
        'Regina Duarte'
    ),
    Pergunta(
        'Qual é o nome da famosa escola de samba carioca que detém o recorde de títulos no Carnaval do Rio de Janeiro?',
        ['Mangueira', 'Salgueiro', 'Portela', 'Beija-Flor'],
        'Beija-Flor'
    ),
    Pergunta(
        'Qual é o nome do quadro de humorístico brasileiro conhecido pelas esquetes do "Didi Mocó"?',
        ['Zorra Total', 'Os Trapalhões', 'A Praça É Nossa', 'Vai que Cola'],
        'Os Trapalhões'
    ),

     Pergunta(
        'Qual é o país com mais títulos de Copa do Mundo de Futebol?',
        ['Brasil', 'Alemanha', 'Itália', 'Argentina'],
        'Brasil'
    ),
    Pergunta(
        'Qual é o nome do troféu concedido ao vencedor da Copa do Mundo de Futebol?',
        ['Taça do Mundo', 'Troféu FIFA', 'Copa do Campeão', 'Taça Jules Rimet'],
        'Taça do Mundo'
    ),
    Pergunta(
        'Em que ano o Brasil venceu a Copa do Mundo de Futebol pela primeira vez?',
        ['1950', '1958', '1962', '1966'],
        '1958'
    ),
    Pergunta(
        'Qual jogador de futebol é conhecido como "O eterno camisa 10" e foi ídolo do Napoli?',
        ['Pelé', 'Diego Maradona', 'Zinedine Zidane', 'Michel Platini'],
        'Diego Maradona'
    ),
    Pergunta(
        'Qual país sediou a Copa do Mundo de Futebol de 2014?',
        ['Alemanha', 'Brasil', 'África do Sul', 'Rússia'],
        'Brasil'
    ),
    Pergunta(
        'Qual é o nome do autor da famosa série de livros infantojuvenis "O Menino Maluquinho"?',
        ['Monteiro Lobato', 'Ziraldo', 'Mauricio de Sousa', 'Luis Fernando Verissimo'],
        'Ziraldo'
    ),
    Pergunta(
        'Qual é o nome do famoso festival de música que acontece na cidade de Paraty, no Brasil?',
        ['Rock in Rio', 'Festival de Verão', 'Festival de Paraty', 'Flip'],
        'Flip'
    ),
    Pergunta(
        'Qual é o nome da cantora brasileira conhecida como "A Rainha dos Baixinhos"?',
        ['Angélica', 'Xuxa', 'Eliana', 'Fafá de Belém'],
        'Xuxa'
    ),
    Pergunta(
        'Qual é o nome da personagem interpretada por Regina Casé na novela "Que Rei Sou Eu?"?',
        ['Viúva Porcina', 'Pagu', 'Tina Pepper', 'Tonha'],
        'Pagu'
    ),
    Pergunta(
        'Qual é o nome da famosa festa popular que acontece no interior da Bahia, conhecida por suas grandes esculturas de papel machê?',
        ['Carnaval de Salvador', 'Festa de São João', 'Folia de Reis', 'Festa de Boi-Bumbá'],
        'Festa de São João'
    ),
    Pergunta(
        'Qual é o nome da bola oficial da Copa do Mundo de Futebol?',
        ['Brazuca', 'Tango España', 'Telstar', 'Jabulani'],
        'Telstar'
    ),
    Pergunta(
        'Qual jogador de futebol brasileiro é conhecido como "O Fenômeno"?',
        ['Pelé', 'Ronaldo', 'Romário', 'Ronaldinho Gaúcho'],
        'Ronaldo'
    ),
    Pergunta(
        'Qual seleção venceu a Copa do Mundo de Futebol Feminino de 2019?',
        ['Brasil', 'Estados Unidos', 'Alemanha', 'França'],
        'Estados Unidos'
    ),
    Pergunta(
        'Qual é o nome do técnico brasileiro que venceu a Copa do Mundo de 2002 com a seleção brasileira?',
        ['Felipão', 'Tite', 'Dunga', 'Mano Menezes'],
        'Felipão'
    ),
    Pergunta(
        'Qual é o nome do jogador de futebol brasileiro vencedor do prêmio FIFA de Melhor Jogador do Mundo em 1999?',
        ['Ronaldo', 'Rivaldo', 'Ronaldinho Gaúcho', 'Kaká'],
        'Rivaldo'
    ),
   
    Pergunta(
      'Quem pintou a Mona Lisa?',
      ['Van Gogh', 'Picasso', 'Leonardo da Vinci', 'Letícia Taborda'],
      'Leonardo da Vinci',
    ),
    Pergunta(
      'Qual é o maior planeta do sistema solar?',
      ['Terra', 'Marte', 'Júpiter', 'Uranio'],
      'Júpiter',
    ),
    Pergunta(
      'Qual é a capital do Brasil?',
      ['São Paulo', 'Rio de Janeiro', 'Brasília', 'Alvorada'],
      'Brasília',
    ),
    Pergunta(
        'Qual é o maior oceano do mundo?',
        ['Oceano Atlântico', 'Oceano Índico', 'Oceano Pacífico', 'Oceano Ártico'],
        'Oceano Pacífico'
    ),
    Pergunta(
        'Quem escreveu a obra "1984"?',
        ['George Orwell', 'Aldous Huxley', 'J.D. Salinger', 'Ray Bradbury'],
        'George Orwell'
    ),
    Pergunta(
        'Qual é o símbolo químico do elemento oxigênio?',
        ['O', 'Ox', 'Oi', 'Oxg'],
        'O'
    ),
    Pergunta(
        'Em que continente está localizada a maior parte da Floresta Amazônica?',
        ['América do Sul', 'África', 'Ásia', 'América do Norte'],
        'América do Sul'
    ),
    Pergunta(
        'Quem foi o primeiro presidente dos Estados Unidos?',
        ['Thomas Jefferson', 'Benjamin Franklin', 'John Adams', 'George Washington'],
        'George Washington'
    ),
    Pergunta(
        'Qual é o maior músculo do corpo humano?',
        ['Bíceps', 'Quadríceps', 'Glúteo Máximo', 'Deltoides'],
        'Glúteo Máximo'
    ),
    Pergunta(
        'Qual é o gás mais abundante na atmosfera terrestre?',
        ['Dióxido de Carbono', 'Oxigênio', 'Hidrogênio', 'Nitrogênio'],
        'Nitrogênio'
    ),
    Pergunta(
        'Quem foi o cientista que formulou as leis do movimento e a lei da gravitação?',
        ['Isaac Newton', 'Albert Einstein', 'Galileu Galilei', 'Nikola Tesla'],
        'Isaac Newton'
    ),
    Pergunta(
        'Quantos elementos químicos existem na tabela periódica moderna?',
        ['92', '104', '118', '120'],
        '118'
    ),
    Pergunta(
        'Em que ano ocorreu a Primeira Guerra Mundial?',
        ['1914', '1920', '1939', '1918'],
        '1914'
    ),
    Pergunta(
        'Qual é o maior deserto do mundo?',
        ['Deserto do Saara', 'Deserto do Atacama', 'Deserto da Arábia', 'Deserto da Antártida'],
        'Deserto do Saara'
    ),
    Pergunta(
        'Qual é o livro mais vendido de todos os tempos?',
        ['Dom Quixote', 'A Bíblia', 'O Pequeno Príncipe', 'Cinquenta Tons de Cinza'],
        'A Bíblia'
    ),
    Pergunta(
        'Qual é o metal líquido à temperatura ambiente?',
        ['Ouro', 'Prata', 'Mercúrio', 'Cobre'],
        'Mercúrio'
    ),
    Pergunta(
        'Qual é a montanha mais alta do mundo?',
        ['Monte Kilimanjaro', 'Monte Everest', 'Monte McKinley', 'Monte Fuji'],
        'Monte Everest'
    ),
    Pergunta(
        'Qual é o processo pelo qual as plantas produzem seu próprio alimento?',
        ['Fotossíntese', 'Respiração', 'Fermentação', 'Digestão'],
        'Fotossíntese'
    ),
    Pergunta(
        'Quantos continentes existem no mundo?',
        ['3', '5', '6', '7'],
        '7'
    ),
      Pergunta(
        'Qual filme ganhou o primeiro Oscar de Melhor Filme?',
        ['Cidadão Kane', 'E o Vento Levou', 'Casablanca', 'Asas'],
        'Asas'
    ),
    Pergunta(
        'Quem dirigiu o filme "Pulp Fiction"?',
        ['Quentin Tarantino', 'Martin Scorsese', 'Steven Spielberg', 'Christopher Nolan'],
        'Quentin Tarantino'
    ),
    Pergunta(
        'Qual é o nome do robô icônico da série de filmes "Star Wars"?',
        ['R2-D2', 'C-3PO', 'BB-8', 'WALL-E'],
        'R2-D2'
    ),
    Pergunta(
        'Qual ator interpretou o papel de James Bond no filme "007 - Operação Skyfall"?',
        ['Daniel Craig', 'Pierce Brosnan', 'Roger Moore', 'Sean Connery'],
        'Daniel Craig'
    ),
    Pergunta(
        'Qual filme é conhecido por popularizar a técnica de efeitos especiais chamada "bullet time"?',
        ['Matrix', 'De Volta para o Futuro', 'Blade Runner', 'Inception'],
        'Matrix'
    ),
    Pergunta(
        'Qual é o filme mais lucrativo de todos os tempos nas bilheteiras mundiais?',
        ['Vingadores: Ultimato', 'Avatar', 'Titanic', 'Star Wars: O Despertar da Força'],
        'Vingadores: Ultimato'
    ),
    Pergunta(
        'Qual filme dirigido por Steven Spielberg apresenta um parque temático com dinossauros recriados geneticamente?',
        ['Jurassic Park', 'King Kong', 'Godzilla', 'Planet of the Apes'],
        'Jurassic Park'
    ),
    Pergunta(
        'Quem dirigiu o filme de ficção científica "Interestelar"?',
        ['James Cameron', 'Ridley Scott', 'Christopher Nolan', 'Denis Villeneuve'],
        'Christopher Nolan'
    ),
    Pergunta(
        'Qual é o nome do vilão principal na série de filmes "O Senhor dos Anéis"?',
        ['Saruman', 'Gollum', 'Sauron', 'Gandalf'],
        'Sauron'
    ),
    Pergunta(
        'Qual é o nome do icônico personagem interpretado por Johnny Depp na série de filmes "Piratas do Caribe"?',
        ['Capitão Gancho', 'Will Turner', 'Davy Jones', 'Capitão Jack Sparrow'],
        'Capitão Jack Sparrow'
    ),
    Pergunta(
        'Qual é o rio mais longo do mundo?',
        ['Rio Amazonas', 'Rio Nilo', 'Rio Mississipi', 'Rio Yangtzé'],
        'Rio Nilo'
    ),
    Pergunta(
        'Qual é o composto químico com fórmula H2O?',
        ['Oxigênio', 'Dióxido de Carbono', 'Água', 'Hidrogênio'],
        'Água'
    ),

Pergunta(
'Qual é o maior oceano do mundo?',
['Oceano Atlântico', 'Oceano Pacífico', 'Oceano Índico', 'Oceano Ártico'],
'Oceano Pacífico',
),
Pergunta(
'Qual é a famosa estátua que representa a liberdade e está localizada em Nova Iorque?',
['Estatua de Zeus em Olímpia', 'A Venus de Milo', 'Estátua da Liberdade', 'Cristo Redentor'],
'Estátua da Liberdade',
),
Pergunta(
'Qual é o processo de conversão de açúcares em energia nas células?',
['Fotossíntese', 'Digestão', 'Respiração', 'Evaporação'],
'Respiração',
),
Pergunta(
'Qual é o animal mais rápido do mundo terrestre?',
['Cheetah', 'Guepardo', 'Águia-real', 'Leopardo'],
'Cheetah',
),
Pergunta(
'Qual é o elemento químico conhecido como "gás nobre"?',
['Hélio', 'Oxigênio', 'Hidrogênio', 'Nitrogênio'],
'Hélio',
),
Pergunta(
'Qual é o nome da famosa fórmula matemática que relaciona círculo, diâmetro e comprimento?',
['Teorema de Pitágoras', 'Equação de Einstein', 'Lei de Newton', 'Circunferência'],
'Circunferência',
),
Pergunta(
'Qual é o nome do processo natural que converte nitrogênio atmosférico em compostos utilizáveis pelas plantas?',
['Fotossíntese', 'Transpiração', 'Fixação de Nitrogênio', 'Fermentação'],
'Fixação de Nitrogênio',
),
Pergunta(
'Qual é o maior mamífero marinho e também o maior animal que já existiu na Terra?',
['Baleia-azul', 'Orca', 'Tubarão-baleia', 'Baleia-jubarte'],
'Baleia-azul',
),
Pergunta(
'Qual é o nome do processo em que a água passa do estado líquido para o gasoso?',
['Evaporação', 'Solidificação', 'Condensação', 'Fusão'],
'Evaporação',
),
Pergunta(
'Qual é o nome da partícula subatômica que possui uma carga negativa?',
['Próton', 'Nêutron', 'Elétron', 'Quark'],
'Elétron',
),
Pergunta(
'Qual é o planeta conhecido como "Planeta Vermelho"?',
['Terra', 'Vênus', 'Júpiter', 'Marte'],
'Marte',
),
Pergunta(
'Qual é o nome do processo em que uma substância sólida passa diretamente para o estado gasoso, sem passar pelo estado líquido?',
['Sublimação', 'Evaporação', 'Condensação', 'Fusão'],
'Sublimação',
),
Pergunta(
'Qual é o nome da unidade básica de informação em sistemas de computação?',
['Bit', 'Byte', 'Nibble', 'Kilobyte'],
'Bit',
),
Pergunta(
'Qual é a maior espécie de tubarão?',
['Tubarão-martelo', 'Tubarão-baleia', 'Tubarão-tigre', 'Tubarão-branco'],
'Tubarão-baleia',
),
Pergunta(
'Qual é o nome do processo de obtenção de energia de uma célula sem uso de oxigênio?',
['Respiração celular', 'Fotossíntese', 'Fermentação', 'Digestão'],
'Fermentação',
),
Pergunta(
'Qual é o famoso físico teórico que formulou a Teoria da Relatividade?',
['Isaac Newton', 'Albert Einstein', 'Niels Bohr', 'Galileu Galilei'],
'Albert Einstein',
),
Pergunta(
'Qual é o maior deserto do mundo?',
['Deserto do Saara', 'Deserto de Atacama', 'Deserto da Arábia', 'Deserto de Gobi'],
'Deserto do Saara',
),
Pergunta(
'Qual é o processo que permite que as plantas absorvam água do solo?',
['Fotossíntese', 'Transpiração', 'Osmose', 'Capilaridade'],
'Osmose',
),
Pergunta(
'Qual é o processo em que uma substância passa do estado gasoso para o líquido?',
['Evaporação', 'Solidificação', 'Condensação', 'Fusão'],
'Condensação',
),
Pergunta(
'Qual é a famosa obra de Miguel de Cervantes que conta as aventuras do cavaleiro Dom Quixote?',
['Dom Quixote', 'Cem Anos de Solidão', 'Os Três Mosqueteiros', 'A Divina Comédia'],
'Dom Quixote',
),
Pergunta(
'Qual é o nome do processo de divisão celular que resulta em células filhas com metade do número de cromossomos?',
['Mitose', 'Meiose', 'Fotossíntese', 'Replicação'],
'Meiose',
),
Pergunta(
'Qual é o processo de conversão de líquido em vapor, através do fornecimento de calor?',
['Ebulição', 'Solidificação', 'Condensação', 'Sublimação'],
'Ebulição',
),
Pergunta(
'Qual é o maior osso do corpo humano?',
['Fêmur', 'Tíbia', 'Fíbula', 'Úmero'],
'Fêmur',
),
Pergunta(
'Qual é o nome do instrumento utilizado para medir a intensidade de um terremoto?',
['Termômetro', 'Barômetro', 'Sismógrafo', 'Higrômetro'],
'Sismógrafo',
),
Pergunta(
'Qual é o nome da famosa pintura de Leonardo da Vinci que retrata um homem nu em uma posição específica?',
['O Nascimento de Vênus', 'A Última Ceia', 'Homem Vitruviano', 'A Criação de Adão'],
'Homem Vitruviano',
),
Pergunta(
'Qual é o processo de conversão de energia luminosa em energia elétrica em células fotovoltaicas?',
['Fotossíntese', 'Respiração', 'Fermentação', 'Eletrofotografia'],
'Fotossíntese',
),
Pergunta(
'Qual é o sobrenome da famosa autora britânica autora de "Orgulho e Preconceito"?',
['Brontë', 'Dickens', 'Austen', 'Woolf'],
'Austen',
),
Pergunta(
'Qual é o nome da famosa escultura que representa um homem nu com uma expressão de luta?',
['David', 'Vênus de Milo', 'Cristo Redentor', 'A Última Ceia'],
'David',
),
Pergunta(
'Qual é o nome do famoso matemático grego conhecido como "o pai da geometria"?',
['Euclides', 'Pitágoras', 'Arquimedes', 'Hipócrates'],
'Euclides',
),
Pergunta(
'Qual é o processo natural em que o gelo se transforma diretamente em vapor, sem passar pelo estado líquido?',
['Ebulição', 'Solidificação', 'Condensação', 'Sublimação'],
'Sublimação',
),
Pergunta(
'Qual é o maior mamífero terrestre?',
['Elefante-africano', 'Rinoceronte-branco', 'Búfalo-africano', 'Girafa'],
'Elefante-africano',
),
Pergunta(
'Qual é o nome do processo de divisão celular que resulta em células filhas idênticas à célula mãe?',
['Mitose', 'Meiose', 'Fotossíntese', 'Replicação'],
'Mitose',
),
Pergunta(
'Qual é o planeta mais próximo do Sol?',
['Vênus', 'Marte', 'Terra', 'Mercúrio'],
'Mercúrio',
),
Pergunta(
'Qual é o nome do processo de formação de gametas (células sexuais) que envolve redução do número de cromossomos?',
['Mitose', 'Meiose', 'Fotossíntese', 'Replicação'],
'Meiose',
),
Pergunta(
'Qual é o nome da famosa pintura que retrata um homem com uma expressão de angústia no rosto?',
['O Grito', 'Mona Lisa', 'A Noite Estrelada', 'Guernica'],
'O Grito',
),

Pergunta(
'Qual é o nome da famosa peça de William Shakespeare sobre um príncipe atormentado?',
['Macbeth', 'Otelo', 'Hamlet', 'Rei Lear'],
'Hamlet',
),
Pergunta(
'Qual é o nome do processo que converte um gás diretamente em líquido, através do resfriamento?',
['Ebulição', 'Solidificação', 'Condensação', 'Sublimação'],
'Condensação',
),
Pergunta(
'Qual é o nome do processo de obtenção de energia das células usando oxigênio?',
['Fotossíntese', 'Respiração', 'Fermentação', 'Digestão'],
'Respiração',
),
Pergunta(
'Qual é o autor da famosa obra "A Divina Comédia"?',
['Dante Alighieri', 'Petrarca', 'Boccaccio', 'Machiavelli'],
'Dante Alighieri',
),
Pergunta(
'Qual é o nome do processo de divisão celular que resulta em células filhas idênticas à célula mãe?',
['Mitose', 'Meiose', 'Fotossíntese', 'Replicação'],
'Mitose',
),
Pergunta(
'Qual é o elemento químico símbolo "Fe"?',
['Ferro', 'Flúor', 'Fósforo', 'Fermio'],
'Ferro',
),
Pergunta(
'Qual é o nome da famosa estátua grega que representa o deus dos mares?',
['Vênus de Milo', 'Estátua de Zeus em Olímpia', 'Hermes', 'Poseidon'],
'Poseidon',
),
Pergunta(
'Qual é o processo em que as plantas liberam oxigênio e absorvem dióxido de carbono?',
['Fotossíntese', 'Transpiração', 'Respiração', 'Fermentação'],
'Fotossíntese',
),
Pergunta(
'Qual é o nome da partícula subatômica sem carga elétrica?',
['Próton', 'Nêutron', 'Elétron', 'Quark'],
'Nêutron',
),
Pergunta(
'Qual é o nome do cientista que formulou as leis do movimento planetário e das leis do movimento?',
['Isaac Newton', 'Galileu Galilei', 'Nikola Tesla', 'Albert Einstein'],
'Isaac Newton',
),
Pergunta(
'Qual é o processo em que uma substância sólida passa diretamente para o estado gasoso, sem passar pelo estado líquido?',
['Sublimação', 'Evaporação', 'Condensação', 'Fusão'],
'Sublimação',
),
Pergunta(
'Qual é o nome da famosa obra de Jules Verne que descreve a viagem de um submarino?',
['Vinte Mil Léguas Submarinas', 'A Ilha Misteriosa', 'A Volta ao Mundo em 80 Dias', 'Viagem ao Centro da Terra'],
'Vinte Mil Léguas Submarinas',
),
Pergunta(
'Qual é o nome da famosa escultura que representa um homem nu segurando uma lança?',
['David', 'Vitória de Samotrácia', 'Cristo Redentor', 'A Última Ceia'],
'David',
),
Pergunta(
'Qual é o processo em que uma substância passa do estado líquido para o sólido?',
['Ebulição', 'Solidificação', 'Condensação', 'Sublimação'],
'Solidificação',
),


//======================Fase 3 
  ]),
  
  Fase([
 Pergunta(
        'Qual país sediou a primeira Copa do Mundo de Futebol em 1930?',
        ['Brasil', 'Uruguai', 'Itália', 'França'],
        'Uruguai'
    ),
    Pergunta(
        'Em que ano o Brasil sediou a Copa do Mundo de Futebol pela primeira vez?',
        ['1950', '1962', '1978', '1986'],
        '1950'
    ),
    Pergunta(
        'Qual seleção venceu a Copa do Mundo de Futebol de 2010, realizada na África do Sul?',
        ['Espanha', 'Alemanha', 'Argentina', 'Brasil'],
        'Espanha'
    ),
    Pergunta(
        'Qual jogador de futebol é conhecido como "O Rei do Futebol"?',
        ['Pelé', 'Diego Maradona', 'Cristiano Ronaldo', 'Lionel Messi'],
        'Pelé'
    ),
    Pergunta(
        'Qual país possui o maior número de títulos de Copa do Mundo?',
        ['Alemanha', 'Itália', 'Brasil', 'França'],
        'Brasil'
    ),
    Pergunta(
        'Em que ano o Brasil venceu a Copa do Mundo pela primeira vez?',
        ['1950', '1958', '1962', '1970'],
        '1958'
    ),
    Pergunta(
        'Qual jogador detém o recorde de mais gols marcados em Copas do Mundo?',
        ['Miroslav Klose', 'Pelé', 'Ronaldo', 'Gerd Müller'],
        'Miroslav Klose'
    ),
    Pergunta(
        'Qual país foi o vencedor da Copa do Mundo de 2014, realizada no Brasil?',
        ['Alemanha', 'Argentina', 'Brasil', 'Espanha'],
        'Alemanha'
    ),
    Pergunta(
        'Qual jogador é conhecido como "Fenômeno" e foi campeão mundial com o Brasil em 2002?',
        ['Ronaldo', 'Ronaldinho Gaúcho', 'Romário', 'Pelé'],
        'Ronaldo'
    ),
    Pergunta(
        'Em qual país foi realizada a Copa do Mundo de Futebol de 1994?',
        ['Brasil', 'Estados Unidos', 'França', 'Itália'],
        'Estados Unidos'
    ),
Pergunta(
'Qual é o maior mamífero marinho e também o maior animal que já existiu na Terra?',
['Baleia-azul', 'Orca', 'Tubarão-baleia', 'Baleia-jubarte'],
'Baleia-azul',
),
Pergunta(
'Qual é o nome da famosa obra de George Orwell que retrata uma sociedade totalitária?',
['1984', 'Admirável Mundo Novo', 'Laranja Mecânica', 'Fahrenheit 451'],
'1984',
),
Pergunta(
'Qual é o elemento químico símbolo "Hg"?',
['Hélio', 'Mercúrio', 'Hidrogênio', 'Ferro'],
'Mercúrio',
),
Pergunta(
'Qual é o nome do processo de conversão de energia solar em energia térmica?',
['Fotossíntese', 'Fototropismo', 'Fotocélula', 'Fotólise'],
'Fotocélula',
),
Pergunta(
'Qual é o nome da famosa pintura que retrata a última ceia de Jesus com seus discípulos?',
['A Última Ceia', 'O Grito', 'Mona Lisa', 'Guernica'],
'A Última Ceia',
),
Pergunta(
'Qual é o processo em que a luz é desviada ao passar de um meio para outro?',
['Refração', 'Reflexão', 'Difração', 'Polarização'],
'Refração',
),
Pergunta(
'Qual é o nome do instrumento que mede a intensidade de terremotos?',
['Anemômetro', 'Higrômetro', 'Barômetro', 'Sismógrafo'],
'Sismógrafo',
),
Pergunta(
'Qual é o nome do processo de obtenção de energia em uma célula sem uso de oxigênio?',
['Fotossíntese', 'Respiração', 'Fermentação', 'Digestão'],
'Fermentação',
),
Pergunta(
'Qual é o sobrenome do famoso pintor holandês que criou "A Noite Estrelada"?',
['Da Vinci', 'Rembrandt', 'Van Gogh', 'Vermeer'],
'Van Gogh',
),
Pergunta(
'Qual é o nome do processo de divisão celular que resulta em células filhas com metade do número de cromossomos?',
['Mitose', 'Meiose', 'Fotossíntese', 'Replicação'],
'Meiose',
),
Pergunta(
'Qual é o maior planeta do sistema solar?',
['Marte', 'Júpiter', 'Saturno', 'Urano'],
'Júpiter',
),
Pergunta(
'Qual é o nome da famosa pintura que retrata uma mulher com um sorriso enigmático?',
['A Última Ceia', 'O Grito', 'Mona Lisa', 'Guernica'],
'Mona Lisa',
),
  Pergunta(
        'Qual é o filme de maior bilheteria de todos os tempos?',
        ['Vingadores: Ultimato', 'Avatar', 'Titanic', 'Star Wars: O Despertar da Força'],
        'Vingadores: Ultimato'
    ),
    Pergunta(
        'Qual é o diretor famoso por criar filmes como "E.T. - O Extraterrestre" e "Jurassic Park"?',
        ['Steven Spielberg', 'Martin Scorsese', 'Quentin Tarantino', 'Christopher Nolan'],
        'Steven Spielberg'
    ),
    Pergunta(
        'Qual é o nome do ator que interpretou o personagem "Jack Dawson" no filme "Titanic"?',
        ['Tom Cruise', 'Brad Pitt', 'Leonardo DiCaprio', 'Johnny Depp'],
        'Leonardo DiCaprio'
    ),
    Pergunta(
        'Qual filme de 1999 popularizou a frase "Eu vejo gente morta"?',
        ['Sexto Sentido', 'O Iluminado', 'Psicose', 'O Chamado'],
        'Sexto Sentido'
    ),
    Pergunta(
        'Qual filme ganhou o Oscar de Melhor Animação em 1995, sendo o primeiro a receber esse prêmio?',
        ['Toy Story', 'A Bela e a Fera', 'O Rei Leão', 'Procurando Nemo'],
        'Toy Story'
    ),
    Pergunta(
        'Qual é o nome do filme de 1985 que apresenta um jovem viajando no tempo usando um DeLorean?',
        ['De Volta para o Futuro', 'Blade Runner', 'Matrix', 'O Exterminador do Futuro'],
        'De Volta para o Futuro'
    ),
    Pergunta(
        'Qual filme é conhecido por ter popularizado o termo "May the Force be with you"?',
        ['Star Wars: Uma Nova Esperança', 'Jornada nas Estrelas', 'Guardiões da Galáxia', 'Avatar'],
        'Star Wars: Uma Nova Esperança'
    ),
    Pergunta(
        'Qual é o nome do filme que apresenta a famosa cena de Marilyn Monroe com seu vestido branco voando acima de uma grade de metrô?',
        ['Quanto Mais Quente Melhor', 'Casablanca', 'Bonequinha de Luxo', 'O Pecado Mora ao Lado'],
        'O Pecado Mora ao Lado'
    ),
    Pergunta(
        'Qual filme dirigido por Alfred Hitchcock é conhecido por ter uma famosa cena de chuveiro?',
        ['Psicose', 'Os Pássaros', 'Um Corpo Que Cai', 'Janela Indiscreta'],
        'Psicose'
    ),
    Pergunta(
        'Qual é o nome da série de filmes de ação estrelada por Keanu Reeves, em que ele interpreta um assassino de aluguel?',
        ['Velozes e Furiosos', 'Duro de Matar', 'John Wick', 'Missão Impossível'],
        'John Wick'
    ),
Pergunta(
'Qual é o elemento químico com símbolo "O"?',
['Oxigênio', 'Ouro', 'Ósmio', 'Carbono'],
'Oxigênio',
),
Pergunta(
'Qual é o nome do processo de obtenção de energia em uma célula usando oxigênio?',
['Fotossíntese', 'Respiração', 'Fermentação', 'Digestão'],
'Respiração',
),
Pergunta(
'Qual é o processo em que uma substância passa do estado sólido para o líquido?',
['Ebulição', 'Solidificação', 'Condensação', 'Fusão'],
'Fusão',
),
Pergunta(
'Qual é o nome da famosa escultura que representa o deus grego do sol?',
['Apolo', 'Hércules', 'Zeus', 'Ares'],
'Apolo',
),
Pergunta(
'Qual é o planeta conhecido como "Planeta Vermelho"?',
['Terra', 'Vênus', 'Júpiter', 'Marte'],
'Marte',
),
Pergunta(
'Qual é o processo em que um corpo celeste passa entre a Terra e o Sol, bloqueando parcial ou totalmente a visão do Sol?',
['Eclipse lunar', 'Eclipse solar', 'Cometa', 'Meteorito'],
'Eclipse solar',
),
Pergunta(
'Qual é o nome da famosa ópera de Giuseppe Verdi que conta a história de uma cortesã parisiense?',
['Carmen', 'La Traviata', 'Don Giovanni', 'A Flauta Mágica'],
'La Traviata',
),
Pergunta(
'Qual é o nome da famosa estátua grega que representa o deus dos mares?',
['Vênus de Milo', 'Estátua de Zeus em Olímpia', 'Hermes', 'Poseidon'],
'Poseidon',
),
Pergunta(
'Qual é o elemento químico símbolo "Na"?',
['Nitrogênio', 'Nióbio', 'Sódio', 'Neônio'],
'Sódio',
),
Pergunta(
'Qual é o nome do processo de formação de gametas (células sexuais) que envolve redução do número de cromossomos?',
['Mitose', 'Meiose', 'Fotossíntese', 'Replicação'],
'Meiose',
),
Pergunta(
'Qual é o autor da famosa obra "A Metamorfose"?',
['Hermann Hesse', 'Franz Kafka', 'Leo Tolstoy', 'Fyodor Dostoevsky'],
'Franz Kafka',
),
Pergunta(
'Qual é o processo em que a luz é refletida por uma superfície lisa?',
['Refração', 'Reflexão', 'Difração', 'Polarização'],
'Reflexão',
),
Pergunta(
'Qual é o nome da famosa escultura que representa um homem nu em uma pose de lutador?',
['David', 'Vitória de Samotrácia', 'Cristo Redentor', 'A Última Ceia'],
'David',
),
Pergunta(
'Qual é o elemento químico com o símbolo "Ag"?',
['Prata', 'Ouro', 'Alumínio', 'Platina'],
'Prata',
),
Pergunta(
'Qual é o nome do processo de divisão celular que resulta em células filhas idênticas à célula mãe?',
['Mitose', 'Meiose', 'Fotossíntese', 'Replicação'],
'Mitose',
),
Pergunta(
'Qual é o nome da famosa pintura que retrata a cena de Adão e Deus estendendo as mãos um para o outro?',
['A Última Ceia', 'O Nascimento de Vênus', 'O Grito', 'A Criação de Adão'],
'A Criação de Adão',
),
Pergunta(
'Qual é o nome da famosa escultura que representa um homem com um braço estendido?',
['David', 'Vitória de Samotrácia', 'Cristo Redentor', 'A Última Ceia'],
'Vitória de Samotrácia',
),
Pergunta(
'Qual é o nome da famosa obra de Mark Twain que conta as aventuras de um garoto no Rio Mississippi?',
['As Aventuras de Huckleberry Finn', 'Moby Dick', 'Dom Quixote', 'O Apanhador no Campo de Centeio'],
'As Aventuras de Huckleberry Finn',
),
Pergunta(
'Qual é o nome do instrumento utilizado para medir a pressão atmosférica?',
['Termômetro', 'Barômetro', 'Anemômetro', 'Higrômetro'],
'Barômetro',
),
Pergunta(
'Qual é o processo em que as plantas convertem gás carbônico e água em glicose e oxigênio, usando energia solar?',
['Fotossíntese', 'Respiração', 'Fermentação', 'Transpiração'],
'Fotossíntese',
),
Pergunta(
'Qual é o nome da famosa pintura que retrata uma mulher segurando um colar de pérolas?',
['Mona Lisa', 'O Nascimento de Vênus', 'A Última Ceia', 'A Noite Estrelada'],
'Mona Lisa',
),
Pergunta(
'Qual é o processo que permite que as plantas absorvam água do solo?',
['Fotossíntese', 'Transpiração', 'Osmose', 'Capilaridade'],
'Osmose',
),
Pergunta(
'Qual é o nome da famosa escultura que representa o deus grego da guerra?',
['Apolo', 'Hércules', 'Zeus', 'Ares'],
'Ares',
),
Pergunta(
'Qual é o nome do processo de conversão de um gás em líquido, através do resfriamento?',
['Solidificação', 'Ebulição', 'Condensação', 'Evaporação'],
'Condensação',
),
Pergunta(
'Qual é o nome da famosa escultura que representa um homem nu em uma posição específica?',
['David', 'Vitória de Samotrácia', 'Cristo Redentor', 'A Última Ceia'],
'David',
),
Pergunta(
'Qual é o nome do processo de divisão celular que resulta em células filhas idênticas à célula mãe?',
['Mitose', 'Meiose', 'Fotossíntese', 'Replicação'],
'Mitose',
),
Pergunta(
'Qual é o nome do autor da famosa peça de teatro "Romeu e Julieta"?',
['William Shakespeare', 'George Orwell', 'Leo Tolstoy', 'Charles Dickens'],
'William Shakespeare',
),
Pergunta(
'Qual é o elemento químico com símbolo "He"?',
['Hélio', 'Hidrogênio', 'Carbono', 'Oxigênio'],
'Hélio',
),
Pergunta(
'Qual é o nome do processo em que a água passa do estado líquido para o gasoso?',
['Evaporação', 'Solidificação', 'Condensação', 'Fusão'],
'Evaporação',
),
Pergunta(
'Qual é o processo em que uma substância passa do estado gasoso para o líquido?',
['Evaporação', 'Solidificação', 'Condensação', 'Fusão'],
'Condensação',
),
Pergunta(
'Qual é o nome do famoso explorador que liderou a primeira expedição a circunavegar o globo?',
['Cristóvão Colombo', 'Fernão de Magalhães', 'Vasco da Gama', 'Amerigo Vespucci'],
'Fernão de Magalhães',
),
Pergunta(
'Qual é o nome da famosa ópera de Giacomo Puccini que conta a história de uma cortesã parisiense?',
['Carmen', 'La Bohème', 'Don Giovanni', 'A Flauta Mágica'],
'La Bohème',
),
Pergunta(
'Qual é o processo em que as plantas liberam oxigênio e absorvem dióxido de carbono?',
['Fotossíntese', 'Transpiração', 'Respiração', 'Fermentação'],
'Fotossíntese',
),
Pergunta(
'Qual é o nome do processo de conversão de energia luminosa em energia elétrica em células fotovoltaicas?',
['Fotossíntese', 'Respiração', 'Fermentação', 'Eletrofotografia'],
'Fotossíntese',
),
Pergunta(
'Qual é o maior deserto do mundo?',
['Deserto do Saara', 'Deserto de Atacama', 'Deserto da Arábia', 'Deserto de Gobi'],
'Deserto do Saara',
),
Pergunta(
'Qual é o processo em que a água passa do estado gasoso para o líquido?',
['Evaporação', 'Solidificação', 'Condensação', 'Fusão'],
'Condensação',
),
Pergunta(
'Qual é o nome da famosa obra de F. Scott Fitzgerald que retrata a alta sociedade na década de 1920?',
['Matar um Rouxinol', 'O Grande Gatsby', '1984', 'Dom Quixote'],
'O Grande Gatsby',
),
Pergunta(
'Qual é o nome do processo em que uma substância sólida passa diretamente para o estado gasoso, sem passar pelo estado líquido?',
['Sublimação', 'Evaporação', 'Condensação', 'Fusão'],
'Sublimação',
),
     Pergunta(
        'Qual é o maior deserto do mundo?',
        ['Deserto do Saara', 'Deserto do Atacama', 'Deserto da Arábia', 'Deserto da Antártida'],
        'Deserto do Saara'
    ),
    Pergunta(
        'Qual é o livro mais vendido de todos os tempos?',
        ['Dom Quixote', 'A Bíblia', 'O Pequeno Príncipe', 'Cinquenta Tons de Cinza'],
        'A Bíblia'
    ),
    Pergunta(
        'Qual é o metal líquido à temperatura ambiente?',
        ['Ouro', 'Prata', 'Mercúrio', 'Cobre'],
        'Mercúrio'
    ),
    Pergunta(
        'Qual é a montanha mais alta do mundo?',
        ['Monte Kilimanjaro', 'Monte Everest', 'Monte McKinley', 'Monte Fuji'],
        'Monte Everest'
    ),
    Pergunta(
        'Qual é o processo pelo qual as plantas produzem seu próprio alimento?',
        ['Fotossíntese', 'Respiração', 'Fermentação', 'Digestão'],
        'Fotossíntese'
    ),
    Pergunta(
        'Quantos continentes existem no mundo?',
        ['3', '5', '6', '7'],
        '7'
    ),
    Pergunta(
        'Qual é o rio mais longo do mundo?',
        ['Rio Amazonas', 'Rio Nilo', 'Rio Mississipi', 'Rio Yangtzé'],
        'Rio Nilo'
    ),
    Pergunta(
        'Qual é o composto químico com fórmula H2O?',
        ['Oxigênio', 'Dióxido de Carbono', 'Água', 'Hidrogênio'],
        'Água'
    ),
    Pergunta(
        'Qual é a maior estrutura de recifes de coral do mundo?',
        ['Grande Barreira de Coral', 'Recife de Belize', 'Recife de Tubbataha', 'Recife de Palau'],
        'Grande Barreira de Coral'
    ),
    Pergunta(
        'Em que ano o homem pisou na Lua pela primeira vez?',
        ['1969', '1972', '1961', '1970'],
        '1969'
    ),
  ]),
  //==========Fase 4

  Fase([
     Pergunta(
        'Qual é o elemento químico mais abundante no universo?',
        ['Hidrogênio', 'Oxigênio', 'Carbono', 'Nitrogênio'],
        'Hidrogênio'
    ),
    Pergunta(
        'Quem escreveu "Romeu e Julieta"?',
        ['William Shakespeare', 'Jane Austen', 'Charles Dickens', 'Mark Twain'],
        'William Shakespeare'
    ),
    Pergunta(
        'Qual é o metal conhecido como "metal líquido"?',
        ['Ferro', 'Alumínio', 'Mercúrio', 'Cobre'],
        'Mercúrio'
    ),
    Pergunta(
        'Em que ano a Segunda Guerra Mundial terminou?',
        ['1945', '1939', '1950', '1941'],
        '1945'
    ),
    Pergunta(
        'Qual é o maior órgão do corpo humano?',
        ['Coração', 'Cérebro', 'Pulmão', 'Pele'],
        'Pele'
    ),
    Pergunta(
        'Qual é a moeda oficial do Japão?',
        ['Dólar', 'Yen', 'Euro', 'Libra'],
        'Yen'
    ),
    Pergunta(
        'Qual é o processo pelo qual as plantas perdem água pela superfície das folhas?',
        ['Fotossíntese', 'Respiração', 'Transpiração', 'Circulação'],
        'Transpiração'
    ),
    Pergunta(
        'Qual é o maior satélite natural do planeta Terra?',
        ['Titã', 'Lua', 'Ganimedes', 'Tritão'],
        'Lua'
    ),
    Pergunta(
        'Quem é conhecido como o pai da eletricidade?',
        ['Isaac Newton', 'Nikola Tesla', 'Albert Einstein', 'Thomas Edison'],
        'Nikola Tesla'
    ),
    Pergunta(
        'Qual é a cidade conhecida como "Cidade Eterna"?',
        ['Paris', 'Atenas', 'Roma', 'Cairo'],
        'Roma'
    ),
     Pergunta(
        'Qual é o metal conhecido como "metal líquido"?',
        ['Ferro', 'Alumínio', 'Mercúrio', 'Cobre'],
        'Mercúrio'
    ),
    Pergunta(
        'Qual gás as plantas utilizam para fazer fotossíntese?',
        ['Oxigênio', 'Dióxido de carbono', 'Hidrogênio', 'Nitrogênio'],
        'Dióxido de carbono'
    ),
    Pergunta(
        'Qual é o elemento químico de símbolo "O" e número atômico 8?',
        ['Oxigênio', 'Hidrogênio', 'Carbono', 'Nitrogênio'],
        'Oxigênio'
    ),
    Pergunta(
        'Qual famoso físico desenvolveu a teoria da relatividade?',
        ['Isaac Newton', 'Albert Einstein', 'Niels Bohr', 'Galileu Galilei'],
        'Albert Einstein'
    ),
    Pergunta(
        'Qual é o maior órgão do corpo humano?',
        ['Coração', 'Cérebro', 'Fígado', 'Pele'],
        'Pele'
    ),
    Pergunta(
        'Qual é a capital da França?',
        ['Londres', 'Madri', 'Roma', 'Paris'],
        'Paris'
    ),
    Pergunta(
        'Qual é o segundo planeta do sistema solar?',
        ['Vênus', 'Marte', 'Júpiter', 'Saturno'],
        'Vênus'
    ),
    Pergunta(
        'Quem escreveu a peça "Romeu e Julieta"?',
        ['William Shakespeare', 'Charles Dickens', 'Jane Austen', 'Mark Twain'],
        'William Shakespeare'
    ),
    Pergunta(
        'Qual é o maior animal terrestre?',
        ['Elefante africano', 'Rinoceronte branco', 'Girafa', 'Hipopótamo'],
        'Elefante africano'
    ),
    Pergunta(
        'Quantos continentes existem?',
        ['4', '6', '7', '5'],
        '7'
    ),
    Pergunta(
        'Qual é o símbolo químico para o ouro?',
        ['Au', 'Ag', 'Cu', 'Fe'],
        'Au'
    ),
    Pergunta(
        'Em que ano a Primeira Guerra Mundial começou?',
        ['1914', '1939', '1901', '1918'],
        '1914'
    ),
    Pergunta(
        'Qual é o maior planeta do sistema solar?',
        ['Vênus', 'Marte', 'Júpiter', 'Saturno'],
        'Júpiter'
    ),
    Pergunta(
        'Qual é o processo pelo qual as plantas produzem seu próprio alimento?',
        ['Respiração', 'Fotossíntese', 'Digestão', 'Evaporação'],
        'Fotossíntese'
    ),
    Pergunta(
        'Qual é o continente mais populoso?',
        ['África', 'Europa', 'Ásia', 'América do Sul'],
        'Ásia'
    ),
    Pergunta(
        'Quem pintou a "Mona Lisa"?',
        ['Leonardo da Vinci', 'Pablo Picasso', 'Vincent van Gogh', 'Michelangelo'],
        'Leonardo da Vinci'
    ),
    Pergunta(
        'Qual é o maior osso do corpo humano?',
        ['Fêmur', 'Tíbia', 'Crânio', 'Costela'],
        'Fêmur'
    ),
    Pergunta(
        'Qual é o processo pelo qual a água se transforma em vapor?',
        ['Condensação', 'Evaporação', 'Solidificação', 'Fusão'],
        'Evaporação'
    ),
    Pergunta(
        'Qual é o único mamífero capaz de voar?',
        ['Morcego', 'Esquilo', 'Rato', 'Canguru'],
        'Morcego'
    ),
    Pergunta(
        'Qual é o maior oceano do mundo?',
        ['Oceano Atlântico', 'Oceano Índico', 'Oceano Antártico', 'Oceano Pacífico'],
        'Oceano Pacífico'
    ),
    Pergunta(
        'Em que ano a Revolução Americana começou?',
        ['1776', '1789', '1801', '1763'],
        '1776'
    ),
    Pergunta(
        'Qual é a capital do Japão?',
        ['Tóquio', 'Quioto', 'Osaka', 'Nagoya'],
        'Tóquio'
    ),
    Pergunta(
        'Qual é a camada externa da Terra chamada de "casca"?',
        ['Manto', 'Núcleo', 'Crosta', 'Núcleo interno'],
        'Crosta'
    ),
    Pergunta(
        'Qual é a maior glândula do corpo humano?',
        ['Glândula tireoide', 'Pâncreas', 'Glândula pituitária', 'Fígado'],
        'Fígado'
    ),
    Pergunta(
        'Qual é o nome da famosa estátua do antigo Egito com corpo de leão e cabeça humana?',
        ['Esfinge', 'Fênix', 'Minotauro', 'Hidra'],
        'Esfinge'
    ),
    Pergunta(
        'Quantos signos compõem o zodíaco?',
        ['10', '12', '8', '6'],
        '12'
    ),
    Pergunta(
        'Qual é a montanha mais alta do mundo?',
        ['Monte Kilimanjaro', 'Monte Everest', 'Monte McKinley', 'Monte Fuji'],
        'Monte Everest'
    ),
    Pergunta(
        'Qual é o maior rio do mundo em volume de água?',
        ['Rio Nilo', 'Rio Amazonas', 'Rio Yangtzé', 'Rio Mississipi'],
        'Rio Amazonas'
    ),
    Pergunta(
        'Qual é a moeda oficial do Brasil?',
        ['Dólar', 'Peso', 'Real', 'Euro'],
        'Real'
    ),
    Pergunta(
        'Quem escreveu a obra "Dom Quixote"?',
        ['Miguel de Cervantes', 'Gabriel García Márquez', 'Pablo Neruda', 'Jorge Luis Borges'],
        'Miguel de Cervantes'
    ),
    Pergunta(
        'Qual é o processo pelo qual as plantas liberam água na forma de vapor?',
        ['Transpiração', 'Evaporação', 'Condensação', 'Respiração'],
        'Transpiração'
    ),
    Pergunta(
        'Qual é o maior deserto do mundo?',
        ['Deserto de Gobi', 'Deserto do Saara', 'Deserto de Atacama', 'Deserto da Arábia'],
        'Deserto do Saara'
    ),
    Pergunta(
        'Qual é o maior órgão interno do corpo humano?',
        ['Coração', 'Fígado', 'Cérebro', 'Estômago'],
        'Fígado'
    ),
    Pergunta(
        'Qual é o metal mais abundante na crosta terrestre?',
        ['Ferro', 'Alumínio', 'Cobre', 'Zinco'],
        'Alumínio'
    ),
    Pergunta(
        'Qual é o país com a maior área territorial do mundo?',
        ['Estados Unidos', 'Canadá', 'China', 'Rússia'],
        'Rússia'
    ),
    Pergunta(
        'Qual é a capital da Austrália?',
        ['Melbourne', 'Sidney', 'Brisbane', 'Camberra'],
        'Camberra'
    ),
    Pergunta(
        'Qual é o maior satélite natural da Terra?',
        ['Lua', 'Marte', 'Vênus', 'Júpiter'],
        'Lua'
    ),
    Pergunta(
        'Qual é o maior continente em área territorial?',
        ['África', 'América do Norte', 'Ásia', 'Europa'],
        'Ásia'
    ),
    Pergunta(
        'Qual é o número atômico do hidrogênio?',
        ['1', '2', '3', '4'],
        '1'
    ),
    Pergunta(
        'Qual é o maior mamífero marinho?',
        ['Baleia azul', 'Orca', 'Golfinho', 'Tubarão-baleia'],
        'Baleia azul'
    ),
    Pergunta(
        'Qual é a capital da Rússia?',
        ['São Petersburgo', 'Moscou', 'Kiev', 'Minsk'],
        'Moscou'
    ),
    Pergunta(
        'Qual é o processo pelo qual as plantas absorvem água pelas raízes?',
        ['Evaporação', 'Transpiração', 'Fotossíntese', 'Absorção'],
        'Absorção'
    ),
    Pergunta(
        'Qual é o maior animal marinho?',
        ['Tubarão-branco', 'Baleia-azul', 'Polvo-gigante', 'Leão-marinho'],
        'Baleia-azul'
    ),
    Pergunta(
        'Quem pintou a famosa obra "A Noite Estrelada"?',
        ['Pablo Picasso', 'Vincent van Gogh', 'Salvador Dalí', 'Leonardo da Vinci'],
        'Vincent van Gogh'
    ),
    Pergunta(
        'Qual é o maior deserto de gelo do mundo?',
        ['Antártida', 'Groenlândia', 'Sibéria', 'Alasca'],
        'Antártida'
    ),
    Pergunta(
        'Qual é o maior felino do mundo?',
        ['Leão', 'Tigre', 'Onça-pintada', 'Leopardo'],
        'Tigre'
    ),
    Pergunta(
        'Qual é o número atômico do oxigênio?',
        ['6', '7', '8', '9'],
        '8'
    ),
    Pergunta(
        'Qual é o metal que é líquido em temperatura ambiente?',
        ['Ferro', 'Alumínio', 'Mercúrio', 'Cobre'],
        'Mercúrio'
    ),
    Pergunta(
        'Qual é o planeta conhecido como "Planeta Vermelho"?',
        ['Vênus', 'Marte', 'Júpiter', 'Urano'],
        'Marte'
    ),
    Pergunta(
        'Qual é o elemento químico de símbolo "Fe"?',
        ['Ferro', 'Fósforo', 'Flúor', 'Frâncio'],
        'Ferro'
    ),
    Pergunta(
        'Qual é a montanha mais alta fora da Ásia?',
        ['Monte Kilimanjaro', 'Monte McKinley', 'Monte Aconcágua', 'Monte Elbrus'],
        'Monte McKinley'
    ),
    Pergunta(
        'Qual é o processo pelo qual o gelo se transforma em água líquida?',
        ['Sublimação', 'Fusão', 'Solidificação', 'Evaporação'],
        'Fusão'
    ),
    Pergunta(
        'Qual é o maior lago de água doce do mundo?',
        ['Lago Vitória', 'Lago Baikal', 'Lago Superior', 'Lago Titicaca'],
        'Lago Baikal'
    ),
    Pergunta(
        'Qual é o nome do osso localizado no peito?',
        ['Fêmur', 'Costela', 'Úmero', 'Esterno'],
        'Esterno'
    ),
    Pergunta(
        'Qual é a capital do Canadá?',
        ['Toronto', 'Vancouver', 'Montreal', 'Ottawa'],
        'Ottawa'
    ),
    Pergunta(
        'Qual é o maior rio da América do Sul?',
        ['Rio Amazonas', 'Rio Paraná', 'Rio Nilo', 'Rio Yangtzé'],
        'Rio Amazonas'
    ),
    Pergunta(
        'Qual é o símbolo químico para o carbono?',
        ['Ca', 'C', 'Co', 'Cu'],
        'C'
    ),
  ]),
  //===============Fase 5
  
Fase([
      Pergunta(
        'Qual é a substância usada para medir o pH?',
        ['Ácido clorídrico', 'Água destilada', 'Sódio', 'Indicador de pH'],
        'Indicador de pH'
    ),
    Pergunta(
        'Qual é o maior planeta do Sistema Solar?',
        ['Vênus', 'Marte', 'Júpiter', 'Saturno'],
        'Júpiter'
    ),
    Pergunta(
        'Em que ano a Declaração de Independência dos Estados Unidos foi adotada?',
        ['1776', '1789', '1801', '1765'],
        '1776'
    ),
    Pergunta(
        'Qual é a menor partícula fundamental da matéria?',
        ['Molécula', 'Átomo', 'Próton', 'Neutrino'],
        'Átomo'
    ),
    Pergunta(
        'Qual é o maior animal terrestre?',
        ['Elefante Africano', 'Girafa', 'Rinoceronte', 'Hipopótamo'],
        'Elefante Africano'
    ),
    Pergunta(
        'Quem foi o primeiro presidente do Brasil?',
        ['Dom Pedro II', 'Getúlio Vargas', 'José Sarney', 'Dom Pedro I'],
        'Dom Pedro I'
    ),
    Pergunta(
        'Qual é o processo pelo qual as plantas convertem luz solar em energia?',
        ['Fotossíntese', 'Respiração', 'Digestão', 'Mitose'],
        'Fotossíntese'
    ),
    Pergunta(
        'Quantos elementos químicos são encontrados na natureza na forma de gás?',
        ['2', '3', '4', '5'],
        '2'
    ),
    Pergunta(
        'Qual é a doença conhecida como "Febre Amarela"?',
        ['Malária', 'Dengue', 'Cólera', 'Hepatite'],
        'Dengue'
    ),
    Pergunta(
        'Qual é a famosa equação que relaciona energia e massa?',
        ['Lei de Ohm', 'Equação de Schrödinger', 'Equação de Einstein', 'Lei de Faraday'],
        'Equação de Einstein'
    ),
      Pergunta(
        'Qual é o processo natural pelo qual os seres vivos evoluem?',
        ['Fotossíntese', 'Decomposição', 'Reprodução', 'Seleção Natural'],
        'Seleção Natural'
    ),
    Pergunta(
        'Qual é a capital do Japão?',
        ['Pequim', 'Seul', 'Tóquio', 'Bangkok'],
        'Tóquio'
    ),
    Pergunta(
        'Quem escreveu a peça "Romeu e Julieta"?',
        ['William Shakespeare', 'Charles Dickens', 'Jane Austen', 'Mark Twain'],
        'William Shakespeare'
    ),
     Pergunta(
        'Qual é o planeta mais próximo do Sol?',
        ['Vênus', 'Marte', 'Mercúrio', 'Júpiter'],
        'Mercúrio'
    ),
    Pergunta(
        'Qual é o processo pelo qual os seres vivos obtêm energia dos alimentos?',
        ['Fotossíntese', 'Respiração', 'Digestão', 'Transpiração'],
        'Respiração'
    ),
    Pergunta(
        'Qual é a moeda oficial do Japão?',
        ['Yen', 'Dólar', 'Euro', 'Won'],
        'Yen'
    ),
    Pergunta(
        'Qual é o país com a maior população do mundo?',
        ['Estados Unidos', 'China', 'Índia', 'Brasil'],
        'China'
    ),
    Pergunta(
        'Quem é conhecido como o "pai da psicanálise"?',
        ['Carl Jung', 'Sigmund Freud', 'Albert Bandura', 'Ivan Pavlov'],
        'Sigmund Freud'
    ),
    Pergunta(
        'Qual é a capital dos Estados Unidos?',
        ['Los Angeles', 'Nova Iorque', 'Chicago', 'Washington, D.C.'],
        'Washington, D.C.'
    ),
    Pergunta(
        'Qual é o processo pelo qual as plantas convertem a luz solar em energia?',
        ['Respiração', 'Fotossíntese', 'Digestão', 'Transpiração'],
        'Fotossíntese'
    ),
    Pergunta(
        'Quem escreveu "Cem Anos de Solidão"?',
        ['Mario Vargas Llosa', 'Isabel Allende', 'Gabriel García Márquez', 'Jorge Luis Borges'],
        'Gabriel García Márquez'
    ),
    Pergunta(
        'Qual é o maior órgão do sistema respiratório?',
        ['Pulmão', 'Brônquio', 'Laringe', 'Traqueia'],
        'Pulmão'
    ),
    Pergunta(
        'Qual é o maior mamífero terrestre?',
        ['Elefante africano', 'Rinoceronte branco', 'Girafa', 'Hipopótamo'],
        'Elefante africano'
    ),
    Pergunta(
        'Qual é o processo pelo qual um organismo produz descendentes sem reprodução sexual?',
        ['Reprodução assexuada', 'Reprodução sexuada', 'Fecundação', 'Mitose'],
        'Reprodução assexuada'
    ),
    Pergunta(
        'Qual é o símbolo químico para o enxofre?',
        ['S', 'Se', 'E', 'En'],
        'S'
    ),
    Pergunta(
        'Qual é o maior osso do corpo humano?',
        ['Fêmur', 'Tíbia', 'Crânio', 'Costela'],
        'Fêmur'
    ),
    Pergunta(
        'Qual é o maior deserto do mundo?',
        ['Deserto de Gobi', 'Deserto do Saara', 'Deserto de Atacama', 'Deserto da Arábia'],
        'Deserto do Saara'
    ),
    Pergunta(
        'Quem foi o cientista que formulou as leis do movimento e a lei da gravitação universal?',
        ['Isaac Newton', 'Albert Einstein', 'Galileu Galilei', 'Niels Bohr'],
        'Isaac Newton'
    ),
    Pergunta(
        'Qual é o nome do processo de transformação de um líquido em gás?',
        ['Condensação', 'Sublimação', 'Solidificação', 'Evaporação'],
        'Evaporação'
    ),
    Pergunta(
        'Qual é o maior órgão interno do corpo humano?',
        ['Coração', 'Fígado', 'Cérebro', 'Estômago'],
        'Fígado'
    ),
    Pergunta(
        'Qual é o processo de decomposição de materiais orgânicos por bactérias?',
        ['Digestão', 'Fermentação', 'Fotossíntese', 'Putrefação'],
        'Putrefação'
    ),
    Pergunta(
        'Qual é o nome da primeira mulher a ganhar dois Prêmios Nobel em diferentes áreas?',
        ['Marie Curie', 'Rosalind Franklin', 'Ada Lovelace', 'Dorothy Hodgkin'],
        'Marie Curie'
    ),
    Pergunta(
        'Qual é o maior oceano do mundo?',
        ['Oceano Atlântico', 'Oceano Índico', 'Oceano Antártico', 'Oceano Pacífico'],
        'Oceano Pacífico'
    ),
    Pergunta(
        'Qual é o maior músculo do corpo humano?',
        ['Bíceps', 'Quadríceps', 'Glúteo', 'Músculo dorsal largo'],
        'Músculo dorsal largo'
    ),
    Pergunta(
        'Qual é o processo de quebra da luz em diferentes cores?',
        ['Refração', 'Reflexão', 'Difração', 'Interferência'],
        'Difração'
    ),
    Pergunta(
        'Qual é o processo pelo qual a água retorna à superfície na forma líquida?',
        ['Condensação', 'Evaporação', 'Sublimação', 'Precipitação'],
        'Precipitação'
    ),
    Pergunta(
        'Qual é a capital da Argentina?',
        ['Buenos Aires', 'Montevidéu', 'Caracas', 'Santiago'],
        'Buenos Aires'
    ),
    Pergunta(
        'Qual é o maior lago de água doce da América do Sul?',
        ['Lago Titicaca', 'Lago Maracaibo', 'Lago Baikal', 'Lago Vitória'],
        'Lago Titicaca'
    ),
    Pergunta(
        'Qual é o maior planeta do sistema solar?',
        ['Vênus', 'Marte', 'Júpiter', 'Saturno'],
        'Júpiter'
    ),
    Pergunta(
        'Qual é o processo pelo qual as plantas liberam água na forma de vapor?',
        ['Transpiração', 'Evaporação', 'Condensação', 'Respiração'],
        'Transpiração'
    ),
    Pergunta(
        'Qual é o menor osso do corpo humano?',
        ['Martelo (martelo)', 'Estribo', 'Tímpano', 'Falange (dedo)'],
        'Estribo'
    ),
    Pergunta(
        'Quem é conhecido como "o bardo de Avon"?',
        ['Charles Dickens', 'William Wordsworth', 'William Shakespeare', 'Samuel Taylor Coleridge'],
        'William Shakespeare'
    ),
    Pergunta(
        'Qual é o processo de formação de novas células?',
        ['Mitose', 'Meiose', 'Fotossíntese', 'Divisão celular'],
        'Mitose'
    ),
    Pergunta(
        'Qual é o maior planeta do sistema solar?',
        ['Vênus', 'Marte', 'Júpiter', 'Saturno'],
        'Júpiter'
    ),
    Pergunta(
        'Quem é a autora do livro "O Diário de Anne Frank"?',
        ['Jane Austen', 'J.K. Rowling', 'Anne Frank', 'Margaret Atwood'],
        'Anne Frank'
    ),
    Pergunta(
        'Qual é o processo de transformação direta do gelo em vapor?',
        ['Sublimação', 'Fusão', 'Condensação', 'Solidificação'],
        'Sublimação'
    ),
    Pergunta(
        'Qual é o maior animal voador conhecido?',
        ['Condor-dos-andes', 'Pterossauro', 'Águia-real', 'Albatroz'],
        'Pterossauro'
    ),
    Pergunta(
        'Qual é o processo de queima de um combustível na presença de oxigênio?',
        ['Sublimação', 'Evaporação', 'Combustão', 'Condensação'],
        'Combustão'
    ),
    Pergunta(
        'Qual é o metal que é usado para fazer lâmpadas incandescentes?',
        ['Alumínio', 'Tungstênio', 'Cobre', 'Zinco'],
        'Tungstênio'
    ),
    Pergunta(
        'Qual é o nome da famosa pintura de Leonardo da Vinci que retrata uma mulher com um sorriso enigmático?',
        ['A Última Ceia', 'Mona Lisa', 'Guernica', 'O Grito'],
        'Mona Lisa'
    ),
    Pergunta(
        'Qual é o único planeta do sistema solar que gira de leste para oeste?',
        ['Terra', 'Marte', 'Júpiter', 'Vênus'],
        'Vênus'
    ),
    Pergunta(
        'Qual é o maior deserto de gelo do mundo?',
        ['Antártida', 'Groenlândia', 'Sibéria', 'Alasca'],
        'Antártida'
    ),
    Pergunta(
        'Qual é o processo pelo qual os seres vivos obtêm energia dos alimentos?',
        ['Fotossíntese', 'Respiração', 'Digestão', 'Transpiração'],
        'Respiração'
    ),
    Pergunta(
        'Qual é a capital da Nova Zelândia?',
        ['Sydney', 'Auckland', 'Wellington', 'Melbourne'],
        'Wellington'
    ),
    Pergunta(
        'Qual é o processo de conversão de um sólido diretamente para um gás?',
        ['Sublimação', 'Evaporação', 'Condensação', 'Solidificação'],
        'Sublimação'
    ),
    Pergunta(
        'Qual é o maior felino do mundo?',
        ['Leão', 'Tigre', 'Onça-pintada', 'Leopardo'],
        'Tigre'
    ),
    Pergunta(
        'Qual é o processo de transformação da água líquida em gelo?',
        ['Condensação', 'Fusão', 'Sublimação', 'Solidificação'],
        'Solidificação'
    ),
    Pergunta(
        'Quem é o autor de "1984"?',
        ['Aldous Huxley', 'George Orwell', 'Ray Bradbury', 'J.K. Rowling'],
        'George Orwell'
    ),

Pergunta(
'Qual é o processo que permite que as plantas convertam energia luminosa em energia química?',
['Fotossíntese', 'Transpiração', 'Respiração', 'Fermentação'],
'Fotossíntese',
),
Pergunta(
'Qual é o autor da obra "O Guarani", considerado um dos principais romances indianistas da literatura brasileira?',
['José de Alencar', 'Machado de Assis', 'Lima Barreto', 'Euclides da Cunha'],
'José de Alencar',
),
Pergunta(
'Qual é o nome do processo de conversão de um sólido diretamente para o estado gasoso, sem passar pelo estado líquido?',
['Sublimação', 'Evaporação', 'Condensação', 'Fusão'],
'Sublimação',
),
Pergunta(
'Qual é o maior osso do corpo humano?',
['Fêmur', 'Tíbia', 'Fíbula', 'Úmero'],
'Fêmur',
),
Pergunta(
'Qual é o nome da famosa ópera de Wolfgang Amadeus Mozart que conta as aventuras de um libertino?',
['Carmen', 'La Traviata', 'Don Giovanni', 'A Flauta Mágica'],
'Don Giovanni',
),
Pergunta(
'Qual é o nome da famosa pintura de Diego Velázquez que retrata a família real espanhola?',
['A Noite Estrelada', 'As Meninas', 'O Nascimento de Vênus', 'Guernica'],
'As Meninas',
),
Pergunta(
'Qual é o nome do filósofo alemão que desenvolveu a teoria do "super-homem" e a crítica à moral tradicional?',
['Karl Marx', 'Immanuel Kant', 'Friedrich Engels', 'Friedrich Nietzsche'],
'Friedrich Nietzsche',
),
Pergunta(
'Qual é o processo que ocorre quando um corpo muda sua velocidade ou direção de movimento devido a uma força?',
['Inércia', 'Aceleração', 'Velocidade', 'Impulso'],
'Aceleração',
),
Pergunta(
'Qual é o nome do cientista que formulou as leis do movimento planetário e as leis do movimento?',
['Isaac Newton', 'Galileu Galilei', 'Nikola Tesla', 'Albert Einstein'],
'Isaac Newton',
),
Pergunta(
'Qual é o processo que ocorre quando uma célula se divide em duas células filhas idênticas?',
['Mitose', 'Meiose', 'Fotossíntese', 'Replicação'],
'Mitose',
),
Pergunta(
'Qual é o nome do autor brasileiro que escreveu "Memórias Póstumas de Brás Cubas"?',
['Machado de Assis', 'José de Alencar', 'Clarice Lispector', 'Graciliano Ramos'],
'Machado de Assis',
),
Pergunta(
'Qual é o nome do processo em que um corpo mergulhado em um fluido recebe uma força de baixo para cima?',
['Flutuação', 'Atrito', 'Gravidade', 'Empuxo'],
'Empuxo',
),
Pergunta(
'Qual é o nome do cientista italiano que desenvolveu o método científico e aperfeiçoou o telescópio?',
['Isaac Newton', 'Galileu Galilei', 'Albert Einstein', 'Nikola Tesla'],
'Galileu Galilei',
),
Pergunta(
'Qual é o nome do processo em que uma substância passa diretamente do estado gasoso para o sólido?',
['Sublimação', 'Condensação', 'Evaporação', 'Solidificação'],
'Depende de a temperatura e a pressão',
),
Pergunta(
'Qual é o nome do compositor alemão que compôs a famosa "Nona Sinfonia"?',
['Wolfgang Amadeus Mozart', 'Johann Sebastian Bach', 'Ludwig van Beethoven', 'Richard Wagner'],
'Ludwig van Beethoven',
),
Pergunta(
'Qual é o nome do tratado que estabeleceu as bases do sistema internacional após a Primeira Guerra Mundial?',
['Tratado de Versalhes', 'Tratado de Tordesilhas', 'Tratado de Lisboa', 'Tratado de Kyoto'],
'Tratado de Versalhes',
),
Pergunta(
'Qual é o nome do processo que transforma o alimento em nutrientes que podem ser absorvidos pelo corpo?',
['Digestão', 'Circulação', 'Respiração', 'Excreção'],
'Digestão',
),
Pergunta(
'Qual é o autor da obra "Dom Casmurro", que faz parte da trilogia realista do autor?',
['Joaquim Nabuco', 'José de Alencar', 'Machado de Assis', 'Euclides da Cunha'],
'Machado de Assis',
),
Pergunta(
'Qual é o processo em que a energia térmica é transferida de uma região de maior temperatura para uma de menor temperatura?',
['Condução', 'Convecção', 'Radiação', 'Evaporação'],
'Condução',
),
Pergunta(
'Qual é o nome do evento que marcou o colapso da bolsa de valores de Nova Iorque em 1929?',
['Crise do Subprime', 'Revolução Industrial', 'Segunda Guerra Mundial', 'Crash da Bolsa de 1929'],
'Crash da Bolsa de 1929',
),
Pergunta(
'Qual é o processo de obtenção de energia em uma célula usando oxigênio?',
['Fotossíntese', 'Respiração', 'Fermentação', 'Digestão'],
'Respiração',
),
Pergunta(
'Qual é o autor da obra "O Cortiço", que retrata a vida em um cortiço no Rio de Janeiro do século XIX?',
['Joaquim Nabuco', 'José de Alencar', 'Machado de Assis', 'Aluísio Azevedo'],
'Aluísio Azevedo',
),
Pergunta(
'Qual é o processo em que a luz sofre desvio ao passar de um meio para outro, mudando de velocidade?',
['Refração', 'Reflexão', 'Difração', 'Polarização'],
'Refração',
),
Pergunta(
'Qual é o nome do compositor alemão conhecido por suas óperas, como "A Flauta Mágica"?',
['Wolfgang Amadeus Mozart', 'Johann Sebastian Bach', 'Ludwig van Beethoven', 'Richard Wagner'],
'Wolfgang Amadeus Mozart',
),
Pergunta(
'Qual é o processo que consiste na movimentação das placas tectônicas da crosta terrestre?',
['Transpiração', 'Fermentação', 'Fotossíntese', 'Tectônica de Placas'],
'Tectônica de Placas',
),
Pergunta(
'Qual é o nome do pintor renascentista italiano que criou obras como "A Última Ceia" e "Mona Lisa"?',
['Michelangelo', 'Leonardo da Vinci', 'Rafael', 'Donatello'],
'Leonardo da Vinci',
),
Pergunta(
'Qual é o nome da teoria que postula que todas as formas de vida evoluíram de um ancestral comum?',
['Teoria do Criacionismo', 'Teoria da Evolução', 'Teoria do Big Bang', 'Teoria da Relatividade'],
'Teoria da Evolução',
),
Pergunta(
'Qual é o nome do processo em que uma substância passa diretamente do estado sólido para o gasoso?',
['Sublimação', 'Evaporação', 'Condensação', 'Fusão'],
'Sublimação',
),
Pergunta(
'Qual é o autor da obra "Memórias de um Sargento de Milícias", que retrata a vida no Rio de Janeiro do século XIX?',
['Joaquim Nabuco', 'José de Alencar', 'Manuel Antônio de Almeida', 'Aluísio Azevedo'],
'Manuel Antônio de Almeida',
),
Pergunta(
'Qual é o nome do filósofo grego conhecido como o "Pai da Filosofia"?',
['Sócrates', 'Platão', 'Aristóteles', 'Heráclito'],
'Sócrates',
),
Pergunta(
'Qual é o nome da lei que estabeleceu a abolição da escravatura no Brasil em 1888?',
['Lei Áurea', 'Lei dos Sexagenários', 'Lei do Ventre Livre', 'Lei do Ventre Livre'],
'Lei Áurea',
),
Pergunta(
'Qual é o nome da pintura que retrata o deus grego do sono?',
['Vênus de Milo', 'O Nascimento de Vênus', 'A Noite Estrelada', 'Hipnos'],
'Hipnos',
),
Pergunta(
'Qual é o processo em que a água passa do estado líquido para o gasoso?',
['Evaporação', 'Solidificação', 'Condensação', 'Fusão'],
'Evaporação',
),
Pergunta(
'Qual é o autor da obra "Iracema", que faz parte da trilogia indianista do autor?',
['Joaquim Nabuco', 'José de Alencar', 'Machado de Assis', 'Euclides da Cunha'],
'José de Alencar',
),
Pergunta(
'Qual é o nome do processo que ocorre quando um corpo muda sua velocidade ou direção de movimento devido à ação de uma força?',
['Inércia', 'Aceleração', 'Velocidade', 'Impulso'],
'Aceleração',
),
Pergunta(
'Qual é o nome do filósofo francês conhecido por suas ideias sobre a separação dos poderes do Estado?',
['Karl Marx', 'Immanuel Kant', 'Friedrich Engels', 'Montesquieu'],
'Montesquieu',
),
Pergunta(
'Qual é o nome do instrumento utilizado para medir a intensidade de terremotos?',
['Anemômetro', 'Higrômetro', 'Barômetro', 'Sismógrafo'],
'Sismógrafo',
),
Pergunta(
'Qual é o nome do processo de obtenção de energia em uma célula sem o uso de oxigênio?',
['Fotossíntese', 'Respiração', 'Fermentação', 'Digestão'],
'Fermentação',
),
Pergunta(
'Qual é o nome do filósofo alemão conhecido por suas ideias sobre o comunismo e a luta de classes?',
['Karl Marx', 'Immanuel Kant', 'Friedrich Engels', 'Friedrich Nietzsche'],
'Karl Marx',
),
Pergunta(
'Qual é o processo em que a energia térmica é transferida por meio do movimento das moléculas em um material?',
['Condução', 'Convecção', 'Radiação', 'Evaporação'],
'Condução',
),
Pergunta(
'Qual é o nome da famosa ópera de Giuseppe Verdi que conta a história de uma cortesã parisiense?',
['Carmen', 'La Traviata', 'Don Giovanni', 'A Flauta Mágica'],
'La Traviata',
),
Pergunta(
'Qual é o nome da famosa obra de George Orwell que retrata uma sociedade totalitária?',
['1984', 'Admirável Mundo Novo', 'Laranja Mecânica', 'Fahrenheit 451'],
'1984',
),
Pergunta(
'Qual é o nome do processo em que um corpo submerso em um fluido sofre uma força de baixo para cima?',
['Flutuação', 'Atrito', 'Gravidade', 'Empuxo'],
'Empuxo',
),
Pergunta(
'Qual é o nome do processo de obtenção de energia em uma célula usando oxigênio?',
['Fotossíntese', 'Respiração', 'Fermentação', 'Digestão'],
'Respiração',
),
Pergunta(
'Qual é o autor da obra "Dom Casmurro", que faz parte da trilogia realista do autor?',
['Joaquim Nabuco', 'José de Alencar', 'Machado de Assis', 'Euclides da Cunha'],
'Machado de Assis',
),
Pergunta(
'Qual é o nome do processo em que a água passa do estado líquido para o gasoso?',
['Evaporação', 'Solidificação', 'Condensação', 'Fusão'],
'Evaporação',
),
Pergunta(
'Qual é o nome da obra de Gabriel García Márquez que narra a história da família Buendía em Macondo?',
['Cem Anos de Solidão', 'O Amor nos Tempos do Cólera', 'Crônica de uma Morte Anunciada', 'O Outono do Patriarca'],
'Cem Anos de Solidão',
),
Pergunta(
'Qual é o nome da teoria que postula que todas as formas de vida evoluíram de um ancestral comum?',
['Teoria do Criacionismo', 'Teoria da Evolução', 'Teoria do Big Bang', 'Teoria da Relatividade'],
'Teoria da Evolução',
),
Pergunta(
'Qual é o nome do cientista italiano que formulou as leis do movimento planetário e as leis do movimento?',
['Isaac Newton', 'Galileu Galilei', 'Nikola Tesla', 'Albert Einstein'],
'Isaac Newton',
),
Pergunta(
'Qual é o nome do autor brasileiro que escreveu "Memórias Póstumas de Brás Cubas"?',
['Machado de Assis', 'José de Alencar', 'Clarice Lispector', 'Graciliano Ramos'],
'Machado de Assis',
),
])
  // Continue adicionando mais fases e perguntas
];
