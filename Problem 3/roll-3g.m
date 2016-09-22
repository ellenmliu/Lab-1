%a function that would act as a 6 sided dice
function r = roll3g()
    r = uint8(rand(1) * 5) + 1; %multiple the random probability with 5 and take the floor and add 1 to shift range
end