// Decoder code with Sum and carry of input bits 
module decoder_addn(
input logic [1:0] in,
output logic [3:0] out,
output logic sum,
output logic carry
    );
    
    assign out = (in==2'd0)? 4'b0001:
                 (in==2'd1)? 4'b0010:
                 (in==2'd2)? 4'b0100:
                  4'b1000;
    assign sum=out[2]^out[1];
    assign carry=out[3];              
endmodule
