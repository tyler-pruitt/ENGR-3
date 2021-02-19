function show(T,S)

trisurf(T,S(1,:),S(2,:),S(3,:),'FaceColor','cyan','FaceAlpha', 0.8);

axis([-120 120 -120 120 -120 120])

xlabel('x')
ylabel('y')
zlabel('z')

end
