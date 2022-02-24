for count in 1..100 do
    num1 = count % 3;
    num2 = count % 5;
    if num1 == 0 && num2 == 0  then
        puts "15の倍数"
    elsif num1 == 0 then
        puts "3の倍数"
    elsif num2 == 0 then
        puts "5の倍数"    
    else
        p count   
    end
end