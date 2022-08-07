"""
from cs50 import SQL
from helpers import lookup, usd

db = SQL("sqlite:///finance.db")


user_portfolio = db.execute(
    "SELECT id, symbol, name, SUM(shares) as tshares  FROM trades WHERE id = ? AND price>0 GROUP BY symbol ORDER BY shares DESC", 1)

current_worth = 0
for stock in user_portfolio:
    stock_data = lookup(stock["symbol"])
    stock["currentprice"] = stock_data["price"]
    stock["totalprice"] = stock_data["price"] * stock["tshares"]
    current_worth += stock["totalprice"]


user_cash = db.execute("SELECT * FROM users WHERE id = ?", 1)

print(user_portfolio[0], current_worth)
"""


def is_float(s):
    try:
        float(s)
        return True
    except ValueError:
        return False


def is_int(s):
    try:
        int(s)
        return True
    except ValueError:
        return False