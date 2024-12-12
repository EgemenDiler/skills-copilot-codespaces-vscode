module Controller(
    input wire motion_detected,
    input wire light_level,
    input wire temp_high,
    output wire turn_on_lights,
    output wire turn_on_heater
);

    assign turn_on_lights = motion_detected || !light_level;
    assign turn_on_heater = temp_high;

endmodule
