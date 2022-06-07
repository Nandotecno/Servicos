---use venda
alter procedure sp_insere_dados
  @tabela as int,
  @opera  as int,
  @nome   as nchar(50),
  @tipo   as char(1) = ' ',
  @docto  as nchar(15) = ' ',
  @valor  as decimal(18,2),
  @quant  as int
as
begin
	if @tabela = 1
	begin
		print 'Cliente'
		if @opera = 1 
		begin 
		  print 'Insere'
		  insert into tbl_Cliente (Nome, tipo, docto)
		         values (@nome, @tipo, @docto)
		end
		if @opera = 2
		begin
			print 'Altera'
		end
			if @opera = 3
		begin
			print 'Exclui'
		end
	end
	if @tabela = 2
	begin
		print 'Produto'
		if @opera = 1 
		begin 
		  print 'Insere'
		  insert into tbl_Produto (nome, valorUnit, Quant)
		     values (@nome, @valor, @quant)
		end
		if @opera = 2
		begin
			print 'Altera'
		end
			if @opera = 3
		begin
			print 'Exclui'
		end
	end
	if @tabela = 3
	begin
		print 'Vendedor'
		if @opera = 1 
		begin 
		  print 'Insere'
		end
		if @opera = 2
		begin
			print 'Altera'
		end
			if @opera = 3
		begin
			print 'Exclui'
		end
	end
end




