contract Test {
    function solve(uint256 x) pure public returns (bool) {
        //x = 999;
        //assert((x - 1000) * (x - 999) * (x - 1001) * (x - 100000) != 0);
        //assert(x*x*x*x - 103000 * x*x*x + 302999999 * x*x - 300999899000 * x + 99999900000000 != 0);
        require(x*x*x*x - 103000 * x*x*x + 302999999 * x*x - 300999899000 * x + 99999900000000 != 0);

        //x = 10000011;
        //assert(x*x*x*x - 40000050 * x*x*x + 600001500000935 * x*x - 4000015000018700007750 * x + 10000050000093500077500024024 != 0);
    }
}