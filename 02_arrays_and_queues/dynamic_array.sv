// Dynamic Arrays in SystemVerilog: allocation, resizing, methods
module dynamic_array;

  bit [3:0] d_array1[];
  int       d_array2[];

  initial begin
    // Allocate space
    d_array1 = new[4];
    d_array2 = new[6];

    d_array1[0] = 4'd3;
    d_array1[1] = 4'd4;
    d_array1[2] = 4'd1;
    d_array1[3] = 4'd5;

    $display("Initializing d_array2 using foreach:");
    foreach (d_array2[i]) begin
      d_array2[i] = i;
      $display("  d_array2[%0d] = %0d", i, d_array2[i]);
    end

    // Resize array without preserving elements
    d_array1 = new[10];
    $display("Size of d_array1 after new[10]: %0d", d_array1.size());

    // Resize array while preserving existing elements
    d_array1 = new[10](d_array1);
    $display("Size of d_array1 after copying: %0d", d_array1.size());

    // Delete array elements
    d_array1.delete();
    $display("Size of d_array1 after delete(): %0d", d_array1.size());
  end

endmodule
