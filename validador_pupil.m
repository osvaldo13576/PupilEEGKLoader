% regresa un valor lógico si el directorio cumple con todas las condiciones (datos pupil)
function c=validador_pupil(directorio)
    %directorio = 'C:\Users\HP\Documents\c3 data\SANTIAGO_ID_0000009';
    % reviamos las carpetas en el directorio isdir
    %buscamos el primer archivo en el directorio info.player.json
    if isarchivo(directorio,'info.player.json') == 1
        c1 = 1;
    else
        c1 = 0;
    end
    %buscamos el primer archivo en el directorio /export_data/pupil_positions.csv
    if isarchivo(fullfile(directorio,'export_data'),'pupil_positions.csv') == 1
        c2 = 1;
    else
        c2 = 0;
    end
    %buscamos el primer archivo en el directorio /export_data/surfaces/gaze_positions_on_surface_Surface 1_.csv
    file = file_finder(fullfile(directorio,'export_data','surfaces'),'gaze_positions_on_surface');
    if isarchivo(fullfile(directorio,'export_data','surfaces'),file) == 1
        c3 = 1;
    else
        c3 = 0;
    end
    c=c1*c2*c3;
end