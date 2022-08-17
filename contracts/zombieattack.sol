pragma solidity >=0.8.0 <0.9.0;

import "./zombiehelper.sol";

contract ZombieAttack is ZombieHelper {
    uint256 private randNonce = 0;

    function randMod(uint256 _modulus) internal returns (uint256) {
        randNonce++;
        return
            uint256(keccak256(abi.encodePacked(now, msg.sender, randNonce))) %
            _modulus;
    }
}
