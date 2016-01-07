#!/usr/bin/awk -f
# Autor: Emerson dos Santos Queiroz
# Email: son.queiroz@gmail.com

BEGIN {
FS=" "
}

# Numeros Locais
{

	tipo="* SALVADOR LOCAL"
	
	if (($4 ~ /^[2-5][0-9]{7}$/ ) || ($4 ~/^(0300)/))
	{
		# Codigo III - Coluna 176
		col176=substr($0,176,4)
		
		# Local Destino - Coluna 180-230
		col180_230=substr($0,180,51)

		# Nome da Loja - Coluna 231-272
		col231_272=substr($0,231,41)

		# Ramal - Coluna 272-322
		col272_322=substr($0,272,51)
		
		# Codigo IV - Coluna 323 
		col323=substr($0,323,1)
		
		# Codigo V Coluna 374 - 380
		col374_380=substr($0,374,6)
		
		#Concerta Erro -11
		if (col176 ~ /^-/){col176="1   "}
		
	if ($7 <= 60)
		{
		taxa=0.15
		printf ("%-11s%-4s%-21s%-21s%-11s%-9s%-11d%-6s%-48s%-12.2f%-21s%s%s%-41s%s%-51s%-509s\n",$1,$2,$3,$4,$5,$6,$7,$8,$9,taxa,tipo,col176,col180_230,col231_272,col272_322,col323,col374_380)
		}
		else
		{
		taxa=0.15
		var=$7
		preco=((taxa*var)/60)
		printf ("%-11s%-4s%-21s%-21s%-11s%-9s%-11d%-6s%-48s%-12.2f%-21s%s%s%-41s%s%-51s%-509s\n",$1,$2,$3,$4,$5,$6,$7,$8,$9,preco,tipo,col176,col180_230,col231_272,col272_322,col323,col374_380)

		}
	}


# Numeros Locais com DDD 071
{

	tipo="* SALVADOR LOCAL"
	local="RIO DE JANEIRO"
	if ($4 ~ /^[09]?0?71[2-5][0-9]{7}$/)
	{
		# Codigo III - Coluna 176
		col176=substr($0,176,4)
		
		# Local Destino - Coluna 180-230
		col180_230=substr($0,180,51)

		# Nome da Loja - Coluna 231-272
		col231_272=substr($0,231,41)

		# Ramal - Coluna 272-322
		col272_322=substr($0,272,51)
		
		# Codigo IV - Coluna 323 
		col323=substr($0,323,1)
		
		# Codigo V Coluna 374 - 380
		col374_380=substr($0,374,6)
		
		#Concerta Erro -11
		if (col176 ~ /^-/){col176="1   "}
				
		if ($7 <= 60)
        	{
        	taxa=0.15
		printf ("%-11s%-4s%-21s%-21s%-11s%-9s%-11d%-6s%-48s%-12.2f%-21s%s%s%-41s%s%-51s%-509s\n",$1,$2,$3,$4,$5,$6,$7,$8,$9,taxa,tipo,col176,col180_230,col231_272,col272_322,col323,col374_380)
		}
        	else
        	{
        	taxa=0.15
        	var=$7
        	preco=((taxa*var)/60)
		printf ("%-11s%-4s%-21s%-21s%-11s%-9s%-11d%-6s%-48s%-12.2f%-21s%s%s%-41s%s%-51s%-509s\n",$1,$2,$3,$4,$5,$6,$7,$8,$9,preco,tipo,col176,col180_230,col231_272,col272_322,col323,col374_380)
         	}

	}
}

# Numeros Locais com Operadora mais DDD 071
{

	tipo="* SALVADOR LOCAL"
	local="RIO DE JANEIRO"
	if ($4 ~ /^[09]?0(15|31|21|41|32|23|12|43|17|25)71[2-5][0-9]{7}$/)
	{
		# Codigo III - Coluna 176
		col176=substr($0,176,4)
		
		# Local Destino - Coluna 180-230
		col180_230=substr($0,180,51)

		# Nome da Loja - Coluna 231-272
		col231_272=substr($0,231,41)

		# Ramal - Coluna 272-322
		col272_322=substr($0,272,51)
		
		# Codigo IV - Coluna 323 
		col323=substr($0,323,1)
		
		# Codigo V Coluna 374 - 380
		col374_380=substr($0,374,6)
		
		#Concerta Erro -11
		if (col176 ~ /^-/){col176="1   "}
		
		if ($7 <= 60)
        	{
        	taxa=0.15
		printf ("%-11s%-4s%-21s%-21s%-11s%-9s%-11d%-6s%-48s%-12.2f%-21s%s%s%-41s%s%-51s%-509s\n",$1,$2,$3,$4,$5,$6,$7,$8,$9,taxa,tipo,col176,col180_230,col231_272,col272_322,col323,col374_380)
		}
		else
		{
		taxa=0.15
                var=$7
                preco=((taxa*var)/60)
		printf ("%-11s%-4s%-21s%-21s%-11s%-9s%-11d%-6s%-48s%-12.2f%-21s%s%s%-41s%s%-51s%-509s\n",$1,$2,$3,$4,$5,$6,$7,$8,$9,preco,tipo,col176,col180_230,col231_272,col272_322,col323,col374_380)
		}
	}
}


# Numeros VC1
{
	tipo="* SALVADOR VC1"
	local="AREA 071 - CEL (071)"
	if (($4 ~ /^[09]?(9)[2-9][0-9]{7}$/) || ($4 ~ /^[09]?[6-9][0-9]{7}$/))
	{
		# Codigo III - Coluna 176
		col176=substr($0,176,4)
		
		# Local Destino - Coluna 180-230
		col180_230=substr($0,180,51)

		# Nome da Loja - Coluna 231-272
		col231_272=substr($0,231,41)

		# Ramal - Coluna 272-322
		col272_322=substr($0,272,51)
		
		# Codigo IV - Coluna 323 
		col323=substr($0,323,1)
		
		# Codigo V Coluna 374 - 380
		col374_380=substr($0,374,6)
		
		#Concerta Erro -11
		if (col176 ~ /^-/){col176="1   "}
		
		if ($7 <=30)
		{
		taxa=0.44
		printf ("%-11s%-4s%-21s%-21s%-11s%-9s%-11d%-6s%-48s%-12.2f%-21s%s%s%-41s%s%-51s%-509s\n",$1,$2,$3,$4,$5,$6,$7,$8,$9,taxa,tipo,col176,col180_230,col231_272,col272_322,col323,col374_380)
		}
		else
		{
		taxa=0.89
		var=$7
		preco=((taxa*var)/60)
		printf ("%-11s%-4s%-21s%-21s%-11s%-9s%-11d%-6s%-48s%-12.2f%-21s%-4s%s%-41s%s%-51s%-509s\n",$1,$2,$3,$4,$5,$6,$7,$8,$9,preco,tipo,col176,col180_230,col231_272,col272_322,col323,col374_380)
		}
	}
}

# Numeros VC1 com DDD 071
{

	tipo="* SALVADOR VC1"
	local="AREA 071 - CEL (071)"
	if (($4 ~ /^[09]?0?71(9)[2-9][0-9]{7}$/) || ($4 ~ /^[09]?0?71[6-9][0-9]{7}$/))
	{
		# Codigo III - Coluna 176
		col176=substr($0,176,4)
		
		# Local Destino - Coluna 180-230
		col180_230=substr($0,180,51)

		# Nome da Loja - Coluna 231-272
		col231_272=substr($0,231,41)

		# Ramal - Coluna 272-322
		col272_322=substr($0,272,51)
		
		# Codigo IV - Coluna 323 
		col323=substr($0,323,1)
		
		# Codigo V Coluna 374 - 380
		col374_380=substr($0,374,6)
		
		#Concerta Erro -11
		if (col176 ~ /^-/){col176="1   "}
		
		if ($7 <= 30)
        	{
        	taxa=0.44
		printf ("%-11s%-4s%-21s%-21s%-11s%-9s%-11d%-6s%-48s%-12.2f%-21s%s%s%-41s%s%-51s%-509s\n",$1,$2,$3,$4,$5,$6,$7,$8,$9,taxa,tipo,col176,col180_230,col231_272,col272_322,col323,col374_380)
		}
		else
		{
		taxa=0.89
		var=$7
		preco=((taxa*var)/60)
		printf ("%-11s%-4s%-21s%-21s%-11s%-9s%-11d%-6s%-48s%-12.2f%-21s%s%s%-41s%s%-51s%-509s\n",$1,$2,$3,$4,$5,$6,$7,$8,$9,preco,tipo,col176,col180_230,col231_272,col272_322,col323,col374_380)
		}
	
	}
}


# Numeros VC1 com Operadoras mais DDD 071
{

	tipo="* SALVADOR VC1"
	local="AREA 071 - CEL (071)"
	if ($4 ~ /^[09]?0(15|31|21|41|32|23|12|43|17|25)71[6-9][0-9]{7}$/)
	{
		# Codigo III - Coluna 176
		col176=substr($0,176,4)
		
		# Local Destino - Coluna 180-230
		col180_230=substr($0,180,51)

		# Nome da Loja - Coluna 231-272
		col231_272=substr($0,231,41)

		# Ramal - Coluna 272-322
		col272_322=substr($0,272,51)
		
		# Codigo IV - Coluna 323 
		col323=substr($0,323,1)
		
		# Codigo V Coluna 374 - 380
		col374_380=substr($0,374,6)
		
		#Concerta Erro -11
		if (col176 ~ /^-/){col176="1   "}
		if ($7 <= 30)
        	{
        	taxa=0.44
		printf ("%-11s%-4s%-21s%-21s%-11s%-9s%-11d%-6s%-48s%-12.2f%-21s%s%s%-41s%s%-51s%-509s\n",$1,$2,$3,$4,$5,$6,$7,$8,$9,taxa,tipo,col176,col180_230,col231_272,col272_322,col323,col374_380)
		}
		else
		{
		taxa=0.89
		var=$7
		preco=((taxa*var)/60)
		printf ("%-11s%-4s%-21s%-21s%-11s%-9s%-11d%-6s%-48s%-12.2f%-21s%-4s%s%-41s%s%-51s%-509s\n",$1,$2,$3,$4,$5,$6,$7,$8,$9,preco,tipo,col176,col180_230,col231_272,col272_322,col323,col374_380)
		}
	}
}




# Numeros VC2

 {
	 tipo="* SALVADOR VC2"
	 local="AREA 024 - CEL (247)"
	if (($4 ~ /^[09]?0?(73|74|75|77)(9)[2-9][0-9]{7}$/) || ($4 ~ /^[09]?0?(73|74|75|77)[6-9][0-9]{7}$/))
         {
		# Codigo III - Coluna 176
		col176=substr($0,176,4)
		
		# Local Destino - Coluna 180-230
		col180_230=substr($0,180,51)

		# Nome da Loja - Coluna 231-272
		col231_272=substr($0,231,41)

		# Ramal - Coluna 272-322
		col272_322=substr($0,272,51)
		
		# Codigo IV - Coluna 323 
		col323=substr($0,323,1)
		
		# Codigo V Coluna 374 - 380
		col374_380=substr($0,374,6)
		
		#Concerta Erro -11
		if (col176 ~ /^-/){col176="1   "}
	         if ($7 <=30)
                 {
                 taxa=0.61
		printf ("%-11s%-4s%-21s%-21s%-11s%-9s%-11d%-6s%-48s%-12.2f%-21s%s%s%-41s%s%-51s%-509s\n",$1,$2,$3,$4,$5,$6,$7,$8,$9,taxa,tipo,col176,col180_230,col231_272,col272_322,col323,col374_380)
                 }
                 else
                 {
                 taxa=1.22
                 var=$7
                 preco=((taxa*var)/60)
		printf ("%-11s%-4s%-21s%-21s%-11s%-9s%-11d%-6s%-48s%-12.2f%-21s%s%s%-41s%s%-51s%-509s\n",$1,$2,$3,$4,$5,$6,$7,$8,$9,preco,tipo,col176,col180_230,col231_272,col272_322,col323,col374_380)
                 }
         }
 }


# Operadoras mais Numeros VC2

 {
	 tipo="* SALVADOR VC2"
	if (($4 ~ /^[09]?0(15|31|21|41|32|23|12|43|17|25)(73|74|75|77)(9)[2-9][0-9]{7}$/) || ($4 ~ /^[09]?0(15|31|21|41|32|23|12|43|17|25)(73|74|75|77)[6-9][0-9]{7}$/)) 
        {
		# Codigo III - Coluna 176
		col176=substr($0,176,4)
		
		# Local Destino - Coluna 180-230
		col180_230=substr($0,180,51)

		# Nome da Loja - Coluna 231-272
		col231_272=substr($0,231,41)

		# Ramal - Coluna 272-322
		col272_322=substr($0,272,51)
		
		# Codigo IV - Coluna 323 
		col323=substr($0,323,1)
		
		# Codigo V Coluna 374 - 380
		col374_380=substr($0,374,6)
		
		#Concerta Erro -11
		if (col176 ~ /^-/){col176="1   "}
	         if ($7 <=30)
                 {
                 taxa=0.61
		printf ("%-11s%-4s%-21s%-21s%-11s%-9s%-11d%-6s%-48s%-12.2f%-21s%s%s%-41s%s%-51s%-509s\n",$1,$2,$3,$4,$5,$6,$7,$8,$9,taxa,tipo,col176,col180_230,col231_272,col272_322,col323,col374_380)
                 }
                 else
                 {
                 taxa=1.22
                 var=$7
		 preco=((taxa*var)/60)
		printf ("%-11s%-4s%-21s%-21s%-11s%-9s%-11d%-6s%-48s%-12.2f%-21s%-4s%s%-41s%s%-51s%-509s\n",$1,$2,$3,$4,$5,$6,$7,$8,$9,preco,tipo,col176,col180_230,col231_272,col272_322,col323,col374_380)
                 }
         }
}


# Numeros VC3

 {
	 tipo="* SALVADOR VC3"
	
        if (($4 ~ /^[09]?0?[1-9]{2}(9)[2-9][0-9]{7}$/)&&($4 !~ /^[09]?(071)(9)[2-9][0-9]{7}$/)&&($4 !~ /^[09]?(073)(9)[2-9][0-9]{7}$/)&&($4 !~ /^[09]?(074)(9)[2-9][0-9]{7}$/)&&($4 !~ /^[09]?(075)(9)[2-9][0-9]{7}$/)&&($4 !~ /^[09]?(077)(9)[2-9][0-9]{7}$/) || ($4 ~ /^[09]?0?[1-9]{2}[6-9][0-9]{7}$/)&&($4 !~ /^[09]?0?(71)[6-9][0-9]{7}$/)&&($4 !~ /^[09]?0?(73)[6-9][0-9]{7}$/)&&($4 !~ /^[09]?0?(74)[6-9][0-9]{7}$/)&&($4 !~ /^[09]?0?(75)[6-9][0-9]{7}$/)&&($4 !~ /^[09]?0?(77)[6-9][0-9]{7}$/))
	{
		# Codigo III - Coluna 176
		col176=substr($0,176,4)
		
		# Local Destino - Coluna 180-230
		col180_230=substr($0,180,51)

		# Nome da Loja - Coluna 231-272
		col231_272=substr($0,231,41)

		# Ramal - Coluna 272-322
		col272_322=substr($0,272,51)
		
		# Codigo IV - Coluna 323 
		col323=substr($0,323,1)
		
		# Codigo V Coluna 374 - 380
		col374_380=substr($0,374,6)
		
		#Concerta Erro -11
		if (col176 ~ /^-/){col176="1   "}
	         if ($7 <=30)
                 {
                 taxa=0.64
		printf ("%-11s%-4s%-21s%-21s%-11s%-9s%-11d%-6s%-48s%-12.2f%-21s%s%s%-41s%s%-51s%-509s\n",$1,$2,$3,$4,$5,$6,$7,$8,$9,taxa,tipo,col176,col180_230,col231_272,col272_322,col323,col374_380)
                 }
                 else
                 {
		 taxa=1.29
                 var=$7
                 preco=((taxa*var)/60)
		printf ("%-11s%-4s%-21s%-21s%-11s%-9s%-11d%-6s%-48s%-12.2f%-21s%s%s%-41s%s%-51s%-509s\n",$1,$2,$3,$4,$5,$6,$7,$8,$9,preco,tipo,col176,col180_230,col231_272,col272_322,col323,col374_380)

		 }
	}

 }


# Operadoras Numeros VC3
 
{
        tipo="* SALVADOR VC3"

 
	if (($4 ~ /^[09]?0(15|31|21|41|32|23|12|43|17|25)[1-9]{2}(9)[2-9][0-9]{7}$/)&&($4 !~ /^[09]?0(15|31|21|41|32|23|12|43|17|25)71(9)[2-9][0-9]{7}$/)&&($4 !~ /^[09]?0(15|31|21|41|32|23|12|43|17|25)73(9)[2-9][0-9]{7}$/)&&($4 !~ /^[09]?0(15|31|21|41|32|23|12|43|17|25)74(9)[2-9][0-9]{7}$/)&&($4 !~ /^[09]?0(15|31|21|41|32|23|12|43|17|25)75(9)[2-9][0-9]{7}$/)&&($4 !~ /^[09]?0(15|31|21|41|32|23|12|43|17|25)77(9)[2-9][0-9]{7}$/) || ($4 ~ /^[09]?0(15|31|21|41|32|23|12|43|17|25)[1-9]{2}[6-9][0-9]{7}$/)&&($4 !~ /^[09]?0(15|31|21|41|32|23|12|43|17|25)(71)[6-9][0-9]{7}$/)&&($4 !~ /^[09]?0(15|31|21|41|32|23|12|43|17|25)(73)[6-9][0-9]{7}$/) && ($4 !~ /^[09]?0(15|31|21|41|32|23|12|43|17|25)(74)[6-9][0-9]{7}$/) && ($4 !~ /^[09]?0(15|31|21|41|32|23|12|43|17|25)(75)[6-9][0-9]{7}$/)&&($4 !~ /^[09]?0(15|31|21|41|32|23|12|43|17|25)(77)[6-9][0-9]{7}$/)) 
         {
		# Codigo III - Coluna 176
		col176=substr($0,176,4)
		
		# Local Destino - Coluna 180-230
		col180_230=substr($0,180,51)

		# Nome da Loja - Coluna 231-272
		col231_272=substr($0,231,41)

		# Ramal - Coluna 272-322
		col272_322=substr($0,272,51)
		
		# Codigo IV - Coluna 323 
		col323=substr($0,323,1)
		
		# Codigo V Coluna 374 - 380
		col374_380=substr($0,374,6)
		
		#Concerta Erro -11
		if (col176 ~ /^-/){col176="1   "}
                  if ($7 <=30)
                  {
                  taxa=0.64
		printf ("%-11s%-4s%-21s%-21s%-11s%-9s%-11d%-6s%-48s%-12.2f%-21s%s%s%-41s%s%-51s%-509s\n",$1,$2,$3,$4,$5,$6,$7,$8,$9,taxa,tipo,col176,col180_230,col231_272,col272_322,col323,col374_380)
                  }
                  else
                  {
                  taxa=1.29
                  var=$7
                  preco=((taxa*var)/60)
		printf ("%-11s%-4s%-21s%-21s%-11s%-9s%-11d%-6s%-48s%-12.2f%-21s%s%s%-41s%s%-51s%-509s\n",$1,$2,$3,$4,$5,$6,$7,$8,$9,preco,tipo,col176,col180_230,col231_272,col272_322,col323,col374_380)
 
                  }
         }
 
  }

# Numeros LDN
{
	 tipo="* SALVADOR DDD1"

	if (($4 ~ /^[09]?0?[1-9]{2}[2-5][0-9]{7}$/)&&($4 !~ /^[09]?0?71[2-5][0-9]{7}$/))
	{
		# Codigo III - Coluna 176
		col176=substr($0,176,4)
		
		# Local Destino - Coluna 180-230
		col180_230=substr($0,180,51)

		# Nome da Loja - Coluna 231-272
		col231_272=substr($0,231,41)

		# Ramal - Coluna 272-322
		col272_322=substr($0,272,51)
		
		# Codigo IV - Coluna 323 
		col323=substr($0,323,1)
		
		# Codigo V Coluna 374 - 380
		col374_380=substr($0,374,6)
		
		#Concerta Erro -11
		if (col176 ~ /^-/){col176="1   "}
	
	         if ($7 <=60)
                 {
                 taxa=0.12
		printf ("%-11s%-4s%-21s%-21s%-11s%-9s%-11d%-6s%-48s%-12.2f%-21s%s%s%-41s%s%-51s%-509s\n",$1,$2,$3,$4,$5,$6,$7,$8,$9,taxa,tipo,col176,col180_230,col231_272,col272_322,col323,col374_380)
                 }
                 else
                 {
		 taxa=0.25
                 var=$7
                 preco=((taxa*var)/60)
		printf ("%-11s%-4s%-21s%-21s%-11s%-9s%-11d%-6s%-48s%-12.2f%-21s%s%s%-41s%s%-51s%-509s\n",$1,$2,$3,$4,$5,$6,$7,$8,$9,preco,tipo,col176,col180_230,col231_272,col272_322,col323,col374_380)
		 }
	}


}

# Operadoras mais Numeros LDN

{

	tipo="* SALVADOR DDD1"
	if (($4 ~ /^[09]?0(15|31|21|41|32|23|12|43|17|25)[1-9]{2}[2-5][0-9]{7}/)&&($4 !~ /^[09]?0(15|31|21|41|32|23|12|43|17|25)71[2-5][0-9]{7}$/))
	{
		# Codigo III - Coluna 176
		col176=substr($0,176,4)
		
		# Local Destino - Coluna 180-230
		col180_230=substr($0,180,51)

		# Nome da Loja - Coluna 231-272
		col231_272=substr($0,231,41)

		# Ramal - Coluna 272-322
		col272_322=substr($0,272,51)
		
		# Codigo IV - Coluna 323 
		col323=substr($0,323,1)
		
		# Codigo V Coluna 374 - 380
		col374_380=substr($0,374,6)
		
		#Concerta Erro -11
		if (col176 ~ /^-/){col176="1   "}
	
	         if ($7 <=60)
                {
                 taxa=0.12
		printf ("%-11s%-4s%-21s%-21s%-11s%-9s%-11d%-6s%-48s%-12.2f%-21s%s%s%-41s%s%-51s%-509s\n",$1,$2,$3,$4,$5,$6,$7,$8,$9,taxa,tipo,col176,col180_230,col231_272,col272_322,col323,col374_380)
               }
                 else
                 {
		 taxa=0.25
                 var=$7
                 preco=((taxa*var)/60)
		printf ("%-11s%-4s%-21s%-21s%-11s%-9s%-11d%-6s%-48s%-12.2f%-21s%s%s%-41s%s%-51s%-509s\n",$1,$2,$3,$4,$5,$6,$7,$8,$9,preco,tipo,col176,col180_230,col231_272,col272_322,col323,col374_380)
		 }
	}

}

 # Numeros 0800
 
 {
          tipo="* 0800"
          if ($4 ~ /^(0800)/)
          {
		# Codigo III - Coluna 176
		col176=substr($0,176,4)
		
		# Local Destino - Coluna 180-230
		col180_230=substr($0,180,51)

		# Nome da Loja - Coluna 231-272
		col231_272=substr($0,231,41)

		# Ramal - Coluna 272-322
		col272_322=substr($0,272,51)
		
		# Codigo IV - Coluna 323 
		col323=substr($0,323,1)
		
		# Codigo V Coluna 374 - 380
		col374_380=substr($0,374,6)
		
		#Concerta Erro -11
		if (col176 ~ /^-/){col176="1   "}
                  taxa=0
		printf ("%-11s%-4s%-21s%-21s%-11s%-9s%-11d%-6s%-48s%-12.2f%-21s%s%s%-41s%s%-51s%-509s\n",$1,$2,$3,$4,$5,$6,$7,$8,$9,taxa,tipo,col176,col180_230,col231_272,col272_322,col323,col374_380)
          }
 }

 # Numeros Ramais , e telefones uteis 
 
 {
          tipo="* TEL/UTEIS"
          if (($4 ~ /^(0)?1[0-9]{1,4}$/)||($4 ~ /^0[1-9]{2}[0-9]{1,7}$/)){
		# Codigo III - Coluna 176
		col176=substr($0,176,4)
		
		# Local Destino - Coluna 180-230
		col180_230=substr($0,180,51)

		# Nome da Loja - Coluna 231-272
		col231_272=substr($0,231,41)

		# Ramal - Coluna 272-322
		col272_322=substr($0,272,51)
		
		# Codigo IV - Coluna 323 
		col323=substr($0,323,1)
		
		# Codigo V Coluna 374 - 380
		col374_380=substr($0,374,6)
		
		#Concerta Erro -11
		if (col176 ~ /^-/){col176="1   "}
          
                  taxa=0
		printf ("%-11s%-4s%-21s%-21s%-11s%-9s%-11d%-6s%-48s%-12.2f%-21s%-4s%s%-41s%s%-51s%-509s\n",$1,$2,$3,$4,$5,$6,$7,$8,$9,taxa,tipo,col176,col180_230,col231_272,col272_322,col323,col374_380)
		}
}
}
