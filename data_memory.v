
module data_memory (input [31:0] address, write_data, input MemWrite, MemRead, output [31:0] read_data);
    reg [31:0] memory [0:1023]; // Ajuste o tamanho conforme necessário
    always @(posedge clk)
        if (MemWrite)
            memory[address] <= write_data;
    assign read_data = (MemRead) ? memory[address] : 0;
endmodule
