sqlcmd -S {nombre_servidor_sql2022} ^
  -i gd_esquema.Schema.sql,gd_esquema.Maestra.sql,gd_esquema.Maestra.Table.sql ^
  -a 32767 ^
  -o resultado_output.txt