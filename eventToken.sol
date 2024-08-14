// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EventTicket {
    uint256 numberOfTickets;
    uint256 ticketPrice;
    uint256 totalAmount;
    uint256 startAt;
    uint256 endAt;
    uint256 timeStamp;
    string public message = "Buy your first EVENT Ticket";

    constructor(uint256 _ticketPrice) 
    {
        ticketPrice = _ticketPrice;
        startAt = block.timestamp;
        endAt = block.timestamp + 7 days;
        timeStamp = (endAt - startAt) / 60 / 60 /24;       
    }
    
    function buyTicket(uint256 value) public returns(uint ticketId)
    {   
        numberOfTickets++;
        totalAmount += value;
        ticketId = numberOfTickets;
    }

    function getAmount() public  view returns(uint256)
    {
        return totalAmount;
    }

}