//----------------------------------------------------------------------------
//                                                                          --
//                         Module Declaration                               --
//                                                                          --
//----------------------------------------------------------------------------
module blue_blink (
  output wire led_blue // Red LED output
);

  wire        int_osc;
  reg  [23:0] counter;     // 24-bit counter is sufficient for 12M cycles
  reg         led_state;   // Toggles every second

//----------------------------------------------------------------------------
//                       Internal Oscillator                                --
//----------------------------------------------------------------------------
  SB_HFOSC u_SB_HFOSC (
    .CLKHFPU(1'b1),
    .CLKHFEN(1'b1),
    .CLKHF(int_osc)
  );
  defparam u_SB_HFOSC.CLKHF_DIV = "0b00"; // Full 12 MHz output

//----------------------------------------------------------------------------
//                             1 Second Counter                             --
//----------------------------------------------------------------------------
  always @(posedge int_osc) begin
    if (counter == 24'd11_999_999) begin
      counter   <= 0;
      led_state <= ~led_state;
    end else begin
      counter <= counter + 1;
    end
  end

//----------------------------------------------------------------------------
//                             Output LED                                   --
//----------------------------------------------------------------------------
  assign led_blue = led_state;

endmodule