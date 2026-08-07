// SystemVerilog Data Types: logic, bit, byte, int
module data_types_basics;

  logic a;
  bit b;
  byte c;
  int d;

  initial begin
    a = 1'b0;
    $display("logic a = %b", a);

    b = 1'b1;
    $display("bit   b = %b", b);

    c = 8'd121;
    $display("byte  c = %d", c);

    d = 1;
    $display("int   d = %d", d);
  end

endmodule
