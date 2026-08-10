// OOPs: this keyword distinguishing member variables from argument names
class transaction;
  bit [31:0] data;
  int id;

  function new(bit [31:0] data, int id);
    this.data = data;
    $display("this.data: %0d", this.data);
    this.id = id;
    $display("this.id  : %0d", this.id);
  endfunction
endclass

module this_keyword_tb;

  transaction trans;

  initial begin
    trans = new(12, 4314);
  end

endmodule
