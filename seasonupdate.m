function curr_szn = seasonupdate(gamma, curr_ts, curr_level, prev_szn)
a = gamma*(curr_ts - curr_level);       % additive szn
%a = gamma*(curr_ts/curr_level);       % multiplicative szn
b = (1-gamma)*prev_szn;
curr_szn = a + b;
end