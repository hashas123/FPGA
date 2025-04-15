module onebitfulladder(b1,b2,cin,cout,sum);
    input b1;
    input b2;
    input cin;
    output cout;
    output sum;

    assign cout = ((b1 ^ b2) & cin) | (b1 & b2);
    assign sum =(b1^ b2) ^ cin;
endmodule