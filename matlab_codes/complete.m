%%%%%%%%%%%%% Signal Processing %%%%%%%%%%
%%%       Project: ECG Simulator       %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%--------------Group 3---------------%%%
%%% Nguyen Duc Nghia, Nguyen Quynh My  %%%
%%% Nguyen Le Hung Dung, Vo Van Hung   %%%
%%% Nguyen Ly Quynh Nhu                %%%
%%%------------Main Code---------------%%%

%From 0.01 to 2 with a step size of 0.01
x=0.01:0.01:2;

fprintf('\t \t MENU \t \t \n');
fprintf('1. Sample Abnormal ECG Signal\n');
fprintf('2. Sample Normal ECG Signal\n');
fprintf('3. Sample Heart Attack Patient ECG Signal\n');
fprintf('4. Input new ECG Signal\n');
default = input('Your Choose: \n'); 
if( default == 1)
    %Sample Signal
    
    %Displacement(Ly do) - If your heartbeat goes up, li goes down and vice versa.
      li=30/72;  
    
    %Sample p wave
      a_pwav=0.25;
      d_pwav=0.09;
      t_pwav=0.16;  
    
    %Sample q wave  
      a_qwav=0.025;
      d_qwav=0.066;
      t_qwav=0.166;
      
    %Sample qrs complex
      a_qrswav=1.6;
      d_qrswav=0.11;
    
    %Sample s wave
      a_swav=0.25;
      d_swav=0.066;
      t_swav=0.09;
      
    %Sample t wave
      a_twav=0.35;
      d_twav=0.142;
      t_twav=0.2;
      
    %Sample u wave
      a_uwav=0.035;
      d_uwav=0.0476;
      t_uwav=0.433;
      
else if(default == 2)
        
    %Displacement(Ly do) - If your heartbeat goes up, li goes down and vice versa.
      li=30/72; 
      
    %Sample p wave
      a_pwav=0.25;
      d_pwav=0.09;
      t_pwav=0.16;
    
    %Sample q wave  
      a_qwav=0.125;
      d_qwav=0.03;
      t_qwav=0.06; 
      
    %Sample qrs2complex
      a_qrswav=1.6;
      d_qrswav=0.11;
      
    %Sample s wave
      a_swav=0.25;
      d_swav=0.066;
      t_swav=0.09;
      
    %Sample t wave
      a_twav=0.35;
      d_twav=0.142;
      t_twav=0.2;
      
    %Sample u wave
      a_uwav=0.035;
      d_uwav=0.0476;
      t_uwav=0.433;
    else if(default == 3)
      %Displacement(Ly do) - If your heartbeat goes up, li goes down and vice versa.
      li=30/72; 
      
      %Sample p wave
      a_pwav=0.25;
      d_pwav=0.09;
      t_pwav=0.16;
    
    %Sample q wave  
      a_qwav=0.125;
      d_qwav=0.03;
      t_qwav=0.06; 
      
    %Sample qrs complex
      a_qrswav=1.6;
      d_qrswav=0.11;
      
    %Sample s wave
      a_swav=0.25;
      d_swav=0.066;
      t_swav=0.09;
      
    %Sample t wave
      a_twav=0.35;
      d_twav=0.125;
      t_twav=0.4;
      
    %Sample u wave
      a_uwav=-0.06;
      d_uwav=0.0476;
      t_uwav=0.433;  
    
    
      
else
    rate=input('\n\nenter the heart beat rate :');
    li=30/rate;
    
    %p wave specifications
    fprintf('\n\np wave specifications\n');
    d=input('Enter 1 for default specification else press 2: \n');
    if(d==1)
        a_pwav=0.25;
        d_pwav=0.09;
        t_pwav=0.16;
    else
       a_pwav=input('amplitude = ');
       d_pwav=input('duration = ');
       t_pwav=input('p-r interval = ');
       %d=0;
    end    
    
    
    %q wave specifications
    fprintf('\n\nq wave specifications\n');
    d=input('Enter 1 for default specification else press 2: \n');
    if(d==1)
        a_qwav=0.025;
        d_qwav=0.066;
        t_qwav=0.166;
    else
       a_qwav=input('amplitude = ');
       d_qwav=input('duration = ');
       t_qwav=0.166;
       %d=0;
    end    
    
    
    
    %qrs wave specifications
    fprintf('\n\nqrs wave specifications\n');
    d=input('Enter 1 for default specification else press 2: \n');
    if(d==1)
        a_qrswav=1.6;
        d_qrswav=0.11;
    else
       a_qrswav=input('amplitude = ');
       d_qrswav=input('duration = ');
       %d=0;
    end    
    
    
    
    %s wave specifications
    fprintf('\n\ns wave specifications\n');
    d=input('Enter 1 for default specification else press 2: \n');
    if(d==1)
        a_swav=0.25;
        d_swav=0.066;
        t_swav=0.09;
    else
       a_swav=input('amplitude = ');
       d_swav=input('duration = ');
       t_swav=0.09;
       %d=0;
    end    
    
    
    %t wave specifications
    fprintf('\n\nt wave specifications\n');
    d=input('Enter 1 for default specification else press 2: \n');
    if(d==1)
        a_twav=0.35;
        d_twav=0.142;
        t_twav=0.2;
    else
       a_twav=input('amplitude = ');
       d_twav=input('duration = ');
       t_twav=input('s-t interval = ');
       %d=0;
    end    
    
    
    %u wave specifications
    fprintf('\n\nu wave specifications\n');
    d=input('Enter 1 for default specification else press 2: \n');
    if(d==1)
        a_uwav=0.035;
        d_uwav=0.0476;
        t_uwav=0.433;
    else
       a_uwav=input('amplitude = ');
       d_uwav=input('duration = ');
       t_uwav=0.433;
       %d=0;
    end    
    
        end
    end
end

 %pwav output
 pwav=p_wav(x,a_pwav,d_pwav,t_pwav,li);

 
 %qwav output
 qwav=q_wav(x,a_qwav,d_qwav,t_qwav,li);

    
 %qrswav output
 qrswav=qrs_wav(x,a_qrswav,d_qrswav,li);

 %swav output
 swav=s_wav(x,a_swav,d_swav,t_swav,li);

 
 %twav output
 twav=t_wav(x,a_twav,d_twav,t_twav,li);

 
 %uwav output
 uwav=u_wav(x,a_uwav,d_uwav,t_uwav,li);

 %ecg output
 ecg=pwav+qrswav+twav+swav+qwav+uwav;
 

 
 figure(1); 
 plot(x,ecg);
 ylabel('Voltage(mV)'); title('The First ECG signal');
 
 
 %figure(2);
 %plot(x,ecg2)
 %ylabel('Voltage(mV)'); title('The Second ECG signal');
 
 %figure(3);
 %plot(x,ecg,'black',x,ecg2,'red');
 %ylabel('Voltage(mV)'); title('The Comparison of two ECG signal');
 