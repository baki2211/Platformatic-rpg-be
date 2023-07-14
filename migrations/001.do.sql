CREATE DATABASE rpg_game;

USE rpg_game;

CREATE TABLE players (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    level INT NOT NULL,
    health INT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE items (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    type VARCHAR(255) NOT NULL,
    power INT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE player_items (
    player_id INT NOT NULL,
    item_id INT NOT NULL,
    FOREIGN KEY (player_id) REFERENCES players(id),
    FOREIGN KEY (item_id) REFERENCES items(id)
);