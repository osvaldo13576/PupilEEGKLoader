%busca los archivos relacionados con eeg24, su timestamp y la tarea
%directorio = 'C:\Users\HP\Documents\c3 data\SANTIAGO_ID_0000009';
function c = validador_eeg24_tarea(directorio)
    eegfile = EEGdata_finder(fullfile(directorio,'eeg_tarea'));
    Emo_Flechasfile = EmoFlechas_finder(fullfile(directorio,'eeg_tarea'));
    set = length(eegfile)*length(Emo_Flechasfile);
    if set == 0
        c_eeg = 0;
    else
        c_eeg = 1;
    end
    if isarchivo(fullfile(directorio,'eeg_tarea'),'eeg_timestamp.txt') == 1
            c1 = 1;
        else
            c1 = 0;
    end
    c = c_eeg*c1;
end