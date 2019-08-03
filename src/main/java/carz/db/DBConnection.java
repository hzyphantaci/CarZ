package carz.db;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

import com.alibaba.druid.pool.DruidDataSource;

public class DBConnection {
	private static DBConnection dbCon = null;
	private String url;
	private String username;
	private String password;
	private DruidDataSource druidDataSource;
	private DBConnection() {
		try {
			this.init();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	public static DBConnection getInstance() {
		if (dbCon == null)
			dbCon = new DBConnection();
		return dbCon;
	}

	private void init() throws Exception {
		Properties props = new Properties();
		InputStream in = DBConnection.class.getClassLoader()
				.getResourceAsStream("db.properties");
		props.load(in);
		this.url = props.getProperty("url");
		this.username = props.getProperty("username");
		this.password = props.getProperty("password");

		this.druidDataSource = new DruidDataSource();
		this.druidDataSource.setUrl(url);
		this.druidDataSource.setUsername(username);
		this.druidDataSource.setPassword(password);
		this.druidDataSource.init();

	}
	public Connection getConnection() {
		Connection conn = null;
		try {
			conn = this.druidDataSource.getConnection();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		return conn;
	}

	public void close(Connection conn, Statement stmt, ResultSet rs) {
		try {
			this.close(conn, stmt);
			if (rs != null)
				rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void close(Connection conn, Statement stmt) {
		try {
			if (stmt != null)
				stmt.close();
			if (conn != null)
				conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
