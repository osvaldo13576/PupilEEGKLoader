%gen figs

function [] = gen_figs_pdf(directorio_export,ID,canal_name,t,freq,datos1,datos2,datos3,datos4,respuesta)
    f=figure('Position',[100 100 700 500],'visible','off');
    sgtitle(['Canal: ' canal_name ', ' respuesta])
    y_eegMAX = max(max(datos1,datos2));
    y_fftMAX = max(max(datos3,datos4));
    y_eegMIN = min(min(datos1,datos2));
    y_fftMIN = min(min(datos3,datos4));
    
    subplot(2,2,1)
    plot(t,datos1)
    ylim([y_eegMIN, y_eegMAX]);
    ylabel('$\mu\;V$','Interpreter','latex');xlabel('tiempo $s$','Interpreter','latex')

    subplot(2,2,2)
    plot(t,datos2)
    ylim([y_eegMIN, y_eegMAX]);
    ylabel('$\mu\;V$','Interpreter','latex');xlabel('tiempo $s$','Interpreter','latex')
    
    subplot(2,2,3)
    plot(freq,datos3)
    ylim([y_fftMIN, y_fftMAX]);
    xlim([1,30]);
    ylabel('Potencia/Frecuencia $dB/Hz$','Interpreter','latex');xlabel('frecuencia $Hz$','Interpreter','latex')

    subplot(2,2,4)
    plot(freq,datos4)
    ylim([y_fftMIN, y_fftMAX]);
    xlim([1,30]);
    ylabel('Potencia/Frecuencia $dB/Hz$','Interpreter','latex');xlabel('frecuencia $Hz$','Interpreter','latex')
    %export_fig(f,fullfile(directorio_export,[respuesta '_' canal_name '_' ID '.pdf']), '-native');
    exportgraphics(f,fullfile(directorio_export,[respuesta '_' canal_name '_' ID '.jpg']));
end
