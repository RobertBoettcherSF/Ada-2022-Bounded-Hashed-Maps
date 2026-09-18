pragma Ada_2022;
with Ada.Assertions; use Ada.Assertions;
with Ada.Text_IO; use Ada.Text_IO;
with BHM_Demo; use BHM_Demo;
procedure Tests is
   M : constant Int_Maps.Map := Sample;
begin
   Assert (Natural (M.Length) = 2);
   Assert (M.Element (1) = 100);
   Assert (M.Contains (2));
   Put_Line ("PASS Bounded_Hashed_Maps");
   Put_Line ("All Bounded_Hashed_Maps topic tests passed.");
end Tests;
