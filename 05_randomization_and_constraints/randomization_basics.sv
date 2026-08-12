// Randomization Basics: rand variables and randomize() method
class random_example;
  rand int value1;
  rand int value2;

  task run();
    if (this.randomize()) begin
      $display("Random Value of Value1 : %0d", value1);
      $display("Random Value of Value2 : %0d", value2);
    end else begin
      $display("Randomization failed..!!!");
    end
  endtask
endclass

module randomization_basics_tb;

  random_example example;

  initial begin
    example = new();
    example.run();
  end

endmodule
