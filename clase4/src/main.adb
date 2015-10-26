with Ada.Text_IO, Ada.Integer_Text_IO,Ada.Numerics.Discrete_Random;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Main is
   subtype rango is Integer range 35..39;
   package randomTemperatura is new Ada.Numerics.Discrete_Random (rango);
   use randomTemperatura;
   Tm: randomTemperatura.Generator;
   t : Integer;

   subtype rango1 is Integer range 69..76;
   package randomRitmo is new Ada.Numerics.Discrete_Random (rango1);
   use randomRitmo;
   Rt: randomRitmo.Generator;
   r : Integer;

   subtype rango2 is Integer range 11..21;
   package randomFrecuencia is new Ada.Numerics.Discrete_Random (rango2);
   use randomFrecuencia;
   Fr: randomFrecuencia.Generator;
   f : Integer;

   subtype rango3 is Integer range 119..141;
   package randomPrecionsis is new Ada.Numerics.Discrete_Random (rango3);
   use randomPrecionsis;
   Pr: randomPrecionsis.Generator;
   pa : Integer;

   subtype rango4 is Integer range 79..91;
   package randomPrecionasis is new Ada.Numerics.Discrete_Random (rango4);
   use randomPrecionasis;
   Prea: randomPrecionasis.Generator;
   pra : Integer;

   task Temperatura;
   task Ritmo;
   task Frecuencia;
   task Precionsis;
    task Precionasis;

   task body Temperatura is
       temp:Integer:=37;
   begin
      Reset(Tm);
      Put_Line("Temperatura");
      for i in 1..10 loop
         t:=temp+1;
         temp := Random(Tm);
         if (temp < 36)  or (temp >38) then
         Put_Line("Temperatura Estable :37");
         else
            Put_Line("Temperatura Mala Cuidado :30");
         end if;
         end loop;
   end Temperatura;

    task body Ritmo is
       rit:Integer:=72;
   begin
      Reset(Rt);
      Put_Line("Ritmo Cardiaco");
      for i in 1..10 loop
         r:=rit+1;
         rit := Random(Rt);
         if (rit < 70)  or (rit >75) then
         Put_Line("Ritmo Estable :73");
         else
            Put_Line("Ritmo Malo Cuidado :86");
         end if;
         end loop;
   end Ritmo;

     task body Frecuencia is
       fre:Integer:=15;
   begin
      Reset(Fr);
      Put_Line("Frecuencia Respiratoria");
      for i in 1..10 loop
         f:=fre+1;
         fre := Random(Fr);
         if (fre < 12)  or (fre >20) then
         Put_Line("Frecuencia Estable :16");
         else
            Put_Line("Frecuencia Mala Cuidado :10");
         end if;
         end loop;
   end Frecuencia;

    task body  Precionsis is
       pre:Integer:=125;
   begin
      Reset(Pr);
      Put_Line("Presion Sistolica");
      for i in 1..10 loop
         pa:=pre+1;
         pre := Random(Pr);
         if (pre < 120)  or (pre >140) then
         Put_Line("Presion Sistolica Estable :130");
         else
            Put_Line("Presion Sistolica Mala Cuidado :100");
         end if;
         end loop;
   end  Precionsis;

    task body  Precionasis is
       preas:Integer:=85;
   begin
      Reset(Prea);
      Put_Line("Presion Asistolica");
      for i in 1..10 loop
         pra:=preas+1;
         preas := Random(Prea);
         if (preas < 80)  or (preas >90) then
         Put_Line("Presion Asistolica Estable :87");
         else
            Put_Line("Presion Asistolica Mala cuidado :100");
         end if;
         end loop;
   end  Precionasis;

begin
null;
end Main;
