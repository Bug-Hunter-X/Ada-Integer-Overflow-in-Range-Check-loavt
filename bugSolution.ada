```ada
function Check_Range(Num : Integer) return Boolean is
begin
  if Num < 10 then
    return False;
  elsif Num > 20 then
    return False;
  else
    return True;
  end if;
exception
   when Constraint_Error =>
      -- Handle overflow
      return False; -- Or raise an exception
end Check_Range;

procedure Example is
   Result : Boolean;
begin
   Result := Check_Range(15);
   if Result then
      Put_Line("Number is within range");
   else
      Put_Line("Number is out of range");
   end if;

   -- Handling potential overflow using exception
   Result := Check_Range(Integer'Last + 1);
   if Result then
      Put_Line("Number is within range");
   else
      Put_Line("Number is out of range");
   end if;
end Example;
```