module HomeAutomationSystem(
    input wire [3:0] sensor_inputs,
    output wire lights,
    output wire heater
);

    // Internal signals
    wire motion_detected, light_level, temp_high;
    wire turn_on_lights, turn_on_heater;

    // Instantiate modules
    Sensors sensors (
        .sensor_inputs(sensor_inputs),
        .motion_detected(motion_detected),
        .light_level(light_level),
        .temp_high(temp_high)
    );

    Controller controller (
        .motion_detected(motion_detected),
        .light_level(light_level),
        .temp_high(temp_high),
        .turn_on_lights(turn_on_lights),
        .turn_on_heater(turn_on_heater)
    );

    Actuators actuators (
        .turn_on_lights(turn_on_lights),
        .turn_on_heater(turn_on_heater),
        .lights(lights),
        .heater(heater)
    );

endmodule
