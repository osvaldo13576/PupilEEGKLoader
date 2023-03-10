% relaciona los vectores de tiempo de los datos EEG y Emo_Flechas
function index_pupil = sync_EEG_pupil_2(datos_tiempo,pupil_data_time,pupil_timestamp)
    %pupil_data=readmatrix(directorio_pupil,'NumHeaderLines',1);
    pupil_time = pupil_data_time + pupil_timestamp;
    index_pupil = zeros(length(datos_tiempo),1);
    for i = 1:length(datos_tiempo)
            [~,I] = min(abs(pupil_time-datos_tiempo(i)));
            index_pupil(i) = I; 
    end
end