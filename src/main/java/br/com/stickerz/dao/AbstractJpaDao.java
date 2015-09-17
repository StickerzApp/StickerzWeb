package br.com.stickerz.dao;

import java.lang.reflect.ParameterizedType;
import java.util.List;
import java.util.Map.Entry;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

public abstract class AbstractJpaDao<T> implements CrudDao<T> {

    protected Class<T> entityClass;

    @PersistenceContext
    protected EntityManager entityManager;

    @SuppressWarnings("unchecked")
    public AbstractJpaDao() {
        ParameterizedType genericSuperclass = (ParameterizedType) getClass().getGenericSuperclass();
        entityClass = (Class<T>) genericSuperclass.getActualTypeArguments()[0];
    }

    public EntityManager getEntityManager() {
        return entityManager;
    }

    public void setEntityManager(EntityManager entityManager) {
        this.entityManager = entityManager;
    }

    public Class<T> getEntityClass() {
        return entityClass;
    }

    public T save(T t) {
        entityManager.persist(t);
        return t;
    }

    public T update(T t) {
    	T merged = entityManager.merge(t);
        return merged;
    }

    public void delete(Object id) {
        Object ref = entityManager.getReference(entityClass, id);
        entityManager.remove(ref);
    }
    

    public T get(Object id) {
        return entityManager.find(entityClass, id);
    }

    @SuppressWarnings("unchecked")
    public  List<T> list() {
        return entityManager.createQuery("from " + entityClass.getSimpleName()).getResultList();
    }
    
    @SuppressWarnings("unchecked")
    public List<T> findWithQuery(String jpql, Parameters params, int limit, int offset) {
        Query query = entityManager.createQuery(jpql);
        if (limit > 0) {
            query.setMaxResults(limit);
        }
        if (offset > 0) {
            query.setFirstResult(offset);
        }
        for (Entry<String, Object> entry : params.entrySet()) {
            query.setParameter(entry.getKey(), entry.getValue());
        }
        return query.getResultList();
    }
    
    @SuppressWarnings("unchecked")
    public <Type> Type getWithQuery(String jpql, Parameters params) {
    	Query query = entityManager.createQuery(jpql);
    	for (Entry<String, Object> entry : params.entrySet()) {
    		query.setParameter(entry.getKey(), entry.getValue());
    	}
    	
    	try {
    		return (Type) query.getSingleResult();
		} catch (NoResultException e) {
			return null;
		}
    }

    public List<T> findWithQuery(String jpql, Parameters params, int limit) {
        return findWithQuery(jpql, params, limit, 0);
    }

    public List<T> findWithQuery(String jpql, Parameters params) {
        return findWithQuery(jpql, params, 0, 0);
    }
    
    @SuppressWarnings("unchecked")
    public List<T> findWithNamedQuery(String name, Parameters params, int limit, int offset) {
        Query query = entityManager.createNamedQuery(name);
        if (limit > 0) {
            query.setMaxResults(limit);
        }
        if (offset > 0) {
            query.setFirstResult(offset);
        }
        for (Entry<String, Object> entry : params.entrySet()) {
            query.setParameter(entry.getKey(), entry.getValue());
        }
        return query.getResultList();
    }
    
    public List<T> findWithNamedQuery(String name, Parameters params, int limit) {
        return findWithNamedQuery(name, params, limit, 0);
    }

    public List<T> findWithNamedQuery(String name, Parameters params) {
        return findWithNamedQuery(name, params, 0, 0);
    }
    
    @SuppressWarnings("unchecked")
    public List<T> findWithNativeQuery(String sql, Parameters params, int limit, int offset) {
        Query query = entityManager.createNativeQuery(sql, entityClass);
        if (limit > 0) {
            query.setMaxResults(limit);
        }
        if (offset > 0) {
            query.setFirstResult(offset);
        }
        for (Entry<String, Object> entry : params.entrySet()) {
            query.setParameter(entry.getKey(), entry.getValue());
        }
        return query.getResultList();
    }
    
    public List<T> findWithNativeQuery(String sql, Parameters params, int limit) {
        return findWithNativeQuery(sql, params, limit, 0);
    }

    public List<T> findWithNativeQuery(String sql, Parameters params) {
        return findWithNativeQuery(sql, params, 0, 0);
    }
        
}
