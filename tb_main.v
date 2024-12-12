module tb_HomeAutomationSystem;

    // Testbench signals
    reg [3:0] sensor_inputs;
    wire lights, heater;

    // Instantiate the top module
    HomeAutomationSystem UUT (
        .sensor_inputs(sensor_inputs),
        .lights(lights),
        .heater(heater)
    );

    initial begin
        // Test cases
        $monitor("Time=%0d, Sensor Inputs=%b, Lights=%b, Heater=%b", $time, sensor_inputs, lights, heater);

        sensor_inputs = 4'b0000; #10;
        sensor_inputs = 4'b0001; #10;
        sensor_inputs = 4'b0010; #10;
        sensor_inputs = 4'b0100; #10;
        sensor_inputs = 4'b0111; #10;

        $stop;
    end

endmodule
