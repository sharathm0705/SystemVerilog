// Enabling and Disabling Constraints using constraint_mode()
class packet;

  rand bit [3:0] addr;
  string addr_range;

  constraint address_range {
    (addr_range == "small") -> (addr < 8);
  }

endclass

module constraint_mode_tb;

  packet pkt;

  initial begin
    pkt = new();
    pkt.addr_range = "small";

    $display("--- Constraint ENABLED ---");
    repeat (3) begin
      pkt.randomize();
      $display("addr = %0d", pkt.addr);
    end

    $display("--- Constraint DISABLED ---");
    pkt.constraint_mode(0); // Disable constraint
    repeat (3) begin
      pkt.randomize();
      $display("addr = %0d", pkt.addr);
    end

    $display("--- Constraint RE-ENABLED ---");
    pkt.constraint_mode(1); // Enable constraint
    repeat (3) begin
      pkt.randomize();
      $display("addr = %0d", pkt.addr);
    end
  end

endmodule
