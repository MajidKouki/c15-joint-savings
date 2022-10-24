// Joint Savings Account

// Solidity version
pragma solidity ^0.5.0;

// Define a new contract named `JointSavings`
contract JointSavings {

    // Declare variables for use in contract functions
    address payable accountOne;
    address payable accountTwo;
    address public lastToWithdraw;
    uint public lastWithdrawAmount;
    uint public contractBalance;

    // Define a function to withdraw funds from the contract
    function withdraw(uint amount, address payable recipient) public {

        // Use a require statement to check whether the recipient is accountOne or accountTwo, else return an error message
        require(recipient == accountOne || recipient == accountTwo, "You don't own this account!");

        // Use a require statement to check whether there are enough funds in the contract to complete a withdraw, else return an error message
        require(contractBalance >= amount, "Insufficient funds!");

        // Check if the lastToWithdraw is not equal to recipient and change the recipient value is needed
        if (lastToWithdraw != recipient) {
            lastToWithdraw = recipient;
        }

        // Call transfer function on recipient with the amount argument
        recipient.transfer(amount);

        // Set lastWithdrawAmount to amount
        lastWithdrawAmount = amount;

        // Set contractBalance equal to the balance of this address
        contractBalance = address(this).balance;
    }

    // Define a function to deposit funds into the contract
    function deposit() public payable {

        // Set contractBalance to balance of this address
        contractBalance = address(this).balance;
    }

    // Define a function to set the addresses associated with accountOne and accountTwo
    function setAccounts(address payable account1, address payable account2) public{

        // Set accountOne and accountTwo equal to account1 and account2 inputs respectively
        accountOne = account1;
        accountTwo = account2;
    }

    // Fallback function
    function() external payable {}
}
