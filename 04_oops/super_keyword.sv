// OOPs: super keyword accessing parent class properties and methods
class parent_trans;
  bit [31:0] data;

  function void disp_p();
    $display("Parent disp_p Data: %0d", data);
  endfunction
endclass

class child_trans extends parent_trans;
  bit [31:0] data;

  function void disp_c();
    super.data = 10;
    super.disp_p();
    $display("Child Data: %0d", data);
  endfunction
endclass

module super_keyword_tb;

  child_trans c_trans;

  initial begin
    c_trans = new();
    c_trans.data = 20;
    c_trans.disp_c();
  end

endmodule
