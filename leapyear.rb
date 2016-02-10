class LeapYear

  def is_leap_year?(yearVar)
   if (yearVar >= 1752 && yearVar % 4 == 0)
      if (yearVar % 100 == 0)
         if(yearVar % 400 == 0)
            return true
         else
            return false
         end
         return true
      end
      return true
   elsif (yearVar > 0 && yearVar % 4 == 0)
   return true
   else 
   return false
   end
  end
end