package br.com.stickerz.dao;

import java.util.List;

public interface CrudDao<T> {

    T save(T entity);
    
    T update(T entity);
    
    T get(Object id);
     
    void delete(Object id);
    
    List<T> list();
    
    List<T> findWithQuery(String jpql, Parameters params, int limit, int offset);
    List<T> findWithQuery(String jpql, Parameters params, int limit);
    List<T> findWithQuery(String jpql, Parameters params);
    
    List<T> findWithNamedQuery(String name, Parameters params, int limit, int offset);
    List<T> findWithNamedQuery(String name, Parameters params, int limit);
    List<T> findWithNamedQuery(String name, Parameters params);
    
    List<T> findWithNativeQuery(String sql, Parameters params, int limit, int offset);
    List<T> findWithNativeQuery(String sql, Parameters params, int limit);
    List<T> findWithNativeQuery(String sql, Parameters params);
    
}
