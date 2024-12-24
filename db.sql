CREATE DATABASE chimatch;

CREATE TABLE nationaliters(
    id_nationaliter int PRIMARY KEY AUTO_INCREMENT,
    nom varchar(50),
    continent varchar(50),
);
CREATE TABLE clubs(
    id_club int PRIMARY KEY AUTO_INCREMENT,
    nom varchar(50),
    logo varchar(255),
    data_create DATE,
);
CREATE TABLE players(
    id_player int PRIMARY KEY AUTO_INCREMENT,
    nom varchar(50),
    logo varchar(50),
    img varchar(255),
    position varchar(3),

    rating     int CHECK(rating >=1 and rating<100),
    shoting    int CHECK(shoting >=1 and shoting<100),
    passing    int CHECK(passing >=1 and passing<100),
    dribling   int CHECK(dribling >=1 and dribling<100),
    defending  int CHECK(defending >=1 and defending<100),
    physical   int CHECK(physical >=1 and physical<100),
    diving     int CHECK(diving >=1 and diving<100),
    handling   int CHECK(handling >=1 and handling<100),
    locking    int CHECK(locking >=1 and locking<100),
    reflection int CHECK(reflection >=1 andreflection<100),
    speed      int CHECK(speed >=1 and speed<100),
    positionel int CHECK(positionel >=1 and positionel<100),

    id_club int FOREIGN KEY REFERENCES club(id_club),
    id_nationaliter int FOREIGN KEY REFERENCES nationaliters(id_nationaliter)

);

