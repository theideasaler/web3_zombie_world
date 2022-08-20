pragma solidity >=0.8.0 <0.9.0;

import "./zombiefeeding.sol";
import "./safemath.sol";

contract ZombieHelper is ZombieFeeding {
    using SafeMath for uint256;

    uint256 private levelUpFee = 0.001 ether;

    modifier aboveLevel(uint256 _level, unit _zombieId) {
        require(
            zombies[_zombieId].level >= _level,
            "Zombie is not above level"
        );
        _;
    }

    function withdraw() external onlyOwner {
        address payable _owner = address(uint160(owner()));
        _owner.transfer(address(this).balance);
    }

    function setLevelUpFee(uint256 _fee) external onlyOwner {
        levelUpFee = _fee;
    }

    function levelUp(uint256 _zombieId) external payable {
        require(msg.value == levelUpFee, "You must pay the fee");
        zombies[_zombieId].level = zombies[_zombieId].level.add(1);
    }

    function changeName(uint256 _zombieId, string calldata _newName)
        external
        aboveLevel(2, _zombieId)
        onlyOwnerOf(_zombieId)
    {
        zombies[_zombieId].name = _newName;
    }

    function changeDna(uint256 _zombieId, uint256 _newDna)
        external
        aboveLevel(20, _zombieId)
        onlyOwnerOf(_zombieId)
    {
        zombies[_zombieId].dna = _newDna;
    }

    function getZombiesByOwner(address _owner)
        external
        view
        returns (uint256[] memeory)
    {
        uint256[] memory result = new uint256[](ownerZombieCount[_owner]);
        uint256 counter = 0;
        for (uint256 i = 0; i < zombies.length; i++) {
            if (zombieToOwner[i] == _owner) {
                result[counter] = i;
                counter++;
            }
        }
        return result;
    }
}
