// OOPs: Polymorphism using virtual function overriding
class BaseClass;
  virtual function void my_function();
    $display("Base Class : my_function");
  endfunction
endclass

class DerivedClass extends BaseClass;
  function void my_function();
    $display("Derived Class : my_function");
  endfunction
endclass

module polymorphism_tb;

  BaseClass b;
  DerivedClass d;

  initial begin
    b = new();
    d = new();

    $display("Calling via Base handle b:");
    b.my_function();

    // Base handle pointing to derived class instance
    b = d;
    $display("Calling via Base handle b (pointing to Derived instance):");
    b.my_function();
  end

endmodule
