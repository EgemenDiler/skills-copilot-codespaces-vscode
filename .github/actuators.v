module Actuators(
    input wire turn_on_lights,
    input wire turn_on_heater,
    output reg lights,
    output reg heater
);

    always @(*) begin
        lights = turn_on_lights;
        heater = turn_on_heater;
    end

endmodule
