<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.util.DbHelper"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html id="notie">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="renderer" content="webkit">
<meta name="author" content="河南时时彩走势图">
<meta name="copyright" content="Copyright @河南时时彩.cn 版权所有">
<meta name="Keywords"
	content="河南时时彩走势图">
<meta name="Description"
	content="河南时时彩走势图">
<title>河南时时彩走势图</title>
<link rel="icon" type="image/vnd.microsoft.icon"
	href="">
<link rel="stylesheet"
	href="css/all.css?v1.0.10.css">
<link rel="stylesheet"
	href="css/ssc.css?v1.0.10.css">
<!--[if IE 6]>
        <script>document.execCommand('BackgroundImageCache', false, true); </script>
        <![endif]-->
</head>
<%
	String[] tableArray = {"a","b","c","d","e"};
	String[] posNameArray = {"万","千","百","十","个"};
	int[] limitCount = {30,50,100,150,200,500};
	int tableFix = 4;
	if(request.getParameter("t") != null){
		tableFix = Integer.valueOf(request.getParameter("t").toString());
	}
	int limitFix = 0;
	if(request.getParameter("l") != null){
		limitFix = Integer.valueOf(request.getParameter("l").toString());
	}
%>
<body class="tdww3">
	<div class="panle-aside-showbar">
	</div>
	<div class="wrap">
		<div class="chart-hd">
			<div class="logo">
				<img
					src="css/ssc-ssc.png" height="40px">
				老河南时时彩
			</div>
			<ul class="chart-tag">
				<li class="cur"><span><a
						href="#">基本走势</a></span></li>
				<li><span><a href="#">K线图</a></span></li>
				<li><span><a href="#">直方图</a></span></li>
				<li><span><a href="#">遗漏统计</a></span></li>
				<li><span><a
						href="#">历史开奖数据</a></span></li>
			</ul>

		</div>
		<div class="chart-nav2" lot="255401" ct="dww3">
			<ul>
				<!-- <li><span>二星:</span><a
					href="#"
					class="">号码分布<em></em></a>|<a
					href="#"
					class="">直选<em></em></a>|<a
					href="#"
					class="">组选<em></em></a>|<a
					href="#"
					class="">大小<em></em></a>|<a
					href="#"
					class="">奇偶<em></em></a>|<a
					href="#"
					class="">质合<em></em></a>|<a
					href="#"
					class="">跨度<em></em></a>|<a
					href="#"
					class="">和值<em></em></a>|<a
					href="#"
					class="">012路<em></em></a>|<a
					href="#"
					class="">平均值<em></em></a>|<a
					href="#"
					class="">升平降<em></em></a></li> -->
				<li><span>一星:</span>
					<%
						for(int i =0;i<posNameArray.length;i++){
							String posStr = posNameArray[i];
					%>
					<a
					href="index.jsp?t=<%=i %>"
					class="<%if(tableFix == i){%>cur<%}%>"><%=posStr %>位<em></em></a><%if(posNameArray.length-1 != i){%>|<%}%>
					<%} %>
					</li>
				<!-- <li><span>三星:</span><a
					href="#"
					class="">号码分布<em></em></a>|<a
					href="#"
					class="">直选<em></em></a>|<a
					href="#"
					class="">组选<em></em></a>|<a
					href="#"
					class="">大小<em></em></a>|<a
					href="#"
					class="">奇偶<em></em></a>|<a
					href="#"
					class="">质合<em></em></a>|<a
					href="#"
					class="">跨度<em></em></a>|<a
					href="#"
					class="">和值<em></em></a>|<a
					href="#"
					class="">012路<em></em></a>|<a
					href="#"
					class="">平均值<em></em></a>|<a
					href="#"
					class="">升平降<em></em></a></li> -->
				<li><span>其它:</span><a
					href="#"
					class="">五星走势<em></em></a>|<a
					href="#"
					class="">五星综合<em></em></a>|<a
					href="#"
					class="">大小单双<em></em></a></li>
			</ul>
		</div>
		<div class="chart-sc">
			<ul>
				<li><strong>查询：</strong></li>
				<%
					for(int i =0;i<limitCount.length;i++){
						int countTmp = limitCount[i];
				%>
				<li><a
					href="index.jsp?l=<%=i %>&t=<%=tableFix %>"
					class="btn-sc2<%if(limitFix == i){ %> btn-sc-cur<%} %>">近<%=countTmp %>期</a></li>
					
				<%} %>
			</ul>
		</div>
		<div class="chart-tab nonum" id="chart-tab">
			<table width="100%" class="chart-table">
				<thead class="dww3">
					<tr>
						<th rowspan="2" class="w80" width="">期号&nbsp; <a
							href="#"
							class="tharr tharr-up"></a></th>
						<td rowspan="2" class="tdbdr "></td>
						<th rowspan="2" class="w57" width="">奖号</th>
						<td rowspan="2" class="tdbdr "></td>
						<th rowspan="2" class="w31" width="">和值</th>
						<td rowspan="2" class="tdbdr "></td>
						<th rowspan="2" class="w31" width="">跨度</th>
						<td rowspan="2" class="tdbdr "></td>
						<th colspan="11" class="noth "><%=posNameArray[tableFix] %>位</th>
						<td class="tdbdr "></td>
						<th colspan="8" class="noth "><%=posNameArray[tableFix] %>位形态分布</th>
						<td class="tdbdr "></td>
						<th colspan="3" class="noth "><%=posNameArray[tableFix] %>位012路</th>
						<td class="tdbdr "></td>
						<th colspan="3" class="noth "><%=posNameArray[tableFix] %>位</th>
						<td class="tdbdr "></td>
						<th colspan="10" class="noth "><%=posNameArray[tableFix] %>位振幅</th>
					</tr>
					<tr>
						<td class=" w2_5" width="">0</td>
						<td class=" w2_5" width="">1</td>
						<td class=" w2_5" width="">2</td>
						<td class=" w2_5" width="">3</td>
						<td class=" w2_5" width="">4</td>
						<td class="tdbdr "></td>
						<td class=" w2_5" width="">5</td>
						<td class=" w2_5" width="">6</td>
						<td class=" w2_5" width="">7</td>
						<td class=" w2_5" width="">8</td>
						<td class=" w2_5" width="">9</td>
						<td class="tdbdr "></td>
						<td class=" w2_5" width="">大</td>
						<td class=" w2_5" width="">小</td>
						<td class="tdbdr "></td>
						<td class=" w2_5" width="">奇</td>
						<td class=" w2_5" width="">偶</td>
						<td class="tdbdr "></td>
						<td class=" w2_5" width="">质</td>
						<td class=" w2_5" width="">合</td>
						<td class="tdbdr "></td>
						<td class=" w2_5" width="">0</td>
						<td class=" w2_5" width="">1</td>
						<td class=" w2_5" width="">2</td>
						<td class="tdbdr "></td>
						<td class=" w2_5" width="">升</td>
						<td class=" w2_5" width="">平</td>
						<td class=" w2_5" width="">降</td>
						<td class="tdbdr "></td>
						<td class=" w2_5" width="">0</td>
						<td class=" w2_5" width="">1</td>
						<td class=" w2_5" width="">2</td>
						<td class=" w2_5" width="">3</td>
						<td class=" w2_5" width="">4</td>
						<td class=" w2_5" width="">5</td>
						<td class=" w2_5" width="">6</td>
						<td class=" w2_5" width="">7</td>
						<td class=" w2_5" width="">8</td>
						<td class=" w2_5" width="">9</td>
					</tr>
				</thead>
				<tbody id="data-tab" class="zdww3">
					<%
						DbHelper dbHelper = new DbHelper();
						Connection connection = dbHelper.getConnection();
						String tableName = "ssc_"+tableArray[tableFix];
						PreparedStatement preparedStatement = connection.prepareStatement("select aa.* from (select a.*,b.no,b.sum,b.cross,b.time,b.times from "+tableName+" a,ssc b where a.sscid=b.id order by id desc limit 0,"+limitCount[limitFix]+") aa order by id asc");
						ResultSet resultSet = preparedStatement.executeQuery();
						SimpleDateFormat dateFormat = new SimpleDateFormat("yyMMdd");
						StringBuffer sbtmp = new StringBuffer();
						int[] perCountArray = new int[32];
						int[] maxForgot = new int[32];
						String[] otherStrArray = {"大","小","奇","偶","质","合","0","1","2","升","平","降"};
						String[] otherFieldArray = {"da","xiao","ji","ou","zhi","he","lu0","lu1","lu2","sheng","ping","jiang"};
						String[] otherBallArray = {"17","17","19","19","8","8","2","2","2","17","17","17"};
						while(resultSet.next()){
							double mx=0,my=0,x2=0,lx=0,ly=0;
					%>
					<tr>
						<td class="tdbg_1"><%=dateFormat.format(resultSet.getDate("time")) %>-<%=String.format("%03d", resultSet.getInt("times"))  %></td>
						<td class="tdbdr"></td>
						<td class="tdbg_1">
						
						<%
							String nostr = resultSet.getString("no");
							char[] chars = nostr.toCharArray();
							String numTmp = "";
							sbtmp = new StringBuffer();	
							for(int i=0; i<chars.length;i++){
								if(i == tableFix){
									numTmp += "<strong class=\"num\">"+chars[i]+"</strong>";
								}else{
									numTmp += chars[i];
								}
							}
							sbtmp.append(numTmp);
						%><span class="sum"><%=sbtmp.toString() %></span></td>
						<td class="tdbdr"></td>
						<td class="tdbg_1"><span class="sum"><%=resultSet.getInt("sum") %></span></td>
						<td class="tdbdr"></td>
						<td class="tdbg_1"><span class="sum"><%=resultSet.getInt("cross") %></span></td>
						<td class="tdbdr"></td>
						<%
							for(int i =0;i<10;i++){
								String hit= "";
								int value = resultSet.getInt("n"+i);
								String valueStr = value+"";
								maxForgot[i] = value > maxForgot[i] ? value : maxForgot[i];
								if(value == -1){
									perCountArray[i]++;
									
									hit = " hit=\"\"";
									valueStr = "<span class=\"ball_5\">"+i+"</span>";
									
								}
						%>
							<td class="tdbg_8 ysep_10"<%=hit %>><%=valueStr %></td>
							<%
								if(i==4){ 
							%>
									<td class="tdbdr"></td>
							<%
								} 
							%>
						<%
							}
						%>
						<td class="tdbdr"></td>
						<%
							for(int i =0;i<otherStrArray.length;i++){
								int value = resultSet.getInt(otherFieldArray[i]);
								String hit = "";
								String valueStr = value +"";
								maxForgot[i+10] = value > maxForgot[i+10] ? value : maxForgot[i+10];
								if(value == -1){
									perCountArray[i+10]++;
									hit = " hit=\"\"";
									valueStr = "<span class=\"ball_"+otherBallArray[i]+"\">"+otherStrArray[i]+"</span>";
								}
								%>
								<td class="tdbg_3"<%=hit %>><%=valueStr %></td>
								<%
								if(i == 1 || i==3 || i==5 || i==8){
									%>
									<td class="tdbdr"></td>
									<%
								}
							}
						%>
						<td class="tdbdr"></td>
						<%
							for(int i =0;i<10;i++){
								String hit= "";
								int value = resultSet.getInt("z"+i);
								String valueStr = value+"";
								maxForgot[i+22] = value > maxForgot[i+22] ? value : maxForgot[i+22];
								if(value == -1){
									perCountArray[i+22]++;
									hit = " hit=\"\"";
									valueStr = "<span class=\"ball_14\">"+i+"</span>";
									

								}
						%>
							<td class="tdbg_4"<%=hit %>><%=valueStr %></td>
						<%
							}
						%>
					</tr>
					<%} %>
				</tbody>
				<tfoot id="addedrow">
					<tr><td colspan='99'<div class='statis'> <h2>图表指标统计</h2><span> <label></label><label> 当前页统计 </label></span></div></td></tr><tr><th rowspan="2" class="w80" width="">期号&nbsp; <a href="#" class=" -up"></a></th><td rowspan="2" class="tdbdr "></td><th rowspan="2" class="w57" width="">奖号</th><td rowspan="2" class="tdbdr "></td><th rowspan="2" class="w31" width="">和值</th><td rowspan="2" class="tdbdr "></td><th rowspan="2" class="w31" width="">跨度</th><td rowspan="2" class="tdbdr "></td><th colspan="11" class="noth ">百位</th><td class="tdbdr "></td><th colspan="8" class="noth ">百位形态分布</th><td class="tdbdr "></td><th colspan="3" class="noth ">百位012路</th><td class="tdbdr "></td><th colspan="3" class="noth ">百位</th><td class="tdbdr "></td><th colspan="10" class="noth ">百位振幅</th></tr><tr><td class=" w2_5" width="">0</td><td class=" w2_5" width="">1</td><td class=" w2_5" width="">2</td><td class=" w2_5" width="">3</td><td class=" w2_5" width="">4</td><td class="tdbdr "></td><td class=" w2_5" width="">5</td><td class=" w2_5" width="">6</td><td class=" w2_5" width="">7</td><td class=" w2_5" width="">8</td><td class=" w2_5" width="">9</td><td class="tdbdr "></td><td class=" w2_5" width="">大</td><td class=" w2_5" width="">小</td><td class="tdbdr "></td><td class=" w2_5" width="">奇</td><td class=" w2_5" width="">偶</td><td class="tdbdr "></td><td class=" w2_5" width="">质</td><td class=" w2_5" width="">合</td><td class="tdbdr "></td><td class=" w2_5" width="">0</td><td class=" w2_5" width="">1</td><td class=" w2_5" width="">2</td><td class="tdbdr "></td><td class=" w2_5" width="">升</td><td class=" w2_5" width="">平</td><td class=" w2_5" width="">降</td><td class="tdbdr "></td><td class=" w2_5" width="">0</td><td class=" w2_5" width="">1</td><td class=" w2_5" width="">2</td><td class=" w2_5" width="">3</td><td class=" w2_5" width="">4</td><td class=" w2_5" width="">5</td><td class=" w2_5" width="">6</td><td class=" w2_5" width="">7</td><td class=" w2_5" width="">8</td><td class=" w2_5" width="">9</td></tr>
							<tr class="curstat "><td colspan="3">出现总次数</td><td class="tdbdr"></td><td class="">--</td><td class=""></td><td class="">--</td><td class=""></td>
							<%for(int i =0;i<perCountArray.length;i++){ %>
							<td class=""><%=perCountArray[i] %></td>
								<%if(i == 4 || i ==9 || i == 11 || i == 13 || i == 15 || i==18 || i ==21){%>
									<td class=""></td>
								<%} %>
							<%} %>
							</tr>
							<tr class="curstat trbg "><td colspan="3">平均遗漏值</td><td class="tdbdr"></td><td class="">--</td><td class=""></td><td class="">--</td><td class=""></td>
							<%for(int i =0;i<perCountArray.length;i++){ %>
							<td class=""><%=limitCount[limitFix]/(perCountArray[i] == 0 ? 1:perCountArray[i]) %></td>
								<%if(i == 4 || i ==9 || i == 11 || i == 13 || i == 15 || i==18 || i ==21){%>
									<td class=""></td>
								<%} %>
							<%} %>
							</tr><tr class="curstat "><td colspan="3">最大遗漏值</td><td class="tdbdr"></td><td class="">--</td><td class=""></td><td class="">--</td><td class=""></td>
							<%for(int i =0;i<maxForgot.length;i++){ %>
							<td class=""><%=maxForgot[i] %></td>
								<%if(i == 4 || i ==9 || i == 11 || i == 13 || i == 15 || i==18 || i ==21){%>
									<td class=""></td>
								<%} %>
							<%} %>
							</tr></tfoot>
						</table>

						<td rowspan='2' class='tdbdr'></td><div class='chart-svg' id='chart'></div> <div id='paint'> <div id='svg'></div> <canvas width='800' height='600' id='showCanvas'></canvas> </div></div> <div class='exp'>
								<strong>参数说明</strong> &lt;功能类&gt;<br> 遗漏数据：自上期开出到本期间隔的期数。<br>
								遗漏分层：将当前遗漏用浅蓝色柱状阴影标注。<br> &lt;指标类&gt;<br>
								大小号：5～9属大号，0～4属小号。<br> 奇偶号：1、3 、5、7、9属奇数，0、2、4、6、8属偶数。<br>
								质合号：1、2、3、5、7属质数，0、4、6、8、9属合数。<br>
								012路：奖号除3得到的余数分布。1、4、7属1路，2、5、8属2路，0、3、6、9属0路。<br>
								升平降：相同统计指标中，本期值大于上期值叫升，本期值等于上期值叫平，本期值小于上期值叫降。<br>
								&lt;图表参数&gt;<br> 出现总次数：统计期数内实际出现的次数。<br>
								平均遗漏值：统计期数内遗漏的平均值。计算公式：平均遗漏=每次遗漏期数之和/出现次数。<br>
								最大遗漏值：统计期数内遗漏的最大值。<br> <br>
								注：本站高频彩种最多支持查看<cite class="red">500</cite>期数据。<br> <a
									target="_blank" href="#"
									class="btn-msg">意见反馈</a>
							</div>
							<div class="chart-tab"></div>
							<!--end chart-tab-->
							</div>
							<!--end wrap-->
							<!--end quick-->
							<div class="footer">
								<span class="other"> <a class="o1"
									href="#" target="_blank"></a>
									<a class="o3" href="#"
									target="_blank"></a> <a class="o4"
									href="#" target="_blank"></a> <a
									class="o5" href="#"
									target="_blank"></a>
								</span>
								<p>
									<em>Copyright&#169;2005-2016 河南时时彩.cn版权所有</em> <a
										href="http://www.miibeian.gov.cn/state/outPortal/loginPortal.action"
										target="_blank">豫ICP证022031号[原豫ICP备06030452号]</a> <em>豫公网安备110000040031号</em>
									<a href="#"
										target="_blank">工商营业执照</a>
								</p>
								<p>
								</p>
								<p class="red">郑重提示：彩票有风险，投注需谨慎！禁止向未满18周岁的青少年出售彩票！</p>
							</div>
</body>
<script src="js/jquery-1.8.3.min.js"></script>
<script src="js/libs.js?v1.0.17.js"></script>
<script src="js/ssc.js?v1.0.17.js"></script>
    <script src="js/full.js"></script>
</html>