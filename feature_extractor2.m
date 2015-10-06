% d: audio data, sr: sample rate
function result = feature_extractor2(d,sr)
    [result,aspc] = melfcc(d*3.3752, sr, 'maxfreq', 8000, ...
        'numcep', 13, 'nbands', 22, 'fbtype', 'fcmel', 'dcttype', 1, ...
        'usecmp', 1, 'wintime', 0.032, 'hoptime', 0.016, 'preemph', 0,...
        'dither', 1);
    % Reverse
%     [im,ispc] = invmelfcc(result, sr, 'maxfreq', 8000, 'numcep', 20, ...
%         'nbands', 22, 'fbtype', 'fcmel', 'dcttype', 1, 'usecmp', 1, ...
%         'wintime', 0.032, 'hoptime', 0.016, 'preemph', 0, 'dither', 1);
    % Testing
%     soundsc(im,sr);
end