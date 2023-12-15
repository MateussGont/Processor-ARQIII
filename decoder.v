module decoder (input [3:0] opcode, output reg [7:0] control_signals);
    always @(opcode)
        case (opcode)
            4'b0000: control_signals = 8'b00000001; // Instrução 1
            4'b0001: control_signals = 8'b00000010; // Instrução 2
            4'b0010: control_signals = 8'b00000100; // Instrução 3
            // Adicione mais instruções conforme necessário
            default: control_signals = 8'b00000000; // Instrução desconhecida
        endcase
endmodule
