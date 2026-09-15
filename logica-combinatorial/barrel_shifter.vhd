LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY barrel IS
  PORT ( inp: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        shift: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
        outp: OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
  END barrel;

ARCHITECTURE behavior OF barrel IS
  BEGIN
    PROCESS (inp, shift)
      VARIABLE temp1: STD_LOGIC_VECTOR (7 DOWNTO 0);
      VARIABLE temp2: STD_LOGIC_VECTOR (7 DOWNTO 0);
    BEGIN
      ---- 1st shifter -----
      IF (shift(0)='0') THEN
        temp1 := inp;
      ELSE
        temp1(0) := '0';

      FOR i IN 1 TO inp'HIGH LOOP
        temp1(i) := inp(i-1);
      END LOOP;
      
      END IF;

      ---- 2nd shifter -----
      IF (shift(1)='0') THEN
        temp2 := temp1;
      ELSE
        FOR i IN 0 TO 1 LOOP
          temp2(i) := '0';
        END LOOP;
        
        FOR i IN 2 TO inp'HIGH LOOP
          temp2(i) := temp1(i-2);
        END LOOP;
      END IF;

      ---- 3rd shifter -----
      IF (shift(2)='0') THEN
        outp <= temp2;
      ELSE
        FOR i IN 0 TO 3 LOOP
          outp(i) <= '0';
        END LOOP;

        FOR i IN 4 TO inp'HIGH LOOP
          outp(i) <= temp2(i-4);
        END LOOP;
      END IF;
  END PROCESS;
END behavior;
        
