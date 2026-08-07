// Difference between unsigned vector (bit[7:0]) and 2-state signed integer (byte)
module bit_vs_byte;

  bit [7:0] my_bit;
  byte      my_byte;

  initial begin
    my_bit  = 8'b1010_0110; // Unsigned 8-bit vector: 166
    my_byte = 8'b1010_0110; // Signed 8-bit byte: -90

    $display("my_bit  (bit[7:0]): %d (binary: %b)", my_bit, my_bit);
    $display("my_byte (byte)    : %d (binary: %b)", my_byte, my_byte);
  end

endmodule
