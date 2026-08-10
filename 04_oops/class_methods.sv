// OOPs: Class Tasks and Functions
class sv_class;
  int x;

  task set(int i);
    x = i;
  endtask

  function int get();
    return x;
  endfunction
endclass

module class_methods_tb;

  sv_class class_1;

  initial begin
    class_1 = new();
    class_1.set(2);
    $display("Value retrieved from class_1: %0d", class_1.get());
  end

endmodule
