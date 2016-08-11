package com.test;

import java.sql.ResultSet;

import com.util.DbHelper;

public class dbTest {
	public static void main(String[] args) {
		DbHelper dbHelper = new DbHelper();
		dbHelper.setSql("select * from ssc");
//		ResultSet rs = dbHelper.executeQuery();
	}
}
