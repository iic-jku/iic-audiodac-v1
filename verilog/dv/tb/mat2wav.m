disp('--------------------------------------------');
disp('MAT2WAV (c) 2021-2022 Harald Pretl, IIC, JKU');
disp('--------------------------------------------');
disp('');
disp('This tool converts a binary bitstream from a Verilog');
disp('simulation in .mat into a .wav file for hearing check.');
disp('');
disp('Important: The parameters osr and fs_audio');
disp('           have to match the simulation parameters!');
disp('');
clear;
pkg load signal;

% name of audio track
% -------------------
bin_file_in  = 'verilog_bin_out.mat';
audio_file_out = 'verilog_audio_out.wav';

% parameters
% ----------
n = 16; % no of bits; we represent data as unsigned integer
osr = 128;
fs_audio = 44100;

% read binary input file
% ----------------------
disp(strcat('Step 1: Read binary mat-file, filename=',bin_file_in));

load(bin_file_in, 'veri_data');
no_samples = length(veri_data);
out_sd = veri_data';

% decimate audio for playback, and scale according to input
% ---------------------------------------------------------
% we use a halfband filter approach to decimate
filt1 = fir1(osr, 1/osr);
filt2 = fir1(osr/4, 4/osr);
temp1 = fftfilt(filt1, out_sd);
temp2 = temp1(1:2:length(temp1));
temp3 = fftfilt(filt1, temp2);
temp4 = temp3(1:2:length(temp3));
temp5 = fftfilt(filt2, temp4);
out_sd_dec = temp5(1:(osr/4):length(temp5));
% now get back to audio track format
track_out = (out_sd_dec - mean(out_sd_dec)); % remove dc
track_out = min(0.999,track_out); % clip max
track_out = max(-0.999,track_out); % clip min

% write resulting audio track
% ---------------------------
disp(strcat('Step 2: Write audio file, filename=',audio_file_out));
audiowrite(audio_file_out,track_out',fs_audio);

% byebye
% ------
disp('');
disp('Done, bye!');
