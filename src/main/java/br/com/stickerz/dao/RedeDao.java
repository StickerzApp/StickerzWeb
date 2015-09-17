package br.com.stickerz.dao;


import static br.com.stickerz.dao.QueryParameter.with;

import java.util.List;

import org.springframework.stereotype.Repository;

import br.com.stickerz.model.Rede;


@Repository
public class RedeDao extends AbstractJpaDao<Rede> {

	public List<Rede> listarRedesAtivas() {
		String jpql = "FROM Rede r WHERE r.bolAtivo = :bolAtivo ";
		Parameters params = with("bolAtivo", true).parameters();
		return findWithQuery(jpql, params);
	}
	
}
