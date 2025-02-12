create table dim_tempo (
                sk_tempo integer not null,
                data_completa date not null,
                data_completa_formatada varchar(60) not null,
                nr_ano integer not null,
                nm_trimestre varchar(20) not null,
                nr_ano_trimestre varchar(20) not null,
                nr_mes integer not null,
                nm_mes varchar(20) not null,
                nr_ano_nr_mes varchar(20) not null,
                nr_semana integer not null,
                nr_ano_nr_semana varchar(20) not null,
                nr_dia integer not null,
                nr_dia_ano integer not null,
                nm_dia_semana varchar(20) not null,
                flag_final_semana char(3) not null,
                flag_feriado char(3) not null,
                nm_feriado varchar(60) not null,
                dt_carga timestamp not null,
                constraint sk_tempo_pk primary key (sk_tempo)
);
