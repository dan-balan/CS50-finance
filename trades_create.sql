--- cat trades_create.sql | sqlite3 finance.db > output.txt
--- CREATE TABLE users (id INTEGER, username TEXT NOT NULL, hash TEXT NOT NULL, cash NUMERIC NOT NULL DEFAULT 10000.00, PRIMARY KEY(id));
--- CREATE UNIQUE INDEX username ON users (username);
---

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
/*
CREATE TABLE ownership (
                    id INTEGER NOT NULL,
                    symbol TEXT NOT NULL UNIQUE,
                    name TEXT NOT NULL,
                    shares INTEGER NOT NULL,
                    FOREIGN KEY(id) REFERENCES users(id)
                );

                */

SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
ORDER BY COUNT(CustomerID) DESC;

SELECT id, symbol, name, sum(shares) FROM trades WHERE id = ? and sum(shares) > 0 GROUP BY symbol ORDER BY symbol;

SELECT id, symbol, name, sum(shares) FROM trades WHERE id = 1 GROUP BY symbol ORDER BY symbol;

SELECT id, symbol, name, sum(shares) as total_shares FROM trades WHERE id = ? and total_shares > 0 GROUP BY symbol ORDER BY symbol;

SELECT id, symbol, name, SUM(shares) as price  FROM trades WHERE id = 1 AND price>0 GROUP BY symbol ORDER BY symbol;