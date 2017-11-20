create schema Corrida_por_Motoristas3;

use Corrida_por_Motoristas3;

#algoritimo de Criacão das tabelas do Banco e tabelas com forma normal

#Tabela de criação da tabela Motorista 
CREATE TABLE Motorista (
IDMotorista Int auto_increment not null PRIMARY KEY,
NomeMotorista VARCHAR(45),
CPFMotorista Varchar(15),
TelefoneMotorista Varchar(20),
NumeroCNH Varchar(11),
EmailMotorista VARCHAR(50),
SenhaMotorista VARCHAR(20),
Classificação1 Double,
Classificação2 varchar(20),
FotoMotorista longblob
);

#Tabela de criação da tabela TipoViagem
CREATE TABLE TipoViagem (
IDTipoViagem Int auto_increment not null PRIMARY KEY,
TipoViagem VARCHAR(100)
);

#Tabela de criação da tabela TipoVeiculo
CREATE TABLE TipoVeiculo (
IDTipo Int auto_increment not null PRIMARY KEY,
TipoVeiculo VARCHAR(100),
FotoVeiculo longblob
);

#Tabela de criação da tabela Veiculo
CREATE TABLE Veiculo (
IDveiculo Int auto_increment not null PRIMARY KEY,
Localização VARCHAR(100),
Veiculo_IDMotorista Int,
Veiculo_IDTipoViagem Int,
Veiculo_IDTipo Int,
Capacidade VARCHAR(15),
ValorKM Double,
FOREIGN KEY(Veiculo_IDMotorista) REFERENCES Motorista (IDMotorista),
FOREIGN KEY(Veiculo_IDTipoViagem) REFERENCES TipoViagem (IDTipoViagem),
FOREIGN KEY(Veiculo_IDTipo) REFERENCES TipoVeiculo (IDTipo)
);

#Tabela de criação da tabela CorridaAndamento
create table CorridaAndamento (
IDCorridaAndamento int auto_increment not null primary key,
Nome_Cliente varchar (45),
origem varchar (45),
Destino varchar (45)

);

#Tabela de criação da tabela Viagem
CREATE TABLE Viagem (
IDViagem Int auto_increment not null PRIMARY KEY,
Origem VARCHAR(100),
Destino VARCHAR(100),
Data Date,
HoraChamada Time,
HoraEncerrramento Time,
Viagem_IDveiculo Int,
ValorFinal Double,
Viagem_IDCorridaAndamento int,
FOREIGN KEY(Viagem_IDveiculo) REFERENCES Veiculo (IDveiculo)
);

#Tabela de criação da tabela Cliente
CREATE TABLE Cliente (
IDCliente Int auto_increment not null PRIMARY KEY,
NomeCliente VARCHAR(50),
Cpf Varchar(15),
TelefoneCliente VARCHAR(20),
EmailCliente VARCHAR(45),
SenhaCliente VARCHAR(20),
Cliente_IDViagem Int,
FOREIGN KEY(Cliente_IDViagem) REFERENCES Viagem (IDViagem)
);

#insert

# Tabela Motorista Utilizando o Blob
insert
into Motorista (NomeMotorista ,CPFMotorista ,TelefoneMotorista ,NumeroCNH ,EmailMotorista ,SenhaMotorista ,Classificação1,Classificação2, FotoMotorista)
values ("Jose","123.321.343-44","61998765432","09475758693","Jose@gmail.com","Jose123","4.2","Bom",'load_file( "C:\Users\Paulo Henrique\Pictures\Banco de dados\motorista1.jpg" )');

insert
into Motorista (NomeMotorista ,CPFMotorista ,TelefoneMotorista ,NumeroCNH ,EmailMotorista ,SenhaMotorista ,Classificação1,Classificação2,FotoMotorista)
values ("Andre","321.111.343-43","61988774434","09475438696","Andre@gmail.com","Andre123","4.8","Bom",'load_file( "C:\Users\Paulo Henrique\Pictures\Banco de dados\motorista2.jpg" )') ;

insert
into Motorista (NomeMotorista ,CPFMotorista ,TelefoneMotorista ,NumeroCNH ,EmailMotorista ,SenhaMotorista ,Classificação1,Classificação2, FotoMotorista)
values ("Julio","213.222.343-44","61999763332","09475758543","Julio@gmail.com","Julio123","3.5","Medio",'load_file( "C:\Users\Paulo Henrique\Pictures\Banco de dados\motorista3.jpg" )') ;


select *from motorista;

SHOW VARIABLES LIKE 'secure_file_priv' ;

select FotoMotorista into dumpfile "C:\\ProgramData\\MySQL\\MySQL Server 5.7\\Uploads\\motorista1.jpg"
from Motorista
where IDMotorista=1 ;

select FotoMotorista into dumpfile "C:\\ProgramData\\MySQL\\MySQL Server 5.7\\Uploads\\motorista2.jpg"
from Motorista
where IDMotorista=2 ;

select FotoMotorista into dumpfile "C:\\ProgramData\\MySQL\\MySQL Server 5.7\\Uploads\\motorista3.jpg"
from Motorista
where IDMotorista=3 ;

#Tipo Viagem
insert
into TipoViagem (TipoViagem)
values ("Economica") ;

insert
into TipoViagem (TipoViagem)
values ("Executiva") ;

insert
into TipoViagem (TipoViagem)
values ("Luxo") ;

#Tipo Veiculo , Utilizando o Blob

insert
into TipoVeiculo (TipoVeiculo, FotoVeiculo)
values ("Automovel",'load_file( "C:\Users\Paulo Henrique\Pictures\Banco de dados\Veiculo1.jpg" )') ;

insert
into TipoVeiculo (TipoVeiculo, FotoVeiculo)
values ("Caminhonete",'load_file( "C:\Users\Paulo Henrique\Pictures\Banco de dados\Caminhonete.jpg" )') ;

insert
into TipoVeiculo (TipoVeiculo, FotoVeiculo)
values ("Utilitario",'load_file( "C:\Users\Paulo Henrique\Pictures\Banco de dados\Carro Ultilitario.jpg" )') ;

select *from TipoVeiculo;

SHOW VARIABLES LIKE 'secure_file_priv' ;

select FotoVeiculo into dumpfile "C:\\ProgramData\\MySQL\\MySQL Server 5.7\\Uploads\\Veiculo1.jpg"
from TipoVeiculo
where IDTipo=1 ;

select FotoVeiculo into dumpfile "C:\\ProgramData\\MySQL\\MySQL Server 5.7\\Uploads\\Caminhonete.jpg"
from TipoVeiculo
where IDTipo=2 ;

select FotoVeiculo into dumpfile "C:\\ProgramData\\MySQL\\MySQL Server 5.7\\Uploads\\Carro Ultilitario.jpg"
from TipoVeiculo
where IDTipo=3 ;

#Veiculo 
insert
into Veiculo (Localização ,Veiculo_IDMotorista ,Veiculo_IDTipoViagem ,Veiculo_IDTipo ,Capacidade ,ValorKM)
values ("Brasilia","1","3","1","4 Pessoas","2.80") ;

insert
into Veiculo (Localização ,Veiculo_IDMotorista ,Veiculo_IDTipoViagem ,Veiculo_IDTipo ,Capacidade ,ValorKM)
values ("Brasilia","2","1","3","5 Pessoas","1.50") ;

insert
into Veiculo (Localização ,Veiculo_IDMotorista ,Veiculo_IDTipoViagem ,Veiculo_IDTipo ,Capacidade ,ValorKM)
values ("Brasilia","3","2","2","4 Pessoas","2.20") ;

#CorridaAndamento
insert
into corridaandamento (Nome_Cliente ,origem ,Destino)
values ("Paulo","Padre Bernado","Brasilia") ;

insert
into corridaandamento (Nome_Cliente ,origem ,Destino)
values ("Vinicius","Unieuro","Padre Bernado") ;

insert
into corridaandamento (Nome_Cliente ,origem ,Destino)
values ("Gustavo","Aguas Lintas","Brasilia") ;

#Viagem
insert
into Viagem (Origem ,Destino ,Data ,HoraChamada ,HoraEncerrramento ,Viagem_IDveiculo ,ValorFinal)
values ("Unieuro Aguas Claras Brasilias-DF","JK Shopping Brasilia-DF","2017-09-20","15:00","15:15","2","14.7") ;

insert
into Viagem (Origem ,Destino ,Data ,HoraChamada ,HoraEncerrramento ,Viagem_IDveiculo ,ValorFinal)
values ("Unieuro Aguas Claras Brasilias-DF","Zoologico DF","2017-09-20","10:00","10:20","1","56.00") ;

insert
into Viagem (Origem ,Destino ,Data ,HoraChamada ,HoraEncerrramento ,Viagem_IDveiculo ,ValorFinal)
values ("Unieuro Aguas Claras Brasilias-DF","Aeroporto Internacinoal de Brasilia","2017-09-21","08:00","08:30","3","48.40") ;

#Cliente
insert
into Cliente (NomeCliente ,Cpf ,TelefoneCliente ,EmailCliente ,SenhaCliente ,Cliente_IDViagem)
values ("Aldo","654.545.544-54","6198987654","Aldo@hotmail.com","Aldo123","2") ;

insert
into Cliente (NomeCliente ,Cpf ,TelefoneCliente ,EmailCliente ,SenhaCliente ,Cliente_IDViagem)
values ("Fernando","054.888.544-44","6198787658","Fernando@hotmail.com","Fernando123","3") ;

insert
into Cliente (NomeCliente ,Cpf ,TelefoneCliente ,EmailCliente ,SenhaCliente ,Cliente_IDViagem)
values ("Leandro","054.995.284-94","6198587650","Leandro@hotmail.com","Leandro123","1") ;

#Select 

#Selecione o Tipo do veiculo,o Tipo da viagem ,Localização,capacidade,ValorKM e o nome do seu Motorista
Select  tv.TipoVeiculo ,tvi.TipoViagem ,ve.Localização,ve.ValorKM,ve.Capacidade, m.NomeMotorista 
from veiculo as ve , tipoveiculo as tv ,tipoviagem as tvi , motorista as m
where ve.Veiculo_IDMotorista =m.IDMotorista and ve.Veiculo_IDTipo=tv.IDTipo and ve.Veiculo_IDTipoViagem=tvi.IDTipoViagem;

#Selecione o nome e o Cpf de todos os clientes ordenado por nome e fale a origem de sua viagem 

select C.NomeCliente, c.Cpf, v.Origem ,v.Destino
from Cliente as c right join Viagem as v 
on c.Cliente_IDViagem=v.IDViagem
order by c.NomeCliente ;

#Selecione o numero de Veiculos e qual é a media do Valor de KM
select count(IDveiculo),avg(ValorKM) 
from veiculo ;

#Selecione o nome dos Clientes que pagaram menos de 30 nas viagens ,e fale quanto ele pagou
Select c.NomeCliente,v.ValorFinal 
from cliente as c join viagem as v  
on c.Cliente_IDViagem=V.IDViagem 
having v.valorFinal<30;

#Selecione os Cliente que iram Fazer Viagem Luxo ,mostrando o seu nome,tipo do veiculo, tipo da viagem,quanto ele vai pagar na viagem

Select c.NomeCliente,v.Origem,v.Destino ,m.NomeMotorista , tv.TipoVeiculo ,tvi.TipoViagem,v.ValorFinal
from cliente as c , viagem as v , veiculo as ve , tipoveiculo as tv ,tipoviagem as tvi , motorista as m
where tvi.TipoViagem="Luxo" and c.Cliente_IDViagem=V.IDViagem and v.Viagem_IDveiculo=ve.IDveiculo 
and ve.Veiculo_IDMotorista =m.IDMotorista and ve.Veiculo_IDTipo=tv.IDTipo and ve.Veiculo_IDTipoViagem=tvi.IDTipoViagem;

#Mostre o nome,cpf e telefone dos Cliente com o idcliente 2 e fale todos os dados da sua viagem 
Select c.IDCliente,c.NomeCliente,c.Cpf,c.TelefoneCliente,v.Origem,v.Destino,v.Data,v.HoraChamada,v.HoraEncerrramento,v.ValorFinal ,m.NomeMotorista , tv.TipoVeiculo ,tvi.TipoViagem 
from cliente as c , viagem as v , veiculo as ve , tipoveiculo as tv ,tipoviagem as tvi , motorista as m
where c.IDCliente=2  and c.Cliente_IDViagem=V.IDViagem and v.Viagem_IDveiculo=ve.IDveiculo 
and ve.Veiculo_IDMotorista =m.IDMotorista and ve.Veiculo_IDTipo=tv.IDTipo and ve.Veiculo_IDTipoViagem=tvi.IDTipoViagem;

#view 

#Selecione o nome dos Clientes e mostre o quanto ele vai pagar na Viagem e quanto ele pode pagar se Aumentar uma taxa de 3,0 %

create view Possivel_Aumento (Cliente, Preço_Atual, Possivel_Preço) as
select c.NomeCliente ,v.ValorFinal ,v.ValorFinal*0.03+v.ValorFinal
from cliente as c left join viagem as v
on c.Cliente_IDViagem=V.IDViagem ;

select * from Possivel_Aumento ;

#Selecione todos os clientes que fazeram viagem para o Aeroporto Internacinoal de Brasilia

create view ViagemAeroporto (Cliente,Local_da_Viagem) as
select c.NomeCliente ,v.Destino
from cliente as c , viagem as v
where v.Destino ="Aeroporto Internacinoal de Brasilia" and c.Cliente_IDViagem=V.IDViagem ;

select * from ViagemAeroporto;

#Mostre o nome,cpf dos Cliente e fale todos os dados da sua viagem
create view DadosdeViagem (Cliente,CPF,Origem,Destino,Data,Hota_Chamada,Hora_do_Encerrramento,Valor_Final,Motorista,Tipo_do_Veiculo,Tipo_da_Viagem) as
Select c.NomeCliente,c.Cpf,v.Origem,v.Destino,v.Data,v.HoraChamada,v.HoraEncerrramento,v.ValorFinal ,m.NomeMotorista , tv.TipoVeiculo ,tvi.TipoViagem 
from cliente as c , viagem as v , veiculo as ve , tipoveiculo as tv ,tipoviagem as tvi , motorista as m
where c.Cliente_IDViagem=V.IDViagem and v.Viagem_IDveiculo=ve.IDveiculo and ve.Veiculo_IDMotorista =m.IDMotorista 
and ve.Veiculo_IDTipo=tv.IDTipo and ve.Veiculo_IDTipoViagem=tvi.IDTipoViagem and IdCliente=c.IDCliente;

select * from DadosdeViagem;

#trigger

#ValorKm Tem que ser menor que 5
create trigger ValorKMBaixo before insert
on veiculo
for each row 
set new. ValorKM =(new.ValorKm <5 );

#Preço da viagem tem que maio que 5 reais
create trigger PreçoBaixo before insert 
on viagem
for each row 
set new. ValorFinal =(new.ValorFinal>5 );

#Classificação do motorista tem que menor que 5
create trigger ClassisficaçãoBaixa before insert
on motorista
for each row
set new. Classificação1 =(new.Classificação1 <5);

#Procedure

#Mostre uma procedure que possa escolher um cliente e que nesse suposto cliente a viagem dele tenha um desconto de 20 % 
#mostre o seu nome,qual seu preço atual e quanto ele iria pagar
#Exemplo com o cliente do id 1 no final

create procedure Aumento_de_Viagem (Id_Cliente int)
select c.NomeCliente , v.ValorFinal ,v.ValorFinal+v.ValorFinal*0.20 
from cliente as c , viagem as v
where c.Cliente_IDViagem=V.IDViagem and Id_Cliente=IDCliente ;

Call Aumento_de_Viagem (1);   

#Mostre os dados do Cliente(Nome,Cpf,Telefone,Email) e os dados de sua Viagem (data,hora chamada,origem,desitino,hora encerramento e o valor Final)
#Exemplo com o cliente do id 3 no final

create procedure Cliente_e_Sua_Viagem (Cliente int)
select c.NomeCliente, c.Cpf, c.TelefoneCliente, c.EmailCliente ,v.Data, v.HoraChamada,v.Destino,v.Origem,v.HoraEncerrramento,v.ValorFinal
from cliente as c , viagem as v
where c.Cliente_IDViagem=V.IDViagem and Cliente=IDCliente ;

call Cliente_e_Sua_Viagem (3);

#Mostre Todos os dados do motorista desejado
#Exemplo com o Motorista do id 2 no final
create procedure Dados_do_Motorista (Motorista int)
select *
from motorista as m 
where Motorista=m.IDMotorista;

call Dados_do_Motorista (2);

#INDEX

#Index para apresentar as informações sobre o motorista
create index Idx_Motorista 
on motorista(NomeMotorista ,CPFMotorista ,TelefoneMotorista ,NumeroCNH ,EmailMotorista ,SenhaMotorista ,Classificação1);

##Index para apresentar as informações sobre o Cliente
create index Idx_Cliente
on cliente(NomeCliente ,Cpf ,TelefoneCliente ,EmailCliente ,SenhaCliente ,Cliente_IDViagem);

#update

#alterar o nome do Motorista 1 para Bruno
update motorista
set  NomeMotorista= "Bruno"
Where IDMotorista= 1;

#alterar o valorKm do veiculo 3
update veiculo
set ValorKM="2.5"
Where IDveiculo=3;

#apagar o numero do telefone do cliente e colocar como Null
UPDATE cliente
 SET SenhaCliente = 123456 
 WHERE IDCliente=1;
 
#delete

#deletar o Cliente 2
delete
from cliente
where IDCliente=2;

#deletar a viagem 3
delete
from viagem
where IDViagem=3;

#deletar a corrida em Andamento 1
delete
from CorridaAndamento
where IDCorridaAndamento=1;

#Star transactino de uptate

start transaction;
update motorista set Classificação2="Ruim" where Classificação1<3.0 AND IDMotorista=1;
commit;

start transaction;
update motorista set Classificação2="Ruim" where Classificação1<3.0 AND IDMotorista=2;
commit;

start transaction;
update motorista set Classificação2="Ruim" where Classificação1<3.0 AND IDMotorista=3;
commit;

start transaction;
update motorista set Classificação2="Media" where Classificação1>3.0 and Classificação1<4.0 AND IDMotorista=1;
commit;

start transaction;
update motorista set Classificação2="Media" where Classificação1>3.0 and Classificação1<4.0 AND IDMotorista=2;
commit;

start transaction;
update motorista set Classificação2="Media" where Classificação1>3.0 and Classificação1<4.0 AND IDMotorista=3;
commit;

start transaction;
update motorista set Classificação2="Bom" where Classificação1>4.0 AND IDMotorista=1;
commit;

start transaction;
update motorista set Classificação2="Bom" where Classificação1>4.0 AND IDMotorista=2;
commit;

start transaction;
update motorista set Classificação2="Bom" where Classificação1>4.0 AND IDMotorista=3;
commit;

#star transaction de delete

start transaction;
delete from motorista where Classificação1<3.0 AND IDMotorista=1;
commit;

start transaction;
delete from motorista where Classificação1<3.0 AND IDMotorista=2;
commit;

start transaction;
delete from motorista where Classificação1<3.0 AND IDMotorista=3;
commit;
