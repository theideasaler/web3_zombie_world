# Blockchain sample project

## A very good introduction before start
This udemy course has a well-explained [introduction](https://bettech.udemy.com/course/ethereum-and-solidity-the-complete-developers-guide/ ) of how ETH blockchain works. You do not have to go through all of it, **only watching the Section 1: What is Ethereum will be enough to start**. It gives you a whole picture of what a blockchain is, what a smart contract is.

## Web3 App Structure
Before learning a new thing, it's better to have a whole picture of it. For web3 apps.

Tradition Web App: 
`Frontend (Angular/React/Flutter/etc)` <--> `APIs (REST/GraphQL/etc)` <--> `Server (.NET/Node/etc)` <--> `Database`

Web3 App:
`Frontend (Angular/React/Flutter/etc)` <--> `ETH APIs (Web3.js/ethers.js/etc)` <--> `ETH VM (Solidity)` <--> `Blockchain`

## Installation
The first thing is to config your solidity compiler.

There are so many ways to start your solidity development as listed on the language official [documentation](https://docs.soliditylang.org/en/v0.8.15/installing-solidity.html#installing-solidity). However, for web developer, I believe `npm` will be the most comfortable way to start with solidity.

First, install solc globally: `npm install -g solc`


## Setup VS Code
Follow this [video](https://www.youtube.com/watch?v=2dEruyIs2qQ&ab_channel=TenaCodes)
Truffle: `npm install -g truffle`
Ganache: `npm install -g ganache`