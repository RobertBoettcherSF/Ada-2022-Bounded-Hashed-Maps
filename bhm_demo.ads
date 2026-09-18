--  Ada 2022 topic: Ada.Containers.Bounded_Hashed_Maps.
pragma Ada_2022;
with Ada.Containers;
with Ada.Containers.Bounded_Hashed_Maps;
package BHM_Demo is
   function Int_Hash (K : Integer) return Ada.Containers.Hash_Type;
   package Int_Maps is new Ada.Containers.Bounded_Hashed_Maps
     (Key_Type        => Integer,
      Element_Type    => Integer,
      Hash            => Int_Hash,
      Equivalent_Keys => "=");
   function Sample return Int_Maps.Map;
end BHM_Demo;
