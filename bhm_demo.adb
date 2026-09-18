pragma Ada_2022;
package body BHM_Demo is
   function Int_Hash (K : Integer) return Ada.Containers.Hash_Type is
   begin
      return Ada.Containers.Hash_Type (abs K);
   end Int_Hash;
   function Sample return Int_Maps.Map is
      M : Int_Maps.Map (Capacity => 16, Modulus => 7);
   begin
      M.Include (1, 100);
      M.Include (2, 200);
      return M;
   end Sample;
end BHM_Demo;
