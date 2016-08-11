package com.test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.util.DbHelper;

public class InsertTest {
	public static void main(String[] args) throws SQLException {
		for(int j =0;j<100;j++){
			int[] nums = new int[5];
			InsertTest insertTest = new InsertTest();
			for(int i=0;i<5;i++){
				int num = (int)(0+Math.random()*(9-0+1));
				nums[i] = num;
				System.out.println(num);
			}
			insertTest.insertAll(nums);
		}
	}
	
	private void insertAll(int[] nums) throws SQLException{
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String noStr = "",preRowNo="";
		int id=1,max = 0,min =9,sum=0,cross=0,times =1;
		DbHelper dbHelper = new DbHelper();
		Connection connection = dbHelper.getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("select * from ssc order by id desc limit 0,1");
		ResultSet resultSet = preparedStatement.executeQuery();
		if(resultSet.next()){
			id = resultSet.getInt("id")+1;
			times = resultSet.getInt("times")+1;
			preRowNo = resultSet.getString("no");
		}
		for (int i : nums) {
			noStr += String.valueOf(i);
			max = max > i ? max :i;
			min = min < i ? min :i;
			sum +=i;
		}
		for (int i=0;i< nums.length;i++) {
			int preRowNumTmp = 0;
			if(!preRowNo.equals("")){
				char[] charArray = preRowNo.toCharArray();
				preRowNumTmp = Integer.parseInt(charArray[i]+"");
			}
			insertNo(i,nums[i],id,preRowNumTmp,connection);
		}
		cross = max-min;
		String nowStr = dateFormat.format(new Date());
		preparedStatement = connection.prepareStatement("insert into ssc values ("+id+",'"+noStr+"',"+sum+","+cross+",'"+nowStr+"',"+times+")");
		preparedStatement.execute();
		dbHelper.closeAll(connection, preparedStatement, resultSet);
	}
	
	private void insertNo(int pos,int num,int sscid,int preRowNum,Connection connection) throws SQLException{
		String[] posStrArray = {"a","b","c","d","e"};
		String tableName = "ssc_"+posStrArray[pos];
		String numStr = "";
		int id = 1;
		boolean isHasData = false;
		int da=1,xiao=1,ji=1,ou=1,zhi=1,he=1,lu0=1,lu1=1,lu2=1,sheng=1,jiang=1,ping=1;
		boolean isDa = num >=5,isXiao = num<5,isJi=num%2 != 0,isOu=num %2 ==0;
		boolean isZhi = (num == 1 || num == 2 || num == 3 || num == 5 || num == 7);
		boolean isHe = (num == 0 || num == 4 || num == 6 || num == 8 || num == 9);
		boolean isLu0 = (num == 0 || num == 3 || num == 6 || num == 9);
		boolean isLu1 = (num == 1 || num == 4 || num == 7);
		boolean isLu2 = (num == 2 || num == 5 || num == 8);
		boolean isSheng = num-preRowNum > 0;
		boolean isPing = num-preRowNum == 0;
		boolean isJiang = num-preRowNum < 0;
		String[] otherStrArray = {"da","xiao","ji","ou","zhi","he","lu0","lu1","lu2","sheng","ping","jiang"};
		boolean[] otherBoolArray = {isDa,isXiao,isJi,isOu,isZhi,isHe,isLu0,isLu1,isLu2,isSheng,isPing,isJiang};
		int[] otherArray = new int[otherStrArray.length];
		for(int i=0;i<otherStrArray.length;i++){ otherArray[i] = 1;}
		int numCross = Math.abs(preRowNum - num);
		int[] numCrossArray = new int[10];
		for(int i=0;i<10;i++){ numCrossArray[i] = 1;}
		int[] numArray = new int[10];
		for(int i=0;i<10;i++){ numArray[i] = 1;}
		PreparedStatement preparedStatement = connection.prepareStatement("select * from "+tableName+" order by id desc limit 0,1");
		ResultSet resultSet = preparedStatement.executeQuery();
		if(resultSet.next()){
			isHasData = true;
			id = resultSet.getInt("id")+1;
//			int daTmp = resultSet.getInt("da")+1;
//			da = isDa ?  -1 : ((daTmp == -1 ? 0 : daTmp) + 1);
//			int xiaoTmp = resultSet.getInt("xiao")+1;
//			xiao = isXiao ?  -1 : ((xiaoTmp == -1 ? 0 : xiaoTmp) + 1);
//			int jiTmp = resultSet.getInt("ji")+1;
//			ji = isJi  ?  -1 : ((jiTmp == -1 ? 0 : jiTmp) + 1);
//			int ouTmp = resultSet.getInt("ou")+1;
//			ou = isOu ?  -1 : ((ouTmp == -1 ? 0 : ouTmp) + 1);
//			int zhiTmp = resultSet.getInt("zhi")+1;
//			zhi = isZhi ?  -1 : ((zhiTmp == -1 ? 0 : zhiTmp) + 1);
//			int heTmp = resultSet.getInt("he")+1;
//			he = isHe ?  -1 : ((heTmp == -1 ? 0 : heTmp) + 1);
//			int lu0Tmp = resultSet.getInt("lu0")+1;
//			lu0 = isLu0 ?  -1 : ((lu0Tmp == -1 ? 0 : lu0Tmp) + 1);
//			int lu1Tmp = resultSet.getInt("lu1")+1;
//			lu1 = isLu1 ?  -1 : ((lu1Tmp == -1 ? 0 : lu1Tmp) + 1);
//			int lu2Tmp = resultSet.getInt("lu2")+1;
//			lu2 = isLu2 ?  -1 : ((lu2Tmp == -1 ? 0 : lu2Tmp) + 1);
//			int shengTmp = resultSet.getInt("lu0")+1;
//			lu0 = isLu0 ?  -1 : ((lu0Tmp == -1 ? 0 : lu0Tmp) + 1);
//			int lu1Tmp = resultSet.getInt("lu1")+1;
//			lu1 = isLu1 ?  -1 : ((lu1Tmp == -1 ? 0 : lu1Tmp) + 1);
//			int lu2Tmp = resultSet.getInt("lu2")+1;
//			lu2 = isLu2 ?  -1 : ((lu2Tmp == -1 ? 0 : lu2Tmp) + 1);
			
		}
		for(int i=0;i<10;i++){
			int numTmp = isHasData ? resultSet.getInt("n"+i):0;
			numArray[i] = numTmp == -1 ? 1 : numTmp+1;
			
			int numCrossTmp = isHasData ? resultSet.getInt("n"+i):0;
			numCrossArray[i] = numCrossTmp == -1 ? 1 : numCrossTmp+1;
		}
		for(int i=0;i<otherStrArray.length;i++){
			if(!otherBoolArray[i]){
				int otherTmp = isHasData ? resultSet.getInt(otherStrArray[i]):0;
				otherArray[i] = otherTmp == -1 ? 1 : otherTmp+1;
			}else{
				otherArray[i] = -1;
			}
		}
		numArray[num] = -1;
		numCrossArray[numCross] = -1;
//		da = isDa ? -1 : da;
//		xiao = isXiao ? -1 : xiao;
//		ji = isJi ? -1 : ji;
//		ou = isOu ? -1 : ou;
//		zhi = isZhi ? -1 : zhi;
//		he = isHe ? -1 : he;
//		lu0 = isLu0 ? -1 : lu0;
//		lu1 = isLu1 ? -1 : lu1;
//		lu2 = isLu2 ? -1 : lu2;
//		sheng = isSheng ? -1 : sheng;
//		ping = isPing ? -1 : ping;
//		jiang = isJiang ? -1 : jiang;
		StringBuffer buffer = new StringBuffer();
		for (int i : numArray) {
			buffer.append(","+i);
		}
		for (int i : otherArray) {
			buffer.append(","+i);
		}
		for (int i : numCrossArray) {
			buffer.append(","+i);
		}
		String sql = "insert into "+tableName+" values ("+id+","+sscid+buffer.toString()+")";
		System.out.println(sql);
		preparedStatement = connection.prepareStatement(sql);
		preparedStatement.execute();
	}
}
