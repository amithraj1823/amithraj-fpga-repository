module blue_red_led_control (
  input wire inp,          // push button
  output wire red_led,    // Red LED output
  output wire blue_led    // Blue LED output
);

  // Logic to control LEDs based on inp value (button press)
  assign red_led  = inp;     // Red LED is on if inp is 1 (button pressed)
  assign blue_led = ~inp;    // Blue LED is on if inp is 0 (button not pressed)

endmodule  // End of module
