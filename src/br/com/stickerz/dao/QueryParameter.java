package br.com.stickerz.dao;


public class QueryParameter {

    private Parameters parameters = new Parameters();
    
    private QueryParameter(String name, Object value) {
        parameters.put(name, value);
    }
    
    public Parameters parameters() {
        return parameters;
    }

    public static QueryParameter with(String name, Object value) {
        return new QueryParameter(name, value);
    }
    
    public QueryParameter and(String name, Object value) {
        parameters.put(name, value);
        return this;
    }
    
}
