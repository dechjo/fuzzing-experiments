contract Maze {
    uint256 x;
    uint256 y;

    constructor() {
        x = y = 5;
    }

    function move_right(bool forward) public {
        if (forward) ++x; else --x;
    }

    function move_down(bool forward) public {
        if (forward) ++y; else --y;
    }
    
    function echidna_verify() public view returns (bool) {
        return (x != 0) || (y != 0);
    }
}
