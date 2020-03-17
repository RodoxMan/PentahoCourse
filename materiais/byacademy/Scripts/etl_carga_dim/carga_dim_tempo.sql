
--- insere na tabela ---
insert into dim_tempo
select to_number(to_char(datum,'yyyymmdd'), '99999999') as sk_tempo,
		 datum as data,
		 to_char(datum,'dd/mm/yyyy') as data_completa_formatada,
		 extract (year from datum) as nr_ano,
		  'T' || to_char(datum, 'q') as nm_trimestre,
		 to_char(datum, '"T"q/yyyy') as nr_ano_trimenstre,
		 extract(month from datum) as nr_mes,
		 to_char(datum, 'tmMonth') as nm_mes,
		 to_char(datum, 'yyyy/mm') as nr_ano_nr_mes,
		 extract(week from datum) as nr_semana,
		 to_char(datum, 'iyyy/iw') as nr_ano_nr_semana,
		 extract(day from datum) as nr_dia,
		 extract(doy from datum) as nr_dia_ano,
		 to_char(datum, 'tmDay') as nm_dia_semana,
		 case when extract(isodow from datum) in (6, 7) then 'Sim' else 'Não'
		 end as flag_final_semana,
		 case when to_char(datum, 'mmdd') in ('0101','1225') then 'Sim' else 'Não'
		 end as flag_feriado,
		 case when to_char(datum, 'mmdd') = '0101' then 'Ano Novo' when to_char(datum, 'mmdd') = '1225' then 'Natal' else 'Não é Feriado'
		 end as nm_feriado,
		 current_date as data_carga
		 from (
			 select '2010-01-01'::date + sequence.day as datum
			 from generate_series(0,5479) as sequence(day)
			 group by sequence.day
			     ) dq
		order by  1 desc;


		select * from dim_tempo;
