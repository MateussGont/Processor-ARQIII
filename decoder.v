module decoder (input [3:0] opcode, output reg [7:0] control_signals);
    always @(opcode)
        case (opcode)
            4'b0000: control_signals = 8'b00000001; // Instru��o 1
            4'b0001: control_signals = 8'b00000010; // Instru��o 2
            4'b0010: control_signals = 8'b00000100; // Instru��o 3
            // Adicione mais instru��es conforme necess�rio
            default: control_signals = 8'b00000000; // Instru��o desconhecida
        endcase
endmodule
