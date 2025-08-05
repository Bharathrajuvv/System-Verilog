// Design code
module up_down_counter(up_down inf);
    always @(posedge inf.clk) begin
        if (inf.rst)
            inf.count <= 4'd0;
        else if (inf.d)
            inf.count <= inf.count + 1;
        else
            inf.count <= inf.count - 1;
    end
endmodule
