// Randomization with Constraints: rand, randc, inside operator, and bounds
class constraint_random;

  rand  int value1;
  randc int value2;

  constraint values_constraints {
    value1 inside {10, 20, 30, 40, 50};
    value2 >= 10;
    value2 <= 100;
  }

  task randomize_display();
    if (this.randomize()) begin
      $display("Value1: %0d, Value2: %0d", value1, value2);
    end
  endtask

endclass

module constraint_inside_tb;

  constraint_random c_random;

  initial begin
    c_random = new();
    repeat (3) begin
      c_random.randomize_display();
    end
  end

endmodule
