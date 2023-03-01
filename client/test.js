const Web3 = require("web3");
const ethNetwork = 'https://goerli.infura.io/v3/70dbbb7487d04a2cbbfd3e6bd6f3e72d';
const web3 = new Web3(new Web3.providers.HttpProvider(ethNetwork));

// let's fetch a balance

web3.eth.getBalance('0xdED6f588D299f8d88b5D5861d27B3E1be5778F60', async (err, result) => {
    if (err) {
        console.log(err);
        return;
    }
    let balance = web3.utils.fromWei(result, "ether");
    console.log(balance + " ETH");
});
