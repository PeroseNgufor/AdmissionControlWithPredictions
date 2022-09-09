function curr_trend = trendupdate(beta, levelstep, prev_trend)
a = beta*levelstep;
b = (1-beta)*prev_trend;
curr_trend = a + b;
end