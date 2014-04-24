num_bottles = 99
multiple = "s"

def song_loop(num_bottles)
	if num_bottles == 1
 		multiple = ""
   	end 
	"#{num_bottles} bottle#{multiple} of beer on the wall
    #{num_bottles} bottle#{multiple} of beer!
    You take one down and pass it around,
    #{if num_bottles - 1 != 1
         multiple = "s"
       end 
	num_bottles-1} bottle#{multiple} of beer on the wall!
	" 
end

num_bottles.downto(1) {|i| puts song_loop(i)}




