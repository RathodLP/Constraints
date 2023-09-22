// Randomly generate Two-hot (Having 2 one) variable having length of 10 bit

class twohot;
rand bit[9:0] addr;
rand int count;
constraint c {
			$countones(addr)==2; //2hot addr
		//	$countones(addr)%2 !=0; //odd no.of 1's
		//	count == $countbits(a,1); //to count no.of 1's / 0's

}			
endclass

module top();
twohot s=new();
initial begin
	repeat (5) begin
	s.randomize();
	$display("addr=%b",s.addr);
	$display("count=%b",s.count);
	end
end
endmodule
