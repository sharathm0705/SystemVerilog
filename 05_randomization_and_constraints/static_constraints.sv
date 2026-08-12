// Static Constraints in SystemVerilog
class packet;

  rand bit [7:0] addr;

  // Static constraint shared across all class instances
  static constraint addr_range { addr == 5; }

endclass

module static_constraints_tb;

  packet pkt1;
  packet pkt2;

  initial begin
    pkt1 = new();
    pkt2 = new();

    pkt1.randomize();
    $display("pkt1.addr before disabling static constraint: %0d", pkt1.addr);

    // Disabling static constraint via pkt2 handle affects ALL instances
    pkt2.addr_range.constraint_mode(0);

    pkt1.randomize();
    $display("pkt1.addr after pkt2 disabled static constraint: %0d", pkt1.addr);
  end

endmodule
