DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS homes;
DROP TABLE IF EXISTS users_homes;

CREATE TABLE users (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  email TEXT NOT NULL UNIQUE,
  updated_at TEXT,
  created_at TEXT DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE homes (
  id INTEGER PRIMARY KEY,
  address TEXT NOT NULL, 
  price_per_night NOT NULL,
  updated_at TEXT,
  created_at TEXT DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE users_homes (
  id INTEGER PRIMARY KEY,
  home_id INTEGER,
  user_id INTEGER,
  role TEXT,
  start TEXT,
  end TEXT,
  updated_at TEXT,
  created_at TEXT DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users (name, email) VALUES ("John", "john@doe.com");
INSERT INTO users (name, email) VALUES ("Jane", "jane@doe.com");
INSERT INTO users (name, email) VALUES ("Bob", "bob@doe.com");

INSERT INTO homes (address, price_per_night) VALUES ("123 Main St", 60);
INSERT INTO homes (address, price_per_night) VALUES ("234 South St", 40);
INSERT INTO homes (address, price_per_night) VALUES ("345 North St", 50);

INSERT INTO users_homes (home_id, user_id, role, start, end)
      VALUES (1,1, "OWNER", "2020-10-01 00:00:00", "9999-10-01 00:00:00");
INSERT INTO users_homes (home_id, user_id, role, start, end)
      VALUES (2,2, "OWNER", "2020-10-01 00:00:00", "9999-10-01 00:00:00");
INSERT INTO users_homes (home_id, user_id, role, start, end)
      VALUES (3,1, "OWNER", "2020-10-01 00:00:00", "9999-10-01 00:00:00");
      
INSERT INTO users_homes (home_id, user_id, role, start, end)
      VALUES (2,1, "VISITOR", "2020-10-05 13:00:00", "2020-10-07 13:00:00");
INSERT INTO users_homes (home_id, user_id, role, start, end)
      VALUES (3,1, "VISITOR", "2020-10-07 13:00:00", "2020-10-09 13:00:00");
INSERT INTO users_homes (home_id, user_id, role, start, end)
      VALUES (3,3, "VISITOR", "2020-10-02 13:00:00", "2020-10-05 13:00:00");
