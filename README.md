# Harvard CS50’s Introduction to Computer Science


> This solution represents one of many possible ways of solving the CS50's course problem sets and labs. While going through these solutions, it's recommended to pay attention to the [Academic Honesty](https://cs50.harvard.edu/x/2022/honesty/) rules in order to be sure that use of these lines will be aligned with your intentions.

### requirements for _python_ files:
- [cs50](https://cs50.readthedocs.io/libraries/cs50/python/)



Reproduce web application
=========================

One way to run this application: 
- create a Python virtual environment;
```bash
python -m venv [directory]
```

- activate venv - [here python docs](https://docs.python.org/3/tutorial/venv.html);

- install the requirements in virtual environment;
```bash
pip install -r requirements.txt
```

- database initializing;
```bash
python db.py
```

> Next step: [Configuring](https://cs50.harvard.edu/x/2022/psets/9/finance/) as per CS50 web-page steps

- run `python app.py` or `flask run` and visit `http://localhost:5000` in two separate browser tabs.
```bash
python app.py
```
or
```bash
flask run
```