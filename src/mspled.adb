with MSPM0.SysTick; use MSPM0.SysTick;
with MSPM0; use MSPM0;
with WS2812;

procedure Mspled is
   use type WS2812.LED_Index;
   I : WS2812.LED_Index := 0;
   T : Time;
begin
   WS2812.Initialize;
   MSPM0.SysTick.Enable;

   T := Clock;
   loop
      WS2812.Set_Color (I - 1, (3, 0, 0));
      WS2812.Set_Color (I, (0, 6, 0));
      WS2812.Update;
      I := I + 1;
      T := T + Milliseconds (25);
      Delay_Until (T);
   end loop;
end Mspled;
