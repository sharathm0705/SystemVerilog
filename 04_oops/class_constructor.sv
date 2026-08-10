// OOPs: Class Constructor (new method)
class packet;
  bit [31:0] address;
  bit [31:0] data;

  function new();
    $display("Constructor called: Method inside class packet");
  endfunction
endclass : packet

module class_constructor_tb;

  packet pkt;

  initial begin
    pkt = new();
    $display("Packet instance instantiated successfully.");
  end

endmodule
