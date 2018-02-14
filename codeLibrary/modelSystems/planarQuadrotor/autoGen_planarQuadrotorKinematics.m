function [p0,p1,p2,p1v,p2v] = autoGen_planarQuadrotorKinematics(x,y,q,u1,u2,m,w,g)
%AUTOGEN_PLANARQUADROTORKINEMATICS
%    [P0,P1,P2,P1V,P2V] = AUTOGEN_PLANARQUADROTORKINEMATICS(X,Y,Q,U1,U2,M,W,G)

%    This function was generated by the Symbolic Math Toolbox version 7.2.
%    14-Feb-2018 07:35:25

p0 = [x;y];
if nargout > 1
    t2 = cos(q);
    t3 = t2.*w.*(1.0./2.0);
    t4 = sin(q);
    t5 = t4.*w.*(1.0./2.0);
    p1 = [t3+x;t5+y];
end
if nargout > 2
    p2 = [-t3+x;-t5+y];
end
if nargout > 3
    t6 = 1.0./g;
    t7 = 1.0./m;
    t8 = 1.0./w;
    p1v = [t3+x+t4.*t6.*t7.*t8.*u1.*(1.0./8.0);t5+y-t2.*t6.*t7.*t8.*u1.*(1.0./8.0)];
end
if nargout > 4
    p2v = [-t3+x+t4.*t6.*t7.*t8.*u2.*(1.0./8.0);-t5+y-t2.*t6.*t7.*t8.*u2.*(1.0./8.0)];
end
