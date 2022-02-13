disp('--------------------------------------------');
disp('WAV2HEX (c) 2021-2022 Harald Pretl, IIC, JKU');
disp('--------------------------------------------');
disp('');
disp('This tool converts a .wav file into a hex');
disp('file which can be read in a Verilog simulation.');
disp('');
clear;

% name of audio track
% -------------------
audio_file_in  = 'testaudio.wav';
txt_file_out = 'testaudio.txt';

% parameters
% ----------
n = 16; % no of bits; we represent data as unsigned integer
use_sine = false;

% read test audio file, is signed .wav (+1...-1)
% ----------------------------------------------
if use_sine == false
  disp(strcat('Step 1: Read audio file, filename=', audio_file_in));
  [track_in, fs_audio] = audioread(audio_file_in);
  track_in = track_in';
else
  disp('Step 1: Generate 441Hz sine tone with 60% fullscale');
  fs_audio = 44100;
  t_sin = (0:fs_audio-1)/fs_audio;
  track_in = 0.6 * sin(2*pi * 441 * t_sin);
end % if 
  
disp(strcat('Info: fs=',num2str(fs_audio),'Hz'))
% remove dc
track_in = track_in - mean(track_in); % remove dc
% scale track (signed float to unsigned int by adding offset)
u = round((track_in+1)*2^(n-1));

% write test txt file in hex numbers
% ----------------------------------
no_samples = length(u);
progress_step=round(no_samples/10);

disp(strcat('Step 2: Write output file, filename=', txt_file_out));

fid = fopen (txt_file_out, "w");
for i = 1:1:length(u)
  if (rem(i,progress_step) == 0)
      disp(strcat('  ',num2str(round(i/no_samples*100)),'%'));
    end % if
    
  fdisp (fid, dec2hex(u(i), 4));
end
fclose(fid);

% byebye
% ------
disp('');
disp('Done, bye!');
