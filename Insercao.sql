USE desafio;

BEGIN TRANSACTION;

INSERT INTO producao.tipo_produto(nm_tipo_produto) VALUES
												   ('Geladeira')
,												   ('Maquina de lavar')
,												   ('Fogao')
,												   ('Freezer')
,												   ('Frigobar')
COMMIT;

SELECT *FROM producao.tipo_produto;

BEGIN TRANSACTION;

INSERT INTO producao.avaliacao(cd_avaliacao, nm_avaliacao) VALUES
														   ('OK', 'Liberado')
,														   ('EL', 'Problema eletrico')
,														   ('PT', 'Problema de pintura')
,														   ('PE', 'Problema na estrutura')
,														   ('TR', 'Todo rejeitado')
COMMIT;

SELECT * FROM producao.avaliacao;

BEGIN TRANSACTION;

INSERT INTO producao.inspetor(nm_inspetor) VALUES
										   ('Carol Sato')
,										   ('Guilherme Pupim')
,										   ('Maria Eduarda Nicolielo')
,										   ('Kethelyn Andrade')
,										   ('Sara Larissa')
,										   ('Matheus Balan')
,										   ('Trancosa da Silva')
COMMIT;

SELECT * FROM producao.inspetor;

BEGIN TRANSACTION;

INSERT INTO producao.ficha(dt_inspecao, cd_inspetor) VALUES
													 ('02-12-2022', 5)
,													 ('03-12-2022', 2)
,													 ('04-12-2022', 6)
,													 ('05-12-2022', 3)
,													 ('06-12-2022', 7)
,													 ('07-12-2022', 4)
,													 ('08-12-2022', 1)
,													 ('09-12-2022', 5)
,													 ('10-12-2022', 2)
,													 ('11-12-2022', 6)
,													 ('12-12-2022', 3)
,													 ('13-12-2022', 7)
,													 ('14-12-2022', 4)
,													 ('15-12-2022', 3)
,													 ('16-12-2022', 7)
COMMIT;

SELECT * FROM producao.ficha;

BEGIN TRANSACTION;

INSERT INTO producao.produto(cd_ordem_producao,cd_linha_producao, aa_producao) VALUES
																			   (1,1,22)
,																			   (10,2,22)
,																			   (21,3,22)
,																			   (31,4,22)
,																			   (2,1,22)
,																			   (20,2,22)
,																			   (12,3,22)
,																			   (25,4,22)
,																			   (3,1,22)
,																			   (30,2,22)
,																			   (33,3,22)
,																			   (23,4,22)
,																			   (4,1,22)
,																			   (14,2,22)
,																			   (24,3,22)
,																			   (34,4,22)
,																			   (5,1,22)
,																			   (15,2,22)
,																			   (35,3,22)
,																			   (25,4,22)
,																			   (6,1,22)
,																			   (16,2,22)
,																			   (26,3,22)
,																			   (36,4,22)
COMMIT;

SELECT * FROM producao.produto;

BEGIN TRANSACTION;

INSERT INTO producao.inspecao(cd_ficha, cd_produto, cd_tipo_produto, cd_avaliacao, hr_inspecao_inicial, hr_inspecao_final) VALUES
																								( 1,  1,  1, 'OK', ' 8:10', ' 8:30')
,																								( 2, 13,  2, 'EL', ' 9:30', '10:30')
,																								( 3, 15,  3, 'PE', ' 8:09', ' 9:09')
,																								( 4,  2,  4, 'PT', ' 8:46', ' 9:46')
,																								( 5, 19,  5, 'TR', '12:01', '13:01')
,																								( 6, 21,  1, 'OK', '10:56', '11:56')
,																								( 7, 20,  2, 'EL', ' 9:59', '10:59')
,																								( 8, 10,  3, 'PE', '10:00', '11:00')
,																								( 9,  5,  4, 'PT', ' 8:40', ' 9:40')
,																								(10,  1,  5, 'TR', ' 8:02', ' 9:02')
,																								(11, 24,  1, 'OK', '17:58', '17:59')
,																								(12, 18,  2, 'EL', '16:40', '16:40')
,																								(13,  9,  3, 'PE', '11:59', '12:59')
,																								(14,  8,  4, 'PT', '10:46', '11:46')
,																								(15, 14,  5, 'TR', '17:20', '17:20')
,																								( 1, 13,  2, 'OK', ' 9:30', ' 9:31')
,																								( 3,  1,  3, 'EL', ' 8:09', ' 9:00')
,																								( 2,  2,  4, 'OK', ' 8:46', ' 8:47')
,																								( 5, 24,  5, 'OK', '12:01', '12:02')
,																								( 7, 13,  1, 'PT', ' 9:59', '10:59')
,																								( 8, 10,  3, 'OK', '10:00', '10:01')
,																								( 9,  20,  2, 'TR', ' 8:40', ' 9:40')
,																								(10,  19,  5, 'OK', ' 8:02', ' 8:03')
,																								(12, 23,  5, 'PE', '16:40', '17:40')
,																								(13,  10,  3, 'EL', '11:59', '12:59')
,																								(14,  2,  4, 'OK', '10:46', '10:47')
,																								(15, 24,  1, 'OK', '17:20', '17:21')
COMMIT;