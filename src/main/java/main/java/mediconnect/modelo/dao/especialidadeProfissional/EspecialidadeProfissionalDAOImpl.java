package main.java.mediconnect.modelo.dao.especialidadeProfissional;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Session;

import main.java.mediconnect.modelo.entidade.especialidadeProfissional.EspecialidadeProfissional;
import main.java.mediconnect.modelo.factory.BuildFactory;

public class EspecialidadeProfissionalDAOImpl implements EspecialidadeProfissionalDAO{
	
	public BuildFactory fac;
	
	public EspecialidadeProfissionalDAOImpl() {
		fac = new BuildFactory();
	}

	@Override
	public void inserirEspecialidadeProfissional(EspecialidadeProfissional especialidadeProfissional) {
		Session sessao = null;
		
		try {
			
			sessao = fac.ConectFac().openSession();
			sessao.beginTransaction();

			sessao.save(especialidadeProfissional);
			sessao.getTransaction().commit();
			
		} catch (Exception e) {
			
			e.printStackTrace();
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
	public void deletarEspecialidadeProfissional(EspecialidadeProfissional especialidadeProfissional) {
		Session sessao = null;
		
		try {
			
			sessao = fac.ConectFac().openSession();
			sessao.beginTransaction();

			sessao.delete(especialidadeProfissional);
			sessao.getTransaction().commit();
			
		} catch (Exception e) {
			
			e.printStackTrace();
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
	public void atualizarEspecialidadeProfissional(EspecialidadeProfissional especialidadeProfissional) {
		Session sessao = null;
		
		try {
			
			sessao = fac.ConectFac().openSession();
			sessao.beginTransaction();
			sessao.update(especialidadeProfissional);
			sessao.getTransaction().commit();

		} catch (Exception e) {
			
			e.printStackTrace();
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
	public List<EspecialidadeProfissional> recuperarEspecialidadeProfissional() {
		Session sessao = null;
		List<EspecialidadeProfissional> especialidadesProfissionais = null;
		
		try {
			
			sessao = fac.ConectFac().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();

			CriteriaQuery<EspecialidadeProfissional> criteria = construtor.createQuery(EspecialidadeProfissional.class);
			Root<EspecialidadeProfissional> raizEspecialidadeProfissional = criteria.from(EspecialidadeProfissional.class);
			criteria.select(raizEspecialidadeProfissional);
			especialidadesProfissionais = sessao.createQuery(criteria).getResultList();

			sessao.getTransaction().commit();
			
		} catch (Exception e) {
			
			e.printStackTrace();
			if (sessao.getTransaction() != null) {
				sessao.getTransaction().rollback();
			}

		} finally {
			if (sessao != null) {
				sessao.close();
			}
		}
		return especialidadesProfissionais;
	}
}
