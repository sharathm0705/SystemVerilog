// Interprocess Concurrency: fork ... join block
module fork_join;

  initial begin
    $display("-----------------------");
    fork
      begin
        // Process 1
        $display("[%0t]\t Process 1 Started...", $time);
        #5;
        $display("[%0t]\t Process 1 Ended...", $time);
      end
      begin
        // Process 2
        $display("[%0t]\t Process 2 Started...", $time);
        #10;
        $display("[%0t]\t Process 2 Ended...", $time);
      end
    join
    $display("-----------------------");
    $display("[%0t]\t Both processes completed.", $time);
  end

endmodule
