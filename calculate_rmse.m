function [rmse, nrmse] = calculate_rmse(actual, predicted, szn_length)
    actual(1:szn_length) = [];        % excluding the first season from
    predicted(1:szn_length) = [];     % rmse calculations as no forecasts
    error = actual - predicted;       % were done in the first season.
    N = numel(error);
    err_sq = error.^2;
    err_sum = sum(err_sq);
    err_mean = err_sum/N;
    rmse = sqrt(err_mean);
    nrmse = rmse/(max(actual)-min(actual));
end