// Multi-dimensional Packed Array in SystemVerilog
module packed_array;

  bit [2:0][3:0] array;
  bit y;

  initial begin
    array[0] = 4'b0010;
    array[1] = 4'b0100;
    array[2] = 4'b1100;

    y = array[2][1];
    $display("Array content:");
    $display("array[2] = %b", array[2]);
    $display("array[1] = %b", array[1]);
    $display("array[0] = %b", array[0]);
    $display("Value of y (array[2][1]): %b", y);
  end

endmodule
