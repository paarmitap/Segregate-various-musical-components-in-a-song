[audio_in,audio_freq_sampl]=audioread('qgndh-qvfm6.wav');

y=audio_in(:,2);
z=audio_in(:,1);

Length_audio=length(y);
df=audio_freq_sampl/Length_audio;

frequency_audio=-audio_freq_sampl/2:df:audio_freq_sampl/2-df;

FFT_audio_in=fftshift(fft(audio_in))/length(fft(audio_in));
 
figure;
sound(y,audio_freq_sampl);

plot(frequency_audio,abs(FFT_audio_in));

 title('FFT of Input Audio');

xlabel('Frequency(Hz)');

ylabel('Amplitude');


FFT_audio_in_1=fftshift(fft(y))/length(fft(y));
FFT_audio_in_2=fftshift(fft(z))/length(fft(z));
  

% plot(frequency_audio,abs(FFT_audio_in_1));
% 
%  title('FFT of one channel');
% 
% xlabel('Frequency(Hz)');
% 
% ylabel('Amplitude');



% a16=zeros(1323000,1);
% for i=1:1323000
%     if(i>=500000 && i<=600000) || (i>=700000 && i<=800000) || (i>=800000 && i<=900000)
%         a16(i,1)=FFT_audio_in_1(i,1);
%     end
% end
% audio16_in=ifft(ifftshift(a16*length(a16)));
% d16=(audio16_in+transpose(ctranspose(audio16_in)));
% sound(d16,audio_freq_sampl)
% figure
% plot(d16)
% title('GUITAR')
% audiowrite('guitar.wav',d16,audio_freq_sampl)
% %Guitar

%  unv= FFT_audio_in_2-FFT_audio_in_1;
%  a1=zeros(1323000:1);
%  for i=1:1323000
%    
%          a1(i,1)=unv(i,1);
%      
%  end
%  audio2_in=ifft(ifftshift(a1*length(a1)));
%  
%  d1=(audio2_in+transpose(ctranspose(audio2_in)));
%  sound(d1,audio_freq_sampl)
%  figure
%  plot(d1)
%  title('guitar with compressed human voice');
% audiowrite('guitar 2.wav',d16,audio_freq_sampl)
% % Guitar with compressed human voice

% a6=zeros(1323000,1);
% for i=1:1323000
%     if(i>=1000000 && i<=1100000) || (i>=200000 && i<=300000)
%         a6(i,1)=FFT_audio_in_1(i,1);
%     end
% end
% audio6_in=ifft(ifftshift(a6*length(a6)));
% d6=(audio6_in+transpose(ctranspose(audio6_in)));
% sound(d6,audio_freq_sampl)
% figure
% plot(d6)
% title('Bell sound')
% audiowrite('bell.wav',d16,audio_freq_sampl)
% %Bell sound

% a15=zeros(1323000,1);
% for i=1:1323000
%     if(i>=631500 && i<=691500)
%         a15(i,1)= FFT_audio_in_1(i,1);
%     end
% end
% audio15_in=ifft(ifftshift(a15*length(a15)));
% d15=(audio15_in+transpose(ctranspose(audio15_in)));
% sound(d15,audio_freq_sampl)
% figure
% plot(d15)
% title('human voice')
% audiowrite('human.wav',d16,audio_freq_sampl)
% %Human voice

