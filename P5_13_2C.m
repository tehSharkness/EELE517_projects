close all
clear all

rho_c = 415;

del_kr = .01;

kr = [del_kr : del_kr : 2];

z = 1i * rho_c * besselh(0,2,kr)./besselh(1,2,kr);

figure(1)
plot(kr,abs(z)),xlabel('kr'),ylabel('|z|')

figure(2)
plot(kr,abs(rho_c-abs(z))/rho_c)
xlabel('kr'),ylabel('% difference between rho_c and |z|')