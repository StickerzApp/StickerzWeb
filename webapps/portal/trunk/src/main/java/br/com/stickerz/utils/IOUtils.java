package br.com.stickerz.utils;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

public class IOUtils {

	public static byte[] serialize(Object obj) throws IOException {
		ByteArrayOutputStream bytesOStream = new ByteArrayOutputStream();
		GZIPOutputStream zipOSteam = new GZIPOutputStream(bytesOStream);
		ObjectOutputStream ObjectOStream = new ObjectOutputStream(zipOSteam);
		ObjectOStream.writeObject(obj);
		ObjectOStream.close();
		return bytesOStream.toByteArray();
	}
	
	@SuppressWarnings("unchecked")
	public static <T> T unserialize(byte[] bytes) throws IOException, ClassNotFoundException {
		ByteArrayInputStream bytesIStream = new ByteArrayInputStream(bytes);
		GZIPInputStream zipISteam = new GZIPInputStream(bytesIStream);
		ObjectInputStream objectIStream = new ObjectInputStream(zipISteam);
		return (T) objectIStream.readObject();		
	}
	
	public static void close(Closeable c) {
		try {
			if (c != null) {
				c.close();
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
}
