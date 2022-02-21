function admit = eligible(v,q)
admit = (v + q)/2 >= 92 && v > 88 && q > 88;
if admit == 1
    fprintf('eligible');
end
end
