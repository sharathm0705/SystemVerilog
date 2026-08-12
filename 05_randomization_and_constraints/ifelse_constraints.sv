// Conditional Constraints using if-else blocks
class packet;

  rand bit [3:0] addr;
  string addr_range;

  constraint address_range {
    if (addr_range == "small")
      addr < 8;
    else
      addr >= 8;
  }

endclass

module ifelse_constraints_tb;

  packet pkt;

  initial begin
    pkt = new();
    pkt.addr_range = "small";

    $display("--------------------");
    $display("addr_range = 'small' (addr < 8):");
    repeat (3) begin
      pkt.randomize();
      $display("addr = %0d", pkt.addr);
    end

    $display("--------------------");
    pkt.addr_range = "large";
    $display("addr_range = 'large' (addr >= 8):");
    repeat (3) begin
      pkt.randomize();
      $display("addr = %0d", pkt.addr);
    end
    $display("--------------------");
  end

endmodule
