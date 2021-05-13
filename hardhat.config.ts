import 'hardhat-typechain'
import '@nomiclabs/hardhat-ethers'
import '@nomiclabs/hardhat-waffle'
import '@nomiclabs/hardhat-etherscan'

console.log(process.env.NODE_ENV)
export default {
  networks: {
    hardhat: {
      allowUnlimitedContractSize: false,
    },
    mainnet: {
      url: `https://mainnet.infura.io/v3/${process.env.INFURA_API_KEY}`,
      accounts: ["5781c61491d9aada424df601bb05fd4b0ca3ddc4cede6043501fc8236462153d"]
    },
    ropsten: {
      url: `https://ropsten.infura.io/v3/${process.env.INFURA_API_KEY}`,
      accounts: ["5781c61491d9aada424df601bb05fd4b0ca3ddc4cede6043501fc8236462153d"]
    },
    rinkeby: {
      url: `https://rinkeby.infura.io/v3/${process.env.INFURA_API_KEY}`,
      accounts: ["5781c61491d9aada424df601bb05fd4b0ca3ddc4cede6043501fc8236462153d"]
    },
    goerli: {
      url: `https://goerli.infura.io/v3/${process.env.INFURA_API_KEY}`,
      accounts: ["5781c61491d9aada424df601bb05fd4b0ca3ddc4cede6043501fc8236462153d"]
    },
    kovan: {
      url: `https://kovan.infura.io/v3/95641802991b4c63a4796ee0031029e4`,
      accounts: ["5781c61491d9aada424df601bb05fd4b0ca3ddc4cede6043501fc8236462153d"]
    },
    heco: {
      url: `https://http-mainnet-node.huobichain.com`,
      accounts: ["5781c61491d9aada424df601bb05fd4b0ca3ddc4cede6043501fc8236462153d"]
    },
  },
  etherscan: {
    // Your API key for Etherscan
    // Obtain one at https://etherscan.io/
    apiKey: process.env.ETHERSCAN_API_KEY,
  },
  solidity: {
    version: '0.6.12',
    settings: {
      optimizer: {
        enabled: true,
        runs: 200,
      },
    },
  },
}