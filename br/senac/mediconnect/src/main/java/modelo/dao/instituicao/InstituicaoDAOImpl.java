package main.java.br.senac.mediconnect.modelo.dao.instituicao;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Session;

import main.java.br.senac.mediconnect.modelo.entidade.consulta.Consulta;
import main.java.br.senac.mediconnect.modelo.entidade.consulta.Consulta_;
import main.java.br.senac.mediconnect.modelo.entidade.instituicao.Instituicao;
import main.java.br.senac.mediconnect.modelo.entidade.instituicao.Instituicao_;
import main.java.br.senac.mediconnect.modelo.entidade.paciente.Paciente_;
import main.java.br.senac.mediconnect.modelo.factory.BuildFactory;

public class InstituicaoDAOImpl implements InstituicaoDAO {
	public BuildFactory fac;

	public InstituicaoDAOImpl() {
		fac = new BuildFactory();
	}

	@Override
	public void inserirInstituicao(Instituicao instituicao) {
		
		Session sessao = null;

		try {

			sessao = fac.ConectFac().openSession();
			sessao.beginTransaction();

			sessao.save(instituicao);

			sessao.getTransaction().commit();

		} catch (Exception sqlException) {

			sqlException.printStackTrace();
			
			if (sessao.getTransaction() != null) {
				sessao.getTransaction().rollback();
			}

		} finally {
			
			if (sessao != null) {
				sessao.close();
			}
		}

	}

	@Override
	public void deletarInstituicao(Instituicao instituicao) {

		Session sessao = null;

		try {
			
			sessao = fac.ConectFac().openSession();
			sessao.beginTransaction();

			sessao.delete(instituicao);
			sessao.getTransaction().commit();

		} catch (Exception sqlException) {

			sqlException.printStackTrace();
			
			if (sessao.getTransaction() != null) {
				sessao.getTransaction().rollback();
			}

		} finally {
			
			if (sessao != null) {
				sessao.close();
			}
		}

	}

	@Override
	public void atualizarInstituicao(Instituicao instituicao) {
		
		Session sessao = null;

		try {

			sessao = fac.ConectFac().openSession();
			sessao.beginTransaction();

			sessao.update(instituicao);
			sessao.getTransaction().commit();

		} catch (Exception sqlException) {

			sqlException.printStackTrace();
			
			if (sessao.getTransaction() != null) {
				sessao.getTransaction().rollback();
			}

		} finally {
			
			if (sessao != null) {
				sessao.close();
			}
		}

	}
	
	@Override
	public List<Instituicao> recuperarInstituicoesRecentesPorIdPaciente(Integer id)  {

		
		Session sessao = null;
		List<Instituicao> instituicoes = null;

		try {

			sessao = fac.ConectFac().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();

			CriteriaQuery<Instituicao> criteria = construtor.createQuery(Instituicao.class);
			Root<Instituicao> raizInstituicao = criteria.from(Instituicao.class);
			Root<Consulta> raizConsulta = criteria.from(Consulta.class);
			
			criteria.select(raizInstituicao);
			
			criteria.where(construtor.equal(raizConsulta.get(Consulta_.paciente).get(Paciente_.ID), id),
						   construtor.equal(raizConsulta.get(Consulta_.instituicao).get(Instituicao_.ID), raizInstituicao.get(Instituicao_.ID)));
			
			instituicoes = sessao.createQuery(criteria).getResultList();

			sessao.getTransaction().commit();

		} catch (Exception sqlException) {

			sqlException.printStackTrace();
			
			if (sessao.getTransaction() != null) {
				sessao.getTransaction().rollback();
			}

		} finally {
			
			if (sessao != null) {
				sessao.close();
			}
		}
		
		return instituicoes;
	}
	
	@Override
	public List<Instituicao> recuperarInstituicao() {
		
		Session sessao = null;
		List<Instituicao> instituicoes = null;

		try {

			sessao = fac.ConectFac().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();

			CriteriaQuery<Instituicao> criteria = construtor.createQuery(Instituicao.class);
			Root<Instituicao> raizInstituicao = criteria.from(Instituicao.class);
			criteria.select(raizInstituicao);
			instituicoes = sessao.createQuery(criteria).getResultList();

			sessao.getTransaction().commit();

		} catch (Exception sqlException) {

			sqlException.printStackTrace();
			
			if (sessao.getTransaction() != null) {
				sessao.getTransaction().rollback();
			}

		} finally {
			
			if (sessao != null) {
				sessao.close();
			}
		}
		
		return instituicoes;
	}
	
	
	public Instituicao recuperarInstituicaoPorId(Integer id) {
		
		Session sessao = null;
		Instituicao instituicao = null;

		try {

			sessao = fac.ConectFac().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();

			CriteriaQuery<Instituicao> criteria = construtor.createQuery(Instituicao.class);
			Root<Instituicao> raizInstituicao = criteria.from(Instituicao.class);
			
			criteria.select(raizInstituicao);
			
			criteria.where(construtor.equal(raizInstituicao.get(Instituicao_.ID), id));
			
			instituicao = sessao.createQuery(criteria).getSingleResult();

			sessao.getTransaction().commit();

		} catch (Exception sqlException) {

			sqlException.printStackTrace();
			
			if (sessao.getTransaction() != null) {
				sessao.getTransaction().rollback();
			}

		} finally {
			
			if (sessao != null) {
				sessao.close();
			}
		}
		
		return instituicao;
	}
	
}