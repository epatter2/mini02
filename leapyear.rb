class LeapYear

  def is_leap_year?(yearVar)
   if (yearVar % 4 == 0)
      if (yearVar % 100 == 0)
         if(yearVar % 400 == 0)
            return true
         else
            return false
         end
         return true
      end
      return true
   end
   return false
  end

end
