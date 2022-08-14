pragma solidity >=0.8.0 <0.9.0;

import "./zombiefeeding.sol";

contract ZombieHelper is ZombieFeeding {

  modifier aboveLevel(uint _level, unit _zombieId) {
    require(zombies[_zombieId].level >= _level, "Zombie is not above level");
    _;
  }

  function changeName(uint _zombieId, string calldata _newName) external aboveLevel(2, _zombieId) {
    require(msg.sender == zombieToOwner[_zombieId], "Only owner can change name");
    zombies[_zombieId].name = _newName;
  }

  function changeDna(uint _zombieId, uint _newDna) external aboveLevel(20, _zombieId) {
    require(msg.sender == zombieToOwner[_zombieId], "Only owner can change dna");
    zombies[_zombieId].dna = _newDna;
  }

  function getZombiesByOwner(address _owner) external view returns(uint[] memeory) {
    uint[] memory result = new uint[](ownerZombieCount[_owner]);
    return result;
  }
}