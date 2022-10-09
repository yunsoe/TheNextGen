# TheNextGen
1. Clone the repo 
```shell
git clone https://github.com/yunsoe/TheNextGen.git
```
2. Cd into react-dapp and install the dependencies
```shell
cd react-dapp
npm install
```
3. Compile the contracts
```shell
npx hardhat compile
```
4. Start the local test node
```shell
npx hardhat node
```
5. Deploy the contracts
```shell
npx hardhat run scripts/deploy.js --network localhost
```
6. Update src/App.js with the values of your contract addresses (greeterAddress and tokenAddress)

7. Connect to Metamask

8. Run the app
```shell
npm start
```




