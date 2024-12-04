module Sensors(
    input wire [3:0] sensor_inputs,  // Inputs from temperature, motion, light, etc.
    output wire motion_detected,
    output wire light_level,
    output wire temp_high
);

    assign motion_detected = sensor_inputs[0];
    assign light_level     = sensor_inputs[1];
    assign temp_high       = sensor_inputs[2];

endmodule
