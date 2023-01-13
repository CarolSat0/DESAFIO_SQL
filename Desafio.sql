USE desafio;

SELECT	SUM(DATEDIFF(HOUR, C.hr_inspecao_inicial, C.hr_inspecao_final)) AS hr_total_inspecao
     FROM	producao.ficha					  AS A
LEFT JOIN	producao.inspecao					  AS C ON (A.cd_ficha  = C.cd_ficha)
LEFT JOIN	producao.inspetor				  AS B ON (B.cd_inspetor = A.cd_inspetor)
    WHERE	A.dt_inspecao = '2022-12-16' AND B.nm_inspetor = 'Trancoso'

SELECT	SUM(DATEDIFF(HOUR, C.hr_inspecao_inicial, C.hr_inspecao_final)) AS qntd_hrTrabalhado
     FROM	producao.ficha				      AS A
LEFT JOIN	producao.inspecao				      AS C ON (A.cd_ficha  = C.cd_ficha)
LEFT JOIN	producao.inspetor			      AS B ON (B.cd_inspetor = A.cd_inspetor)
    WHERE	A.dt_inspecao BETWEEN '2022-12-01' AND '2022-12-22' AND	B.nm_inspetor = 'Trancoso'

SELECT	A.nm_avaliacao
		,	COUNT(1)					AS tipo_defeitos
     FROM	producao.avaliacao	AS A
LEFT JOIN	producao.inspecao	AS B ON (B.cd_avaliacao = A.cd_avaliacao)
LEFT JOIN	producao.ficha	AS C ON (C.cd_ficha = B.cd_ficha)
    WHERE	C.dt_inspecao BETWEEN '2022-12-01' AND '2022-12-22' AND	A.cd_avaliacao != 'OK'
 GROUP BY	A.nm_avaliacao
 ORDER BY   2 DESC

SELECT	A.nm_inspetor				  AS inspetoresAvaliacao
		,	COUNT(1)					  AS avaliacaoTR
     FROM	producao.inspetor  AS A
LEFT JOIN	producao.ficha	  AS B ON (B.cd_inspetor = A.cd_inspetor)
LEFT JOIN	producao.inspecao	  AS C ON (C.cd_inspecao    = A.cd_inspecao)
    WHERE	C.cd_avaliacao = 'TR'
 GROUP BY	A.nm_inspetor
 ORDER BY   2 DESC

SELECT   CONCAT(cd_ordem_producao, '.', cd_linha_producao, '.', aa_produto) as cod_Produto
	  FROM   producao.inspecao
	  WHERE   cd_avaliacao = 'OK' AND cd_ordem_producao IN (
      SELECT   cd_ordem_producao FROM   producao.inspecao
      GROUP BY   cd_ordem_producao HAVING COUNT   (distinct cd_avaliacao) > 1);