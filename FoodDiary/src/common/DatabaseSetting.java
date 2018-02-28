package common;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class DatabaseSetting {

	static SqlSessionFactory sqlSessionFactory = null;
	static {
    InputStream inputStream = null;
	String resource = "resource/Configuration.xml";
	try {
		inputStream = Resources.getResourceAsStream(resource);
	} catch (IOException e) {
		e.printStackTrace();
	}
    sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
	}
	
	public static SqlSession getSession() {
		return sqlSessionFactory.openSession();
	}
}
