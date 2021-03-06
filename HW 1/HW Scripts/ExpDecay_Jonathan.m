% Problem 1.4.2
% Plot the solution of the continuous model
format longG %convert 1+e0 to more readable numbers for troubleshooting
I0 = 10; % initial condition
delta_t = input(' time interval in 10 minute intervals, delta_t = '); %?t is 1/10 minute
t  = [0:delta_t:15];
nt = length(t)
alpha = .3; % rate parameter
I_cont(1) = I0;
I_cont = I0*exp(-alpha*t);   % continuous solution
%I(t+del_T) = I(t)exp(alpha*t)


% Here, write a short piece of MATLAB code that compute the difference
% equation solution I_disc. You will need to use a for loop.
N = length(I_cont);
I_disc(1) = I0 %defining the intial parameter
for i = 1:N-1;
    I_disc(i+1) = I_disc(i) - alpha*delta_t*I_disc(i); % my discrete model for decay
end

length(I_disc)
length(I_cont)

I_disc'
I_cont'

%N = nt;                  % specify N
%powerof2(1) = 1;        %initialization (zero power)
%for i = 1:N             % same as for i = 1:1:N
%powerof2(i+1) = 2^i; 	%statement
%end                     %end of "for" loop 
%powerof2'


figure(1)
  %plot(t,I_cont,'r',t,I_disc,'b')
  plot(t,I_cont,'r',t,I_disc,'o') % use this once you have I_disc

  clear all