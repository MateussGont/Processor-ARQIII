module IFID(clock, iIR, iPC, oIR, oPC, enable);
input [31:0] iIR, iPC;
input clock, enable;
output [31:0] oIR, oPC;
reg [31:0] oIR, oPC;

initial begin
    oPC = 32'b0;
    oIR = 32'b0;
end

always @(posedge clock)
begin
    if(enable) begin
        oIR <= iIR;
        oPC <= iPC;
    end
end

endmodule
