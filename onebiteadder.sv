module onebitadder(b1,b2,c,s);
    input b1;
    input b2;
    output c;
    output s;

    assign c = b1 & b2;
    assign s = b1 ^ b2;
endmodule   