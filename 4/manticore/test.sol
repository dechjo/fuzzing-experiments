contract Simple {
    function solve(uint x) payable public {
        //if (x < 100000 && x*x*x*x - 103000 * x*x*x + 302999999 * x*x - 300999899000 * x + 99999900000000 == 0) {
        if (x < 100000000 && x*x*x*x - 40000050 * x*x*x + 600001500000935 * x*x - 4000015000018700007750 * x + 10000050000093500077500024024 == 0) {
            revert();
        }
    }
}