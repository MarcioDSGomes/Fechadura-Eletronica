// Alunos:
// Luis Fernando Lopes       RA 2221343
// Luiz Henrique de Aragão   RA 2220971
// Marcio da Silva Gomes     RA 2221000

Program fechadura_Eletronica ;
type
	usuario = record
		nome: string;
		sobrenome: string;
		cpf: string;
		senha: string;
	end;

const 
	MAX = 5; // Quantidade de Cadastros
	
var
	i, j: integer;
	cadastro: array [1..MAX] of usuario;
	
	opcao1, opcao2, opcao3: integer;
	decisao1, decisao2: string;
	senhaIncorreta: boolean;
	chave: String[4];
	tentativas: integer;
	tempo: integer;

Begin
  
  for i := 1 to MAX do  
	begin
			gotoxy (15,2); // Centralização do Título
			writeln ('Fechadura Eletrônica');
	    
			gotoxy (5,5);
			writeln (' Olá, SEJA BEM VINDO ao nosso sistema!');
			writeln (' para começar, vamos cadastrar CINCO USUÁRIOS.');	
			writeln;
			writeln;
			writeln	(' Informe os dados do ',i,'º usuário');
			write(' NOME...........................: ');
   		readln (cadastro[i].nome);
   		write(' SOBRENOME......................: ');
   		readln (cadastro[i].sobrenome);
    	write(' CPF............................: ');
    	readln (cadastro[i].cpf);
    	
    	senhaIncorreta := true;
   		while(senhaIncorreta)do
			begin
				write(' SENHA de até QUATRO números....: ');
   			readln (cadastro[i].senha);
   			if (length(cadastro[i].senha) = 4) then
   			begin
   				senhaIncorreta := false;
   			end
   			else
   			begin
   				writeln;
   			  writeln(' O tamanho da senha está incorreta.');
					writeln(' Por gentileza, insira dentro do PADRÃO solicitado.');			   		 
		   	  writeln;	   		 		   	  
   			end;
   		end;
      
			writeln;  
   		writeln;
			writeln;
			writeln (' Um momento, estamos salvando as informações...');
			delay(1000);
			writeln;
			writeln (' Pronto, cadastro do usuário ', (cadastro[i].nome), ' foi criado com SUCESSO!');
			delay(2000);
			writeln;
			clrscr;  
  	end;
	
		
	
	decisao1 := '0';
  repeat
  
		gotoxy (15,2); // Centralização do Título
		writeln ('Fechadura Eletrônica');	
		writeln;
		writeln;	
		writeln (' Digite qual opção deseja:');	
		writeln;
  	writeln (' 1 - INSERIR novos cadastros');
  	writeln (' 2 - CADASTROS criados');
		writeln (' 3 - ALTERAR cadastro');
  	writeln (' 4 - APAGAR cadastro');
  	
  	writeln;
  	writeln (' 5 - ABRIR a FECHADURA');
		writeln;
		write (' Digite qual opção deseja: ');
		readln (opcao1);
  	clrscr;
  	  	
  	// Inserindo Cadastros
  	if opcao1 = 1 then
  	begin
			for i := 1 to MAX do  
			begin
				clrscr;
				writeln;
				writeln	(' Informe os dados do ',i,'º usuário');
				write(' NOME...........................: ');
   			readln (cadastro[i].nome);
   			write(' SOBRENOME......................: ');
   			readln (cadastro[i].sobrenome);
    		write(' CPF............................: ');
    		readln (cadastro[i].cpf);
    	
    		senhaIncorreta := true;
   			while(senhaIncorreta)do
				begin
					write(' SENHA de até QUATRO números....: ');
   				readln (cadastro[i].senha);
   				if (length(cadastro[i].senha) = 4) then
   				begin
   					senhaIncorreta := false;
   				end
   				else
   				begin
   					writeln;
   			  	writeln(' O tamanho da senha está incorreta.');
						writeln(' Por gentileza, insira dentro do PADRÃO solicitado.');			   		 
		   	  	writeln;
					end;	   		 		   	   	
				end;
				writeln;  
				writeln;
				writeln (' Um momento, estamos salvando as informações...');
				delay(1000);
   		end;      
			writeln;  
			writeln;
			writeln (' Cadastros criados com SUCESSO!');
			delay (3000);				
		end;
		
		if opcao1 = 2 then
		begin
			gotoxy (28,2);
			writeln('Cadastros criados');
			gotoxy (3,4);
			writeln('NOME');
			gotoxy (15,4);
			writeln('SOBRENOME');
			gotoxy (45,4);
			writeln('CPF');
			gotoxy (65,4);
			writeln('SENHA');
			
			
			gotoxy (2,5);
			writeln(' ',cadastro[1].nome);
			gotoxy (15,5);
			writeln(cadastro[1].sobrenome);
			gotoxy (45,5);
			writeln(cadastro[1].cpf);
			gotoxy (65,5);
			writeln(cadastro[1].senha);
			
			
			gotoxy (2,6);
			writeln(' ',cadastro[2].nome);
			gotoxy (15,6);
			writeln(cadastro[2].sobrenome);
			gotoxy (45,6);
			writeln(cadastro[2].cpf);
			gotoxy (65,6);
			writeln(cadastro[2].senha);
			
			
			gotoxy (2,7);
			writeln(' ',cadastro[3].nome);
			gotoxy (15,7);
			writeln(cadastro[3].sobrenome);
			gotoxy (45,7);
			writeln(cadastro[3].cpf);
			gotoxy (65,7);
			writeln(cadastro[3].senha);
					
			
			gotoxy (2,8);
			writeln(' ',cadastro[4].nome);
			gotoxy (15,8);
			writeln(cadastro[4].sobrenome);
			gotoxy (45,8);
			writeln(cadastro[4].cpf);
			gotoxy (65,8);
			writeln(cadastro[4].senha);
			
			
			gotoxy (2,9);
			writeln(' ',cadastro[5].nome);
			gotoxy (15,9);
			writeln(cadastro[5].sobrenome);
			gotoxy (45,9);
			writeln(cadastro[5].cpf);
			gotoxy (65,9);
			writeln(cadastro[5].senha);
			
			writeln;
			writeln;
			writeln;				
		end;			
		
		if opcao1 = 3 then
  	begin
		 	
  		writeln (' Deseja ALTERAR qual cadastro?');
  		writeln;
			writeln (' 1 - ',cadastro[1].nome,' ',cadastro[1].sobrenome);
			writeln (' 2 - ',cadastro[2].nome,' ',cadastro[2].sobrenome);
			writeln (' 3 - ',cadastro[3].nome,' ',cadastro[3].sobrenome);
			writeln (' 4 - ',cadastro[4].nome,' ',cadastro[4].sobrenome);
			writeln (' 5 - ',cadastro[5].nome,' ',cadastro[5].sobrenome);
		  writeln;
		  writeln (' 6 - Para retornar ao menu principal');
  		writeln;
			write (' Digite o número correspondente: ');
			readln (opcao2);
			clrscr;
			
			
			// ALTERAR cadastro 1
			if opcao2 = 1 then
  		begin
				
				decisao2 := 's';
  			repeat
							
  				writeln ('O que deseja alterar no cadastro do usuário ', cadastro[1].nome);
  				writeln;
					writeln (' 1 - NOME');
					writeln (' 2 - SOBRENOME');
					writeln (' 3 - CPF');
					writeln (' 4 - SENHA');
					writeln;
					write (' Digite qual opção deseja: ');
					readln (opcao3);
  				clrscr;
  			
  				if opcao3 = 1 then
  				begin
  					writeln;
  					write(' Informe o NOME............: ');
    				readln (cadastro[1].nome);
    				writeln;
    				writeln (' NOME alterado com SUCESSO!');
    				writeln;
  				end;
  			
  				if opcao3 = 2 then
  				begin
  					writeln;
  					write(' Informe o SOBRENOME............: ');
    				readln (cadastro[1].sobrenome);
    				writeln;
    				writeln (' SOBRENOME alterado com SUCESSO!');
    				writeln;
    				writeln;
  				end;
  			
  				if opcao3 = 3 then
  				begin
  					writeln;
  					write(' Informe o CPF............: ');
    				readln (cadastro[1].cpf);
    				writeln;
    				writeln (' CPF alterado com SUCESSO!');
    				writeln;
    				writeln;
  				end;
  			
  				if opcao3 = 4 then
  				begin
  					senhaIncorreta := true;
  					
          	while(senhaIncorreta)do
  					begin
							writeln;
  						write(' Informe a nova SENHA de até QUATRO números...: ');
    					readln (cadastro[1].senha);
    					if(length(cadastro[1].senha) = 4) then
    					begin
   							senhaIncorreta := false;
   						end
   						else
   						begin
   							writeln;
   			  			writeln(' O tamanho da senha está incorreta.');
								writeln(' Por gentileza, insira dentro do PADRÃO solicitado.');			   		 
		   	  			writeln;	   		 		   	  
   						end;
    				end;
    				writeln;
    				writeln (' SENHA alterada com SUCESSO!');
  	  			writeln;
    				writeln;
  				end;
  				writeln ('Deseja ALTERAR mais alguma informação deste cadastro? (s/n)');
  			read(decisao2);
  			clrscr;
				until(decisao2 = 'n');				
			end;	
  			
  		// ALTERAR cadastro 2
			if opcao2 = 2 then
 		 	begin
 		 		
				decisao2 := 's';
  			repeat
						
  				writeln ('O que deseja alterar no cadastro do usuário ', cadastro[2].nome);
  				writeln;
					writeln (' 1 - NOME');
					writeln (' 2 - SOBRENOME');
					writeln (' 3 - CPF');
					writeln (' 4 - SENHA');
					writeln;
					write (' Digite qual opção deseja: ');
					readln (opcao3);
  				clrscr;
  			
  				if opcao3 = 1 then
  				begin
  					writeln;
  					write(' Informe o NOME............: ');
    				readln (cadastro[2].nome);
    				writeln;
  	  			writeln (' NOME alterado com SUCESSO!');
    				writeln;
    				writeln;
  				end;
  			
  				if opcao3 = 2 then
  				begin
  					writeln;
  					write(' Informe o SOBRENOME............: ');
    				readln (cadastro[2].sobrenome);
    				writeln;
    				writeln (' SOBRENOME alterado com SUCESSO!');
    				writeln;
  	  			writeln;
 	 				end;
  			
  				if opcao3 = 3 then
  				begin
  					writeln;
  					write(' Informe o CPF............: ');
    				readln (cadastro[2].cpf);
    				writeln;
    				writeln (' CPF alterado com SUCESSO!');
  				end;
  			
  				if opcao3 = 4 then
  				begin
  					
						senhaIncorreta := true;
  					
          	while(senhaIncorreta)do
  					begin
							writeln;
  						write(' Informe a nova SENHA de até QUATRO números...: ');
    					readln (cadastro[2].senha);
    					if(length(cadastro[2].senha) = 4) then
    					begin
   							senhaIncorreta := false;
   						end
   						else
   						begin
   							writeln;
   			  			writeln(' O tamanho da senha está incorreta.');
								writeln(' Por gentileza, insira dentro do PADRÃO solicitado.');			   		 
		   	  			writeln;	   		 		   	  
   						end;
    				end;
    				writeln;
    				writeln (' SENHA alterada com SUCESSO!');
  	  			writeln;
    				writeln;
  				end;
  				writeln ('Deseja ALTERAR mais alguma informação deste cadastro? (s/n)');
  			read(decisao2);
  			clrscr;
				until(decisao2 = 'n');
			end;
						
			// ALTERAR cadastro 3
			if opcao2 = 3 then
  		begin
  			
				decisao2 := 's';
  			repeat
						
	  			writeln ('O que deseja alterar no cadastro do usuário ', cadastro[3].nome);
  				writeln;
					writeln (' 1 - NOME');
					writeln (' 2 - SOBRENOME');
					writeln (' 3 - CPF');
					writeln (' 4 - SENHA');
					writeln;
					write (' Digite qual opção deseja: ');
					readln (opcao3);
  				clrscr;
  			
  				if opcao3 = 1 then
  				begin
  					writeln;
  					write(' Informe o NOME............: ');
  	  			readln (cadastro[3].nome);
    				writeln;
 	   				writeln (' NOME alterado com SUCESSO!');
  	  			writeln;
    				writeln;
  				end;
  			
	  			if opcao3 = 2 then
  				begin
  					writeln;
  					write(' Informe o SOBRENOME............: ');
 	   				readln (cadastro[3].sobrenome);
  	  			writeln;
    				writeln (' SOBRENOME alterado com SUCESSO!');
    				writeln;
    				writeln;
  				end;
  			
	  			if opcao3 = 3 then
 	 				begin
 	 					writeln;
  					write(' Informe o CPF............: ');
    				readln (cadastro[3].cpf);
    				writeln;
    				writeln (' CPF alterado com SUCESSO!');
	    			writeln;
  	  			writeln;
  				end;
  			
	  			if opcao3 = 4 then
  				begin
  				
						senhaIncorreta := true;
  					
          	while(senhaIncorreta)do
  					begin
							writeln;
  						write(' Informe a nova SENHA de até QUATRO números...: ');
    					readln (cadastro[3].senha);
    					if(length(cadastro[3].senha) = 4) then
    					begin
   							senhaIncorreta := false;
   						end
   						else
   						begin
   							writeln;
   			  			writeln(' O tamanho da senha está incorreta.');
								writeln(' Por gentileza, insira dentro do PADRÃO solicitado.');			   		 
		   	  			writeln;	   		 		   	  
   						end;
    				end;
    				writeln;
    				writeln (' SENHA alterada com SUCESSO!');
  	  			writeln;
    				writeln;
  				end;
  				writeln ('Deseja ALTERAR mais alguma informação deste cadastro? (s/n)');
  			read(decisao2);
  			clrscr;
				until(decisao2 = 'n');
			end;
					
			// ALTERAR cadastro 4
			if opcao2 = 4 then
  		begin
  			
				decisao2 := 's';
  			repeat
								
	  			writeln ('O que deseja alterar no cadastro do usuário ', cadastro[4].nome);
  				writeln;
					writeln (' 1 - NOME');
					writeln (' 2 - SOBRENOME');
					writeln (' 3 - CPF');
					writeln (' 4 - SENHA');
					writeln;
					write (' Digite qual opção deseja: ');
					readln (opcao3);
  				clrscr;
  			
	  			if opcao3 = 1 then
  				begin
  					writeln;
  					write(' Informe o NOME............: ');
    				readln (cadastro[4].nome);
    				writeln;
    				writeln (' NOME alterado com SUCESSO!');
    				writeln;
	    			writeln;
  				end;
  			
  				if opcao3 = 2 then
  				begin
  					writeln;
  					write(' Informe o SOBRENOME............: ');
	    			readln (cadastro[4].sobrenome);
  	  			writeln;
    				writeln (' SOBRENOME alterado com SUCESSO!');
    				writeln;
    				writeln;
  				end;
  			
	  			if opcao3 = 3 then
  				begin
  					writeln;
						write(' Informe o CPF............: ');
    				readln (cadastro[4].cpf);
    				writeln;
    				writeln (' CPF alterado com SUCESSO!');
    				writeln;
    				writeln;
  				end;
  			
  				if opcao3 = 4 then
  				begin
  					
						senhaIncorreta := true;
  					
          	while(senhaIncorreta)do
  					begin
							writeln;
  						write(' Informe a nova SENHA de até QUATRO números...: ');
    					readln (cadastro[4].senha);
    					if(length(cadastro[4].senha) = 4) then
    					begin
   							senhaIncorreta := false;
   						end
   						else
   						begin
   							writeln;
   			  			writeln(' O tamanho da senha está incorreta.');
								writeln(' Por gentileza, insira dentro do PADRÃO solicitado.');			   		 
		   	  			writeln;	   		 		   	  
   						end;
    				end;
    				writeln;
    				writeln (' SENHA alterada com SUCESSO!');
  	  			writeln;
    				writeln;
  				end;
	  			writeln ('Deseja ALTERAR mais alguma informação deste cadastro? (s/n)');
  			read(decisao2);
  			clrscr;
				until(decisao2 = 'n');
			end;
			
			// ALTERAR cadastro 5
			if opcao2 = 5 then
  		begin
  			
				decisao2 := 's';
  			repeat							
  		
  				writeln ('O que deseja alterar no cadastro do usuário ', cadastro[5].nome);
  				writeln;
					writeln (' 1 - NOME');
					writeln (' 2 - SOBRENOME');
					writeln (' 3 - CPF');
					writeln (' 4 - SENHA');
					writeln;
					write (' Digite qual opção deseja: ');
					readln (opcao3);
	  			clrscr;
  			
  				if opcao3 = 1 then
  				begin
  					writeln;
  					write(' Informe o NOME............: ');
    				readln (cadastro[5].nome);
    				writeln;
	    			writeln (' NOME alterado com SUCESSO!');
  	  			writeln;
    				writeln;
  				end;
  			
	  			if opcao3 = 2 then
  				begin
  					writeln;
  					write(' Informe o SOBRENOME............: ');
    				readln (cadastro[5].sobrenome);
    				writeln;
	    			writeln (' SOBRENOME alterado com SUCESSO!');
  	  			writeln;
    				writeln;
  				end;
  			
  				if opcao3 = 3 then
  				begin
  					writeln;
						write(' Informe o CPF............: ');
  	  			readln (cadastro[5].cpf);
    				writeln;
    				writeln (' CPF alterado com SUCESSO!');
    				writeln;
    				writeln;
	  			end;
  			
 	 				if opcao3 = 4 then
  				begin
  				
  					senhaIncorreta := true;
  					
          	while(senhaIncorreta)do
  					begin
							writeln;
  						write(' Informe a nova SENHA de até QUATRO números...: ');
    					readln (cadastro[5].senha);
    					if(length(cadastro[5].senha) = 4) then
    					begin
   							senhaIncorreta := false;
   						end
   						else
   						begin
   							writeln;
   			  			writeln(' O tamanho da senha está incorreta.');
								writeln(' Por gentileza, insira dentro do PADRÃO solicitado.');			   		 
		   	  			writeln;	   		 		   	  
   						end;
    				end;
    				writeln;
    				writeln (' SENHA alterada com SUCESSO!');
  	  			writeln;
    				writeln;
  				end;
  				writeln ('Deseja ALTERAR mais alguma informação deste cadastro? (s/n)');
  			read(decisao2);
  			clrscr;
				until(decisao2 = 'n');			
			end;	
			
			if opcao2 = 6 then
  		begin
  			writeln;
			end;	
		end;
		
		// APAGAR CADASTRO
		if opcao1 = 4 then
		begin
			writeln (' Deseja APAGAR qual cadastro?');
  		writeln;
			writeln (' 1 - ',cadastro[1].nome,' ',cadastro[1].sobrenome);
			writeln (' 2 - ',cadastro[2].nome,' ',cadastro[2].sobrenome);
			writeln (' 3 - ',cadastro[3].nome,' ',cadastro[3].sobrenome);
			writeln (' 4 - ',cadastro[4].nome,' ',cadastro[4].sobrenome);
			writeln (' 5 - ',cadastro[5].nome,' ',cadastro[5].sobrenome);
		  writeln;
		  writeln (' 6 - Para retornar ao MENU principal');
  		writeln;
			write (' Digite o número correspondente: ');
			readln (opcao2);
			clrscr;
			
			if opcao2 = 1 then
			begin
				cadastro[1].nome := ' ';
				cadastro[1].sobrenome := ' ';
				cadastro[1].cpf := ' ';
				cadastro[1].senha := ' ';
				writeln;
				writeln (' Cadastro EXCLUÍDO!');
				writeln;	
			end;
			
			if opcao2 = 2 then
			begin
				cadastro[2].nome := ' ';
				cadastro[2].sobrenome := ' ';
				cadastro[2].cpf := ' ';
				cadastro[2].senha := ' ';
				writeln;
				writeln (' Cadastro EXCLUÍDO!');
				writeln;	
			end;
			
			if opcao2 = 3 then
			begin
				cadastro[3].nome := ' ';
				cadastro[3].sobrenome := ' ';
				cadastro[3].cpf := ' ';
				cadastro[3].senha := ' ';
				writeln;
				writeln (' Cadastro EXCLUÍDO!');
				writeln;	
			end;
			
			if opcao2 = 4 then
			begin
				cadastro[4].nome := ' ';
				cadastro[4].sobrenome := ' ';
				cadastro[4].cpf := ' ';
				cadastro[4].senha := ' ';
				writeln;
				writeln (' Cadastro EXCLUÍDO!');
				writeln;	
			end;
			
			if opcao2 = 5 then
			begin
				cadastro[5].nome := ' ';
				cadastro[5].sobrenome := ' ';
				cadastro[5].cpf := ' ';
				cadastro[5].senha := ' ';
				writeln;
				writeln (' Cadastro EXCLUÍDO!');
				writeln;	
			end;		
		end;		
		
		// ABRIR FECHADURA
		if opcao1 = 5 then
		begin	
			tentativas := 3;
	 		senhaIncorreta := true;
	 		
			while(senhaIncorreta)do
			begin
				writeln;
				writeln(' Informe uma senha válida de QUATRO números para ABRIR a FECHADURA:');
       	 writeln;
				 read(chave);
       	clrscr;
       	
       	if (chave = cadastro[1].senha) or (chave = cadastro[2].senha) or (chave = cadastro[3].senha) or (chave = cadastro[4].senha) or (chave = cadastro[5].senha) then
       	begin
       		senhaIncorreta := false;
		      tempo := 5;
					while (tempo<>0) do
  				Begin
  					writeln;
						writeln(' A FECHADURA será aberta em:  ',tempo,' segundos.');
						delay (1000);
  					clrscr;
		      	tempo := tempo - 1;
					end;		
       	end
       	else
       	begin
       		dec(tentativas);
       		writeln;
          writeln(' A senha que você digitou está INCORRETA, você possui apenas ', tentativas, ' tentativas.');					
      	  delay (3000);
				end;  
				     
       	if(tentativas = 0)then
       	begin
       		writeln;
			 		writeln(' Suas tentativas acabaram, A FECHADURA SERÁ BLOQUEADA.');			   		 
		   		delay(4000);	   		 
		   		clrscr;
       		break;
       	end
       	else
       	begin
       		if(senhaIncorreta)then
       		begin
       			tempo := 5;
						while (tempo<>0) do
  					Begin
  						writeln;
          		writeln(' Por gentileza, tente novamente em:  ',tempo,' segundos.');
							delay (1000);
  						clrscr;			   		 
		   				tempo := tempo - 1;
						end;			   		 
		   		end;
		   		clrscr;      
			 	end;
			end;
			clrscr;
			if(tentativas = 0)then
			begin
				tempo := 60;
				while (tempo<>0) do
  			Begin
  				writeln;
					writeln(' FECHADURA BLOQUEADA, você poderá tentar novamente em:  ',tempo,' segundos.');
					delay (1000);
  				clrscr;
					tempo := tempo - 1;
				end;
			end
			else
			begin
				writeln;
   			writeln(' FECHADURA ABERTA!');
			end;	 	
		end;
    
		
  writeln;
  writeln;
	writeln (' Digite 0 para retornar ao MENU PRINCIPAL ou 9 para FINALIZAR o programa: (0/9)');
	readln (decisao1);
	clrscr;
	until(decisao1 = '9');
  
End.