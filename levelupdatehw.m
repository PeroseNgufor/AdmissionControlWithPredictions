function curr_level = levelupdatehw(alpha, curr_ts, prev_szn, prev_level, prev_trnd)
a = alpha*(curr_ts - prev_szn);                 % deseasonalize the data
b = (1-alpha)*(prev_level + prev_trnd);
curr_level = a + b;
end