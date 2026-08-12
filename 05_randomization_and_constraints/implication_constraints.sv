// Implication Constraints using operator (->)
class packet;

  rand bit [3:0] addr;
  string addr_range;

  constraint address_range {
    (addr_range == "small") -> (addr < 8);
  }

endclass

module implication_constraints_tb;

  packet pkt;

  initial begin
    pkt = new();
    pkt.addr_range = "small";

    $display("--------------------");
    $display("Random values for addr_range = 'small':");
    repeat (5) begin
      pkt.randomize();
      $display("addr = %0d", pkt.addr);
    end
    $display("--------------------");
  end

endmodule
