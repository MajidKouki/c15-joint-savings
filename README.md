# Joint Savings

Application that allows user to select a candidate, calculate the wage to hire that candidate, and send the transaction from their address to the candidates via an easy to use web interface.

---

## Technologies

This project leverages Solidity version 0.5.0

---

## Installation Guide

Ganache will need to be downloaded from the website provided in the link above.

Before first running the application install the following dependencies:

```python
    pip install web3
    pip install streamlit
    pip install bip44
    pip install python-dotenv
```

---

## Usage

To run the app, navigate to the directory containing `fintech_finder.py` and run the following command:

```python
    streamlit run fintech_finder.py
```

The program allows the user to review the information of several candidates and select one in the sidebar as well as how many hours to hire them for. The program will use the candidate information and the user's selected hours to calculate a wage and allow the user to easily send the value from their address to the candidate's.

Below are examples of the program functionality seen from inside Ganache's testing blockchain:

![Ganache Accounts Transaction](./Images/accounts.png)

![Ganache Transactions Transaction](./Images/transactions.png)

---

## Contributors

Brought to you by Majid Kouki. You can reach me at [majidkpy@gmail.com](mailto:majidkpy@gmail.com).

---

## License

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)