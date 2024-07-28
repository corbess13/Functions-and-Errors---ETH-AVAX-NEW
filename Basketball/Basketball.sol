// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Basketball {
    uint public team1Score;
    uint public team2Score;

    function addToScoreWithRequire(uint number, bool team1) external {
        require(number == 1 || number == 2 || number == 3, "The number you inputted is NOT A VALID SCORE");
        if (team1) team1Score += number;
        else team2Score += number;
    }

    function addToScoreWithAssert(uint number, bool team1) external {
        assert(number == 1 || number == 2 || number == 3);
        if (team1) team1Score += number;
        else team2Score += number;
    }

    function addToScoreWithRevert(uint number, bool team1) external {
        if (number != 1 && number != 2 && number != 3) {
            revert("The number you inputted is NOT A VALID SCORE");
        }
        if (team1) team1Score += number;
        else team2Score += number;
    }
}