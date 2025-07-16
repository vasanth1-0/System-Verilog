
module decoder_addn_tb;
logic [1:0] in;
logic [3:0] out;
logic sum;
logic carry;

decoder_addn uut(
.in(in),
.out(out),
.sum(sum),
.carry(carry)
);

initial begin
$display("Time\tin\tout\tsum\tcarry");
$monitor("%0t\t%b\t%b\t%b\t%b",$time,in,out,sum,carry);
in=2'b00; #2;
in=2'b01; #2;
in=2'b10; #2;
in=2'b11; #2;
$finish;
end
endmodule
