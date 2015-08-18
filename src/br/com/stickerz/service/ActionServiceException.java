package br.com.stickerz.service;

public class ActionServiceException extends Exception {

    /**
     * 
     */
    private static final long serialVersionUID = 1L;

    public ActionServiceException() {
        super();
    }

    public ActionServiceException(String message, Throwable cause) {
        super(message, cause);
    }

    public ActionServiceException(String message) {
        super(message);
    }

    public ActionServiceException(Throwable cause) {
        super(cause);
    }

}
