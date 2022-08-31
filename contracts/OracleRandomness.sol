pragma solidity >=0.8.0 <0.9.0;

import "@chainlink/contracts/src/v0.8/interfaces/VRFConsumerBase.sol";

contract OracleRandomness {
    VRFConsumerBase public randomness;

constructor() public {
    priceFeed = AggregatorV3Interface(0x8A753747A1Fa494EC906cE90E9f37563A8AF630e);
  }

  function getLatestPrice() public view returns (int) {
    (,int price,,,) = priceFeed.latestRoundData();
    return price;
  }

  function getDecimals() public view returns(uint8) {
    uint8 decimals = priceFeed.decimals();
    return decimals;
  }
}