func = @(x) (668.06.*(1-exp(-0.146843.*x))./x)-40;

x_lower = 12;
x_upper = 16;


x_mid = (x_lower + x_upper)/2;



while abs(func(x_mid)) > 0.01
    disp('x_lower    x_upper    x_mid    f(x_mid)')
    disp([x_lower', x_upper', x_mid', func(x_mid)',])
    if (func(x_mid) * func(x_upper)) < 0
        x_lower = x_mid;
    else 
        x_upper = x_mid;
    end 
    x_mid = (x_lower + x_upper)/2;
    
end 

fprintf('The root of the function is %5.4f', x_mid)