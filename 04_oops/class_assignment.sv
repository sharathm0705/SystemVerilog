// OOPs: Class Handle Assignment vs Object Copying
class transaction;
  bit [31:0] data;
endclass

module class_assignment_tb;

  transaction t1, t2;

  initial begin
    t1 = new();
    t1.data = 8;

    // t2 points to the same object handle as t1
    t2 = t1;

    $display("t1.data: %0d", t1.data);
    $display("t2.data: %0d", t2.data);

    // Modifying via t2 handle updates the object shared with t1
    t2.data = 21;

    $display("After modifying t2.data:");
    $display("t1.data: %0d", t1.data);
    $display("t2.data: %0d", t2.data);
  end

endmodule
