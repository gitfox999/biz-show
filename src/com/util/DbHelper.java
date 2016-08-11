package com.util;

import java.sql.*;
import java.util.*;

public class DbHelper {

	private String sql; // Ҫ�����sql���

	public void setSql(String sql) {
		this.sql = sql;
	}

	private List sqlValues; // sql���Ĳ���

	public void setSqlValues(List sqlValues) {
		this.sqlValues = sqlValues;
	}

	private Connection con; // ���Ӷ���

	public void setCon(Connection con) {
		this.con = con;
	}


	/**
	 * ��ȡ���ݿ�����
	 * 
	 * @return
	 */
	public Connection getConnection() {

		String driver_class = null;
		String driver_url = null;
		String database_user = null;
		String database_password = null;
		try {

			driver_class = "com.mysql.jdbc.Driver";
			driver_url = "jdbc:mysql://127.0.0.1/biz";
			database_user = "root";
			database_password = "x5";

			Class.forName(driver_class);
			con = DriverManager.getConnection(driver_url, database_user, database_password);

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}

	/**
	 * �ر����ݿ�
	 * 
	 * @param con
	 * @param pst
	 * @param rst
	 */
	public void closeAll(Connection con, PreparedStatement pst, ResultSet rst) {
		if (rst != null) {
			try {
				rst.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		if (pst != null) {
			try {
				pst.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		if (con != null) {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}

	/**
	 * ����
	 * 
	 * @param sql
	 * @param sqlValues
	 * @return
	 */
	/*public ResultSet executeQuery() {
		ResultSet rst = null;
		PreparedStatement pst = null;
		try {

			pst = con.prepareStatement(sql);
			if (sqlValues != null && sqlValues.size() > 0) { // ��sql����д���ռλ��ʱ
				setSqlValues(pst, sqlValues);
			}
			rst = pst.executeQuery();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			this.closeAll(con, pst, rst);
		}

		return rst;
	}
*/
	/**
	 * ��ɾ��
	 * 
	 * @return
	 */
	 /*public intexecuteUpdate() {
		int result = -1;
		PreparedStatement pst = null;
		try {
			pst = con.prepareStatement(sql);
			if (sqlValues != null && sqlValues.size() > 0) { // ��sql����д���ռλ��ʱ
				setSqlValues(pst, sqlValues);
			}
			result = pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			this.closeAll(con, pst, null);
		}

		return result;
	}
*/
	/**
	 * ��sql����е�ռλ����ֵ
	 * 
	 * @param pst
	 * @param sqlValues
	 */
	private void setSqlValues(PreparedStatement pst, List sqlValues) {
		for (int i = 0; i < sqlValues.size(); i++) {
			try {
				pst.setObject(i + 1, sqlValues.get(i));
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
