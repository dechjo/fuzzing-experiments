import "token.sol";

contract TestToken is Token {
    address echidna_caller = 0x00a329C0648769a73afAC7F9381e08fb43DBEA70;

    constructor() {
        balances[echidna_caller] = 10000;
    }
    // add the property
    function echidna_pred() public view returns (bool) {
        return balances[echidna_caller] <= 10000;
    }
}
