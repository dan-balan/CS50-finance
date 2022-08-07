-- Initalize the database
-- Drop any existing data and create empty tables.

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS trades;


CREATE TABLE users (id INTEGER, username TEXT NOT NULL, hash TEXT NOT NULL, cash NUMERIC NOT NULL DEFAULT 10000.00, PRIMARY KEY(id));
CREATE UNIQUE INDEX username ON users (username);
CREATE TABLE trades (
                    id INTEGER NOT NULL,
                    transaction_id INTEGER PRIMARY KEY AUTOINCREMENT,
                    symbol TEXT NOT NULL,
                    name TEXT NOT NULL,
                    shares INTEGER NOT NULL,
                    price NUMERIC NOT NULL,
                    transacted TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
                    FOREIGN KEY(id) REFERENCES users(id)
                );
