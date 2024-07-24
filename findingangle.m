n=input('Vector in R(n): ');
f_v = zeros(n, 1);
s_v=zeros(n,1);

for i = 1:n
    f_v(i) = input(['Enter component of first the vector: ']);
end
for m=1:n
    s_v(m)=input(['Enter components of the second vector: ']);
end

dp=dot(f_v,s_v);
length1=sqrt(dot(f_v,f_v));
length2=sqrt(dot(s_v,s_v));

rhs=(dp/(length1*length2));
costheta=rhs;
theta=acos(rhs);

if n==2
    quiver(0,0, f_v(1), f_v(2), 'b');
    hold on;
    quiver(0,0, s_v(1), s_v(2), 'r');
    xlim([-10, 10]);
    ylim([-10, 10]);
    xlabel('X-axis');
    ylabel('Y-axis');
    title('Two 2D Vectors Plot');
    legend('Vector 1', 'Vector 2');
    grid on;, f_v(1), f_v(2), 'b'
    hold off;
elseif n==3
    quiver3(0,0,0, f_v(1), f_v(2),f_v(3), 'b');
    quiver3(0,0,0, s_v(1), s_v(2),s_v(3), 'r');
    xlim([-10, 10]);
    ylim([-10, 10]);
    zlim([-10,10]);
    xlabel('X-axis');
    ylabel('Y-axis');
    zlabel('Z-axis');
    title('Two 3D Vectors Plot');
    grid on;
    hold off;
end
