// SystemVerilog Queues: push_back, push_front, pop_back, pop_front
module queue_basics;

  bit [7:0] my_queue[$];

  initial begin
    my_queue.push_back(8'd10);
    my_queue.push_back(8'd20);
    my_queue.push_back(8'd30);
    my_queue.push_front(8'd40);

    $display("Popped from back : %0d", my_queue.pop_back());
    $display("Popped from front: %0d", my_queue.pop_front());
    $display("Remaining queue size: %0d", my_queue.size());
  end

endmodule
