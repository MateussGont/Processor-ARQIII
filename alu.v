
module ALU (
    input [31:0] operand1,
    input [31:0] operand2,
    input [3:0] operation,
    output reg [31:0] result
);
    always @(operand1, operand2, operation) begin
        case (operation)
            4'b0000: result = operand1 + operand2;  // add
            4'b0001: result = operand1 & operand2;  // and
            4'b0010: result = operand1 | operand2;  // or
            4'b0011: result = ~(operand1 | operand2);  // nor
            4'b0100: result = operand1 << operand2;  // sll
            4'b0101: result = operand1 >> operand2;  // srl
            4'b0110: result = operand1 * operand2;  // mul
            default: result = 32'b0;
        endcase
    end
endmodule
