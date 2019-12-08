height = input('The height applies to the surface: ');
velocity = input('The initial velocity of the body: ');
angle = input('Angle the initial height emerged: ');
accelerationhorizontal = input('Body acceleration in the x-axis: ');
accelerationvertical = input('Body acceleration in the y-axis: ');
abav = abs(accelerationvertical);
velocityhorizontal = velocity*cosd(angle); 
velocityvertical = velocity*sind(angle); 

if accelerationvertical == 0
    antizero = ':0 Do not input zero value body acceleration value in the y-axis acceleration :) '; 
    error(antizero)

end


if height == 0 
    time = (2*velocityvertical)/abav; 
    time1 = (0:0.01:time);
    vaht = (velocityhorizontal.*time1)+((1/2).*accelerationhorizontal.*time1.^2);
    vavt = (velocityvertical.*time1)+((1/2).*accelerationvertical.*time1.^2);
    plot(vaht,vavt,'r','linewidth',1)
    title('Projectile Trajectory')
    grid on
    xlabel('Range')
    ylabel('Height')
else 
    vva = ((velocityvertical^2))/2*abav; 
    time = (-velocityvertical+sqrt(velocityvertical^2-4*(1/2)*abs(accelerationvertical)*(height-vva)))/abav; 
    time1 = (0:0.01:time);
    vaht = (velocityhorizontal.*time1)+((1/2).*accelerationhorizontal.*time1.^2);
    vavt = (velocityvertical.*time1)+((1/2).*accelerationvertical.*time1.^2)+height;
    plot(vaht,vavt,'r','linewidth',1)
    title('Projectile Trajectory')
    grid on 
    xlabel('Range')
    ylabel('Height') 
end