// OOPs: Inheritance with parent and child classes
class parent_trans;
  bit [31:0] data;

  function void disp_p();
    $display("Parent Data: %0d", data);
  endfunction
endclass

class child_trans extends parent_trans;
  int id;

  function void disp_c();
    $display("Child ID: %0d", id);
  endfunction
endclass

module inheritance_tb;

  child_trans c_trans;

  initial begin
    c_trans = new();
    c_trans.data = 12;
    c_trans.id = 23;
    c_trans.disp_p();
    c_trans.disp_c();
  end

endmodule
