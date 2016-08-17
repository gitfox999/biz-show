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
<script async=""
	src="./重庆时时彩走势图_老时时彩基本走势图_老时时彩走势图_彩票走势图_老时时彩开奖结果_360彩票_安全购彩_files/beacon.js"></script>
<script type="text/javascript" async=""
	src="./重庆时时彩走势图_老时时彩基本走势图_老时时彩走势图_彩票走势图_老时时彩开奖结果_360彩票_安全购彩_files/ga.js"></script>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="renderer" content="webkit">
<meta name="author" content="360彩票(cp.360.cn)">
<meta name="copyright" content="Copyright @cp.360.cn 版权所有">
<meta name="Keywords"
	content="360彩票,彩票360,11选5走势图,双色球走势图,大乐透走势图,广东11选5走势图,快3走势图,快乐扑克走势图,黑龙江11选5走势图,15选5走势图,福彩3d走势图,3d走势图,新时时彩走势图,时时彩走势图,老时时彩走势图,七乐彩走势图,七星彩走势图,排列三走势图,排列五走势图">
<meta name="Description"
	content="【360彩票】为您提供近2000期重庆时时彩基本走势图、K线走势图、直方图、遗漏统计、开奖数据、高级走势，主要包括开奖结果走势、号码遗漏、和值走势、位置出号走势图等相关走势，让您最全面了解老时时彩走势图数据。">
<title>重庆时时彩走势图_老时时彩基本走势图_老时时彩走势图_彩票走势图_老时时彩开奖结果_360彩票_安全购彩</title>
<link rel="icon" type="image/vnd.microsoft.icon"
	href="http://chart.cp.360.cn/favicon.ico">
<link rel="stylesheet"
	href="css/all.css?v1.0.10.css">
<link rel="stylesheet"
	href="css/ssc.css?v1.0.10.css">
<script type="text/javascript">
           // document.domain = "360.cn";
            window.systemTime = '1470580472';
                    </script>
<!--[if IE 6]>
        <script>document.execCommand('BackgroundImageCache', false, true); </script>
        <![endif]-->
</head>

<body class="tdww3">
	<!--幸运购对联start[[-->
	<!-- 一元幸运购对联 begin -->
	<div class="panle-aside-showbar">
		<!--<i class="icon-show-left"></i>-->
	</div>
	<!--幸运购对联end]]-->
	<div class="wrap">
		<div class="chart-hd">
			<div class="logo">
				<img
					src="./重庆时时彩走势图_老时时彩基本走势图_老时时彩走势图_彩票走势图_老时时彩开奖结果_360彩票_安全购彩_files/t019c4ceafc2eb50fa2.png">
				老时时彩
			</div>
			<ul class="chart-tag">
				<li class="cur"><span><a
						href="http://chart.cp.360.cn/zst/getchartdata?sb_spm=631c09588bc8508520dda9394cc97715&lotId=255401&chartType=dww3#">基本走势</a></span></li>
				<li><span><a href="http://chart.cp.360.cn/kxt/ssccq">K线图</a></span></li>
				<li><span><a href="http://chart.cp.360.cn/zft/ssccq">直方图</a></span></li>
				<li><span><a href="http://chart.cp.360.cn/yltj/ssccq">遗漏统计</a></span></li>
				<li><span><a
						href="http://chart.cp.360.cn/kaijiang/ssccq">历史开奖数据</a></span></li>
			</ul>

		</div>
		<div class="chart-nav2" lot="255401" ct="dww3">
			<ul>
				<li><span>二星:</span><a
					href="http://chart.cp.360.cn/zst/getchartdata?lotId=255401&chartType=x2fb"
					class="">号码分布<em></em></a>|<a
					href="http://chart.cp.360.cn/zst/getchartdata?lotId=255401&chartType=x2zhx"
					class="">直选<em></em></a>|<a
					href="http://chart.cp.360.cn/zst/getchartdata?lotId=255401&chartType=x2zx"
					class="">组选<em></em></a>|<a
					href="http://chart.cp.360.cn/zst/getchartdata?lotId=255401&chartType=x2dx"
					class="">大小<em></em></a>|<a
					href="http://chart.cp.360.cn/zst/getchartdata?lotId=255401&chartType=x2jo"
					class="">奇偶<em></em></a>|<a
					href="http://chart.cp.360.cn/zst/getchartdata?lotId=255401&chartType=x2zh"
					class="">质合<em></em></a>|<a
					href="http://chart.cp.360.cn/zst/getchartdata?lotId=255401&chartType=x2kd"
					class="">跨度<em></em></a>|<a
					href="http://chart.cp.360.cn/zst/getchartdata?lotId=255401&chartType=x2hz"
					class="">和值<em></em></a>|<a
					href="http://chart.cp.360.cn/zst/getchartdata?lotId=255401&chartType=x2012"
					class="">012路<em></em></a>|<a
					href="http://chart.cp.360.cn/zst/getchartdata?lotId=255401&chartType=x2pj"
					class="">平均值<em></em></a>|<a
					href="http://chart.cp.360.cn/zst/getchartdata?lotId=255401&chartType=x2spj"
					class="">升平降<em></em></a></li>
				<li><span>定位:</span><a
					href="http://chart.cp.360.cn/zst/getchartdata?lotId=255401&chartType=dww1"
					class="">万位<em></em></a>|<a
					href="http://chart.cp.360.cn/zst/getchartdata?lotId=255401&chartType=dww2"
					class="">千位<em></em></a>|<a
					href="http://chart.cp.360.cn/zst/getchartdata?lotId=255401&chartType=dww3"
					class="cur">百位<em></em></a>|<a
					href="http://chart.cp.360.cn/zst/getchartdata?lotId=255401&chartType=dww4"
					class="">十位<em></em></a>|<a
					href="http://chart.cp.360.cn/zst/getchartdata?lotId=255401&chartType=dww5"
					class="">个位(一星)<em></em></a></li>
				<li><span>三星:</span><a
					href="http://chart.cp.360.cn/zst/getchartdata?lotId=255401&chartType=x3fb"
					class="">号码分布<em></em></a>|<a
					href="http://chart.cp.360.cn/zst/getchartdata?lotId=255401&chartType=x3zhx"
					class="">直选<em></em></a>|<a
					href="http://chart.cp.360.cn/zst/getchartdata?lotId=255401&chartType=x3zx"
					class="">组选<em></em></a>|<a
					href="http://chart.cp.360.cn/zst/getchartdata?lotId=255401&chartType=x3dx"
					class="">大小<em></em></a>|<a
					href="http://chart.cp.360.cn/zst/getchartdata?lotId=255401&chartType=x3jo"
					class="">奇偶<em></em></a>|<a
					href="http://chart.cp.360.cn/zst/getchartdata?lotId=255401&chartType=x3zh"
					class="">质合<em></em></a>|<a
					href="http://chart.cp.360.cn/zst/getchartdata?lotId=255401&chartType=x3kd"
					class="">跨度<em></em></a>|<a
					href="http://chart.cp.360.cn/zst/getchartdata?lotId=255401&chartType=x3hz"
					class="">和值<em></em></a>|<a
					href="http://chart.cp.360.cn/zst/getchartdata?lotId=255401&chartType=x3012"
					class="">012路<em></em></a>|<a
					href="http://chart.cp.360.cn/zst/getchartdata?lotId=255401&chartType=x3pj"
					class="">平均值<em></em></a>|<a
					href="http://chart.cp.360.cn/zst/getchartdata?lotId=255401&chartType=x3spj"
					class="">升平降<em></em></a></li>
				<li><span>其它:</span><a
					href="http://chart.cp.360.cn/zst/getchartdata?lotId=255401&chartType=x5"
					class="">五星走势<em></em></a>|<a
					href="http://chart.cp.360.cn/zst/getchartdata?lotId=255401&chartType=x5zh"
					class="">五星综合<em></em></a>|<a
					href="http://chart.cp.360.cn/zst/getchartdata?lotId=255401&chartType=dxds"
					class="">大小单双<em></em></a></li>
			</ul>
		</div>
		<div class="chart-sc">
			<ul>
				<li><strong>查询：</strong></li>
				<li><a
					href="http://chart.cp.360.cn/zst/getchartdata?sb_spm=631c09588bc8508520dda9394cc97715&lotId=255401&chartType=dww3#"
					class="btn-sc btn-sc-cur">近30期</a></li>
				<li><a
					href="http://chart.cp.360.cn/zst/getchartdata?sb_spm=631c09588bc8508520dda9394cc97715&lotId=255401&chartType=dww3#"
					class="btn-sc">近50期</a></li>
				<li><a
					href="http://chart.cp.360.cn/zst/getchartdata?sb_spm=631c09588bc8508520dda9394cc97715&lotId=255401&chartType=dww3#"
					class="btn-sc">近100期</a></li>
				<li><a
					href="http://chart.cp.360.cn/zst/getchartdata?sb_spm=631c09588bc8508520dda9394cc97715&lotId=255401&chartType=dww3#"
					class="btn-sc">今天</a></li>
				<li><a
					href="http://chart.cp.360.cn/zst/getchartdata?sb_spm=631c09588bc8508520dda9394cc97715&lotId=255401&chartType=dww3#"
					class="btn-sc">近3天</a></li>
				<li><div class="zdy">
						<a
							href="http://chart.cp.360.cn/zst/getchartdata?sb_spm=631c09588bc8508520dda9394cc97715&lotId=255401&chartType=dww3#"
							class="zdy-btn zdy-btn-cur">自定义查询<em></em></a>
						<div class="zdy-pop" style="display: none;">
							<div class="zdy-tag">
								<a
									href="http://chart.cp.360.cn/zst/getchartdata?sb_spm=631c09588bc8508520dda9394cc97715&lotId=255401&chartType=dww3#"
									class="cur">按期数</a><a
									href="http://chart.cp.360.cn/zst/getchartdata?sb_spm=631c09588bc8508520dda9394cc97715&lotId=255401&chartType=dww3#">按天数</a>
								<a class="close">关闭</a>
							</div>
							<div class="zdy-cnt">
								<div class="byIssueNum">
									<p>
										我要查询最近&nbsp;<input type="text" class="ipt-sc issueNum">&nbsp;期
									</p>
									<span class="sTip">注：最多仅限查询1500期数据。</span>
								</div>
								<div class="byDay" style="display: none;">
									<p>
										从<span class="byDate"><input type="text"
											class="ipt-sc hasDatepicker" id="dateFrom" readonly=""><img
											class="ui-datepicker-trigger"
											src="./重庆时时彩走势图_老时时彩基本走势图_老时时彩走势图_彩票走势图_老时时彩开奖结果_360彩票_安全购彩_files/date.png"
											alt="" title=""></span>&nbsp;至&nbsp;<span class="byDate"><input
											type="text" class="ipt-sc hasDatepicker" id="dateTo"
											readonly=""><img class="ui-datepicker-trigger"
											src="./重庆时时彩走势图_老时时彩基本走势图_老时时彩走势图_彩票走势图_老时时彩开奖结果_360彩票_安全购彩_files/date.png"
											alt="" title=""></span>
									</p>
								</div>
								<p>
									<button class="btn-star">开始查询</button>
									<button class="btn-rst">重 置</button>
								</p>
							</div>
						</div>
					</div></li>
				<li><div class="draw">
						<a
							href="http://chart.cp.360.cn/zst/getchartdata?sb_spm=631c09588bc8508520dda9394cc97715&lotId=255401&chartType=dww3#"
							class="draw-btn">绘图工具</a>
						<div class="draw-pop" style="display: none;" shape="0">
							<a
								href="http://chart.cp.360.cn/zst/getchartdata?sb_spm=631c09588bc8508520dda9394cc97715&lotId=255401&chartType=dww3#nogo"
								class="tool-square on" title="方框" val="0"></a><a
								href="http://chart.cp.360.cn/zst/getchartdata?sb_spm=631c09588bc8508520dda9394cc97715&lotId=255401&chartType=dww3#nogo"
								class="tool-circle" title="圆" val="4"></a><a
								href="http://chart.cp.360.cn/zst/getchartdata?sb_spm=631c09588bc8508520dda9394cc97715&lotId=255401&chartType=dww3#nogo"
								class="tool-line" title="直线" val="1"></a><a
								href="http://chart.cp.360.cn/zst/getchartdata?sb_spm=631c09588bc8508520dda9394cc97715&lotId=255401&chartType=dww3#nogo"
								class="tool-curve" title="曲线" val="3"></a><a
								href="http://chart.cp.360.cn/zst/getchartdata?sb_spm=631c09588bc8508520dda9394cc97715&lotId=255401&chartType=dww3#"
								class="tool-clear" title="清除"></a><a
								href="http://chart.cp.360.cn/zst/getchartdata?sb_spm=631c09588bc8508520dda9394cc97715&lotId=255401&chartType=dww3#nogo"
								class="tool-back" title="橡皮檫" val="2"></a><a
								href="http://chart.cp.360.cn/zst/getchartdata?sb_spm=631c09588bc8508520dda9394cc97715&lotId=255401&chartType=dww3#nogo"
								class="tool-cls" title="关闭"></a>
						</div>
					</div></li>
			</ul>
			<strong>标注：</strong><label><input type="checkbox"
				name="options" val="sj">&nbsp;遗漏数据&nbsp;</label><label><input
				type="checkbox" name="options" val="fc" checked="checked">&nbsp;遗漏分层&nbsp;</label><label><input
				type="checkbox" name="options" val="zx" checked="checked">&nbsp;折线&nbsp;</label>
		</div>
		<div class="chart-tab nonum" id="chart-tab">
			<table width="100%" class="chart-table">
				<thead class="dww3">
					<tr>
						<th rowspan="2" class="w80" width="">期号&nbsp; <a
							href="http://chart.cp.360.cn/zst/getchartdata?sb_spm=631c09588bc8508520dda9394cc97715&lotId=255401&chartType=dww3#"
							class="tharr tharr-up"></a></th>
						<td rowspan="2" class="tdbdr "></td>
						<th rowspan="2" class="w57" width="">奖号</th>
						<td rowspan="2" class="tdbdr "></td>
						<th rowspan="2" class="w31" width="">和值</th>
						<td rowspan="2" class="tdbdr "></td>
						<th rowspan="2" class="w31" width="">跨度</th>
						<td rowspan="2" class=1"tdbdr "></td>
						<th colspan="11" class="noth ">百位</th>
						<td class="tdbdr "></td>
						<th colspan="8" class="noth ">百位形态分布</th>
						<td class="tdbdr "></td>
						<th colspan="3" class="noth ">百位012路</th>
						<td class="tdbdr "></td>
						<th colspan="3" class="noth ">百位</th>
						<td class="tdbdr "></td>
						<th colspan="10" class="noth ">百位振幅</th>
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
						int left = 204,left2 = left+24*10+3,left3 = left2+24*12+5;
						double height = 21;
						double width = 24;
						int rows = -1; 
						double banjing = 9;
						StringBuffer sb = new StringBuffer();
						StringBuffer sb_daxiao = new StringBuffer();
						StringBuffer sb_jiou = new StringBuffer();
						StringBuffer sb_zhihe = new StringBuffer();
						StringBuffer sb_123 = new StringBuffer();
						StringBuffer sb_shengpingjiang = new StringBuffer();
						StringBuffer sb_z = new StringBuffer();
						double preI = 0;
						double preI_z = 0;
						DbHelper dbHelper = new DbHelper();
						Connection connection = dbHelper.getConnection();
						String tableName = "ssc_"+"a";
						PreparedStatement preparedStatement = connection.prepareStatement("select a.*,b.no,b.sum,b.cross,b.time,b.times from "+tableName+" a,ssc b where a.sscid=b.id order by id asc");
						ResultSet resultSet = preparedStatement.executeQuery();
						SimpleDateFormat dateFormat = new SimpleDateFormat("yyMMdd");
						
						String[] otherStrArray = {"大","小","奇","偶","质","合","0","1","2","升","平","降"};
						String[] otherFieldArray = {"da","xiao","ji","ou","zhi","he","lu0","lu1","lu2","sheng","ping","jiang"};
						StringBuffer[] sbs  = {sb_daxiao,sb_daxiao,sb_jiou,sb_jiou,sb_zhihe,sb_zhihe,sb_123,sb_123,sb_123,sb_shengpingjiang,sb_shengpingjiang,sb_shengpingjiang};
						double[] prei_daxiao = {0};
						double[] prei_jiou = {0};
						double[] prei_zhihe = {0};
						double[] prei_012 = {0};
						double[] prei_shengpingjiang = {0};
						double[][] preIs = {prei_daxiao,prei_daxiao,prei_jiou,prei_jiou,prei_zhihe,prei_zhihe,prei_012,prei_012,prei_012,prei_shengpingjiang,prei_shengpingjiang,prei_shengpingjiang};
						double[] ixsVal = {0,1,0,1,0,1,0,1,2,0,1,2};
						double[] preIXs = {0,0,2,2,4,4,6,6,6,9,9,9};
						double[] ixAdd = {0,0,1,1,2,2,3,3,3,4,4,4};
						String[] zu_daxiao = {"da","xiao"};
						String[] zu_jiou = {"ji","ou"};
						String[] zu_zhihe = {"zhi","he"};
						String[] zu_012 = {"lu0","lu1","lu2"};
						String[] zu_shengpingjiang = {"sheng","ping","jiang"};
						String[][] fieldszu = {zu_daxiao,zu_daxiao,zu_jiou,zu_jiou,zu_zhihe,zu_zhihe,zu_012,zu_012,zu_012,zu_shengpingjiang,zu_shengpingjiang,zu_shengpingjiang};
						String[] otherBallArray = {"17","17","19","19","8","8","2","2","2","17","17","17"};
						while(resultSet.next()){
							rows++;
							double mx=0,my=0,x2=0,lx=0,ly=0;
					%>
					<tr>
						<td class="tdbg_1"><%=dateFormat.format(resultSet.getDate("time")) %>-<%=String.format("%03d", resultSet.getInt("times"))  %></td>
						<td class="tdbdr"></td>
						<td class="tdbg_1"><span class="sum"><!-- 22<strong
								class="num">7</strong>80 --><%=resultSet.getString("no") %>
						</span></td>
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
								if(value == -1){
									hit = " hit=\"\"";
									valueStr = "<span class=\"ball_5\">"+i+"</span>";
									
									mx = left + i*width + width/2;
									lx = left + i*width + width/2;
									my = height*rows+height/2;
									ly = height*rows+height/2;
									lx = lx + ((preI-i)*width)/Math.sqrt(Math.pow(((preI-i)*width),2)+Math.pow(height,2))*banjing;
									ly = ly - height/Math.sqrt(Math.pow(((preI-i)*width),2)+Math.pow(height,2))*banjing;
									if(resultSet.next()){
										for(int j =0;j<10;j++){
											int valueTmp = resultSet.getInt("n"+j);
											if(valueTmp == -1){
												mx = mx + ((j-i)*width)/Math.sqrt(Math.pow(((j-i)*width),2)+Math.pow(height,2))*banjing;
												my = my + height/Math.sqrt(Math.pow(((j-i)*width),2)+Math.pow(height,2))*banjing;
											}
										}
									}
									resultSet.previous();
									if(resultSet.isFirst()){
										sb.append("M"+mx+","+my);
									}else if(resultSet.isLast()){
										sb.append("L"+lx+","+ly);
									}else{
										sb.append("L"+lx+","+ly);
										sb.append("M"+mx+","+my);
									}
									preI = i;
								}
						%>
							<td class="tdbg_8"<%=hit %>><%=valueStr %></td>
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
								if(value == -1){
									hit = " hit=\"\"";
									valueStr = "<span class=\"ball_"+otherBallArray[i]+"\">"+otherStrArray[i]+"</span>";
									
									
									mx = left2 + i*width + width/2+ixAdd[i];
									lx = left2 + i*width + width/2+ixAdd[i];
									my = height*rows+height/2;
									ly = height*rows+height/2;
									lx = lx + ((preIs[i][0]-ixsVal[i])*width)/Math.sqrt(Math.pow(((preIs[i][0]-ixsVal[i])*width),2)+Math.pow(height,2))*banjing;
									System.out.println((preIs[i][0]-ixsVal[i])+"***"+lx+"**"+otherStrArray[i]);
									int diffGo=0;
									if(i >2){
										diffGo=-2;
									}
									if(i >5){
										diffGo=-3;
									}
									if(i >8){
										diffGo=-4;
									}
									ly = ly - height/Math.sqrt(Math.pow(((preIs[i][0]-i)*width),2)+Math.pow(height,2))*banjing +diffGo;
									if(resultSet.next()){
										for(int j =0;j<fieldszu[i].length;j++){
											int valueTmp = resultSet.getInt(fieldszu[i][j]);
											if(valueTmp == -1){
												mx = mx + (((j+preIXs[i])-i)*width)/Math.sqrt(Math.pow((((j+preIXs[i])-i)*width),2)+Math.pow(height,2))*banjing;
												my = my + height/Math.sqrt(Math.pow((((j+preIXs[i])-i)*width),2)+Math.pow(height,2))*banjing;
											}
										}
									}
									resultSet.previous();
									if(resultSet.isFirst()){
										sbs[i].append("M"+mx+","+my);
									}else if(resultSet.isLast()){
										sbs[i].append("L"+lx+","+ly);
									}else{
										sbs[i].append("L"+lx+","+ly);
										sbs[i].append("M"+mx+","+my);
									}
									preIs[i][0] = ixsVal[i];
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
								if(value == -1){
									hit = " hit=\"\"";
									valueStr = "<span class=\"ball_14\">"+i+"</span>";
									
									mx = left3 + i*width + width/2;
									lx = left3 + i*width + width/2;
									my = height*rows+height/2;
									ly = height*rows+height/2;
									lx = lx + ((preI_z-i)*width)/Math.sqrt(Math.pow(((preI_z-i)*width),2)+Math.pow(height,2))*banjing;
									ly = ly - height/Math.sqrt(Math.pow(((preI_z-i)*width),2)+Math.pow(height,2))*banjing;
									if(resultSet.next()){
										for(int j =0;j<10;j++){
											int valueTmp = resultSet.getInt("z"+j);
											if(valueTmp == -1){
												mx = mx + ((j-i)*width)/Math.sqrt(Math.pow(((j-i)*width),2)+Math.pow(height,2))*banjing;
												my = my + height/Math.sqrt(Math.pow(((j-i)*width),2)+Math.pow(height,2))*banjing;
											}
										}
									}
									resultSet.previous();
									if(resultSet.isFirst()){
										sb_z.append("M"+mx+","+my);
									}else if(resultSet.isLast()){
										sb_z.append("L"+lx+","+ly);
									}else{
										sb_z.append("L"+lx+","+ly);
										sb_z.append("M"+mx+","+my);
									}
									preI_z = i;

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
					<tr>
						<td class="tdbg_1 lastIssue">160807-103</td>
						<td class="tdbdr"></td>
						<td class="tdbg_1 lastTxt" colspan="5">暂停销售</td>
						<td class="tdbdr"></td>
						<td class="tdbg_1" colspan="60">
							<div class="remind">
								<span class="td-time" endtime="-68" now="1470580293"
									gfendtime="" issale="0" pttime="68"><span
									class="saleTxt"></span><span class="tipTxt">10秒</span><em
									class="auto-edit"></em></span>
							</div>
						</td>
					</tr>
					<tr>
						<td colspan="99">
							<div="" class="statis"> <h2>图表指标统计</h2><span> <label><input type="radio" name="statistic"> 历史统计<cite class="gray">（近2000期）</cite></label><label><input type="radio" name="statistic" checked="checked"> 当前页统计 </label></span></td></tr><tr><th rowspan="2" class="w80" width="">期号&nbsp; <a href="http://chart.cp.360.cn/zst/getchartdata?sb_spm=631c09588bc8508520dda9394cc97715&lotId=255401&chartType=dww3#" class=" -up"></a></th><td rowspan="2" class="tdbdr "></td><th rowspan="2" class="w57" width="">奖号</th><td rowspan="2" class="tdbdr "></td><th rowspan="2" class="w31" width="">和值</th><td rowspan="2" class="tdbdr "></td><th rowspan="2" class="w31" width="">跨度</th><td rowspan="2" class="tdbdr "></td><th colspan="11" class="noth ">百位</th><td class="tdbdr "></td><th colspan="8" class="noth ">百位形态分布</th><td class="tdbdr "></td><th colspan="3" class="noth ">百位012路</th><td class="tdbdr "></td><th colspan="3" class="noth ">百位</th><td class="tdbdr "></td><th colspan="10" class="noth ">百位振幅</th></tr><tr><td class=" w2_5" width="">0</td><td class=" w2_5" width="">1</td><td class=" w2_5" width="">2</td><td class=" w2_5" width="">3</td><td class=" w2_5" width="">4</td><td class="tdbdr "></td><td class=" w2_5" width="">5</td><td class=" w2_5" width="">6</td><td class=" w2_5" width="">7</td><td class=" w2_5" width="">8</td><td class=" w2_5" width="">9</td><td class="tdbdr "></td><td class=" w2_5" width="">大</td><td class=" w2_5" width="">小</td><td class="tdbdr "></td><td class=" w2_5" width="">奇</td><td class=" w2_5" width="">偶</td><td class="tdbdr "></td><td class=" w2_5" width="">质</td><td class=" w2_5" width="">合</td><td class="tdbdr "></td><td class=" w2_5" width="">0</td><td class=" w2_5" width="">1</td><td class=" w2_5" width="">2</td><td class="tdbdr "></td><td class=" w2_5" width="">升</td><td class=" w2_5" width="">平</td><td class=" w2_5" width="">降</td><td class="tdbdr "></td><td class=" w2_5" width="">0</td><td class=" w2_5" width="">1</td><td class=" w2_5" width="">2</td><td class=" w2_5" width="">3</td><td class=" w2_5" width="">4</td><td class=" w2_5" width="">5</td><td class=" w2_5" width="">6</td><td class=" w2_5" width="">7</td><td class=" w2_5" width="">8</td><td class=" w2_5" width="">9</td></tr><tr class="curstat "><td colspan="3">出现总次数</td><td class="tdbdr"></td><td class="">--</td><td class=""></td><td class="">--</td><td class=""></td><td class="">2</td><td class="">3</td><td class="">3</td><td class="">5</td><td class="">2</td><td class=""></td><td class="">3</td><td class="">6</td><td class="">2</td><td class="">2</td><td class="">2</td><td class=""></td><td class="">15</td><td class="">15</td><td class=""></td><td class="">15</td><td class="">15</td><td class=""></td><td class="">16</td><td class="">14</td><td class=""></td><td class="">15</td><td class="">7</td><td class="">8</td><td class=""></td><td class="">13</td><td class="">4</td><td class="">13</td><td class=""></td><td class="">4</td><td class="">4</td><td class="">4</td><td class="">4</td><td class="">2</td><td class="">2</td><td class="">6</td><td class="">2</td><td class="">2</td><td class="">0</td></tr><tr class="curstat trbg "><td colspan="3">平均遗漏值</td><td class="tdbdr"></td><td class="">--</td><td class=""></td><td class="">--</td><td class=""></td><td class="">16</td><td class="">6</td><td class="">12</td><td class="">6</td><td class="">4</td><td class=""></td><td class="">25</td><td class="">4</td><td class="">8</td><td class="">21</td><td class="">16</td><td class=""></td><td class="">1</td><td class="">1</td><td class=""></td><td class="">1</td><td class="">1</td><td class=""></td><td class="">1</td><td class="">1</td><td class=""></td><td class="">1</td><td class="">2</td><td class="">4</td><td class=""></td><td class="">1</td><td class="">13</td><td class="">1</td><td class=""></td><td class="">13</td><td class="">7</td><td class="">7</td><td class="">6</td><td class="">13</td><td class="">11</td><td class="">6</td><td class="">27</td><td class="">14</td><td class="">0</td></tr><tr class="curstat "><td colspan="3">最大遗漏值</td><td class="tdbdr"></td><td class="">--</td><td class=""></td><td class="">--</td><td class=""></td><td class="">25</td><td class="">16</td><td class="">20</td><td class="">14</td><td class="">20</td><td class=""></td><td class="">54</td><td class="">7</td><td class="">15</td><td class="">23</td><td class="">19</td><td class=""></td><td class="">3</td><td class="">3</td><td class=""></td><td class="">4</td><td class="">6</td><td class=""></td><td class="">4</td><td class="">3</td><td class=""></td><td class="">5</td><td class="">9</td><td class="">13</td><td class=""></td><td class="">3</td><td class="">42</td><td class="">4</td><td class=""></td><td class="">42</td><td class="">13</td><td class="">16</td><td class="">14</td><td class="">15</td><td class="">11</td><td class="">17</td><td class="">42</td><td class="">19</td><td class="">54</td></tr><tr class="curstat trbg "><td colspan="3">最大连出值</td><td class="tdbdr"></td><td class="">--</td><td class=""></td><td class="">--</td><td class=""></td><td class="">1</td><td class="">2</td><td class="">1</td><td class="">3</td><td class="">1</td><td class=""></td><td class="">1</td><td class="">2</td><td class="">1</td><td class="">1</td><td class="">1</td><td class=""></td><td class="">3</td><td class="">3</td><td class=""></td><td class="">6</td><td class="">4</td><td class=""></td><td class="">3</td><td class="">4</td><td class=""></td><td class="">5</td><td class="">2</td><td class="">2</td><td class=""></td><td class="">2</td><td class="">2</td><td class="">2</td><td class=""></td><td class="">2</td><td class="">2</td><td class="">2</td><td class="">2</td><td class="">1</td><td class="">1</td><td class="">1</td><td class="">1</td><td class="">1</td><td class="">0</td></tr><tr class="allstat none"><td colspan="3">出现总次数</td><td class="tdbdr"></td><td class="">--</td><td class=""></td><td class="">--</td><td class=""></td><td class=" ft8" title="182"><em>182</em></td><td class=" ft8" title="191"><em>191</em></td><td class=" ft8" title="204"><em>204</em></td><td class=" ft8" title="216"><em>216</em></td><td class=" ft8" title="187"><em>187</em></td><td class=""></td><td class=" ft8" title="185"><em>185</em></td><td class=" ft8" title="230"><em>230</em></td><td class=" ft8" title="200"><em>200</em></td><td class=" ft8" title="203"><em>203</em></td><td class=" ft8" title="202"><em>202</em></td><td class=""></td><td class=" ft8" title="1020"><em>1020</em></td><td class=" ft8" title="980"><em>980</em></td><td class=""></td><td class=" ft8" title="994"><em>994</em></td><td class=" ft8" title="1006"><em>1006</em></td><td class=""></td><td class=" ft8" title="996"><em>996</em></td><td class=" ft8" title="1004"><em>1004</em></td><td class=""></td><td class=" ft8" title="830"><em>830</em></td><td class=" ft8" title="578"><em>578</em></td><td class=" ft8" title="592"><em>592</em></td><td class=""></td><td class=" ft8" title="881"><em>881</em></td><td class=" ft8" title="199"><em>199</em></td><td class=" ft8" title="920"><em>920</em></td><td class=""></td><td class=" ft8" title="199"><em>199</em></td><td class=" ft8" title="366"><em>366</em></td><td class=" ft8" title="299"><em>299</em></td><td class=" ft8" title="262"><em>262</em></td><td class=" ft8" title="246"><em>246</em></td><td class=" ft8" title="213"><em>213</em></td><td class=" ft8" title="177"><em>177</em></td><td class=" ft8" title="116"><em>116</em></td><td class="">89</td><td class="">33</td></tr><tr class="allstat trbg none"><td colspan="3">平均遗漏值</td><td class="tdbdr"></td><td class="">--</td><td class=""></td><td class="">--</td><td class=""></td><td class="">10</td><td class="">9</td><td class="">9</td><td class="">8</td><td class="">10</td><td class=""></td><td class="">10</td><td class="">8</td><td class="">9</td><td class="">9</td><td class="">9</td><td class=""></td><td class="">1</td><td class="">1</td><td class=""></td><td class="">1</td><td class="">1</td><td class=""></td><td class="">1</td><td class="">1</td><td class=""></td><td class="">1</td><td class="">2</td><td class="">2</td><td class=""></td><td class="">1</td><td class="">9</td><td class="">1</td><td class=""></td><td class="">9</td><td class="">4</td><td class="">6</td><td class="">7</td><td class="">7</td><td class="">8</td><td class="">10</td><td class="">16</td><td class="">21</td><td class="">58</td></tr><tr class="allstat none"><td colspan="3">最大遗漏值</td><td class="tdbdr"></td><td class="">--</td><td class=""></td><td class="">--</td><td class=""></td><td class="">68</td><td class="">58</td><td class="">48</td><td class="">53</td><td class="">67</td><td class=""></td><td class="">76</td><td class="">51</td><td class="">62</td><td class="">63</td><td class="">51</td><td class=""></td><td class="">12</td><td class="">9</td><td class=""></td><td class="">8</td><td class="">8</td><td class=""></td><td class="">9</td><td class="">8</td><td class=""></td><td class="">12</td><td class="">16</td><td class="">18</td><td class=""></td><td class="">7</td><td class="">50</td><td class="">6</td><td class=""></td><td class="">50</td><td class="">44</td><td class="">40</td><td class="">39</td><td class="">37</td><td class="">50</td><td class="">65</td><td class="">90</td><td class="">87</td><td class=" ft8" title="222"><em>222</em></td></tr><tr class="allstat trbg none"><td colspan="3">最大连出值</td><td class="tdbdr"></td><td class="">--</td><td class=""></td><td class="">--</td><td class=""></td><td class="">3</td><td class="">2</td><td class="">3</td><td class="">3</td><td class="">3</td><td class=""></td><td class="">3</td><td class="">2</td><td class="">4</td><td class="">3</td><td class="">3</td><td class=""></td><td class="">9</td><td class="">12</td><td class=""></td><td class="">8</td><td class="">8</td><td class=""></td><td class="">8</td><td class="">9</td><td class=""></td><td class="">7</td><td class="">8</td><td class="">5</td><td class=""></td><td class="">4</td><td class="">3</td><td class="">5</td><td class=""></td><td class="">3</td><td class="">5</td><td class="">3</td><td class="">4</td><td class="">3</td><td class="">4</td><td class="">2</td><td class="">3</td><td class="">3</td><td class="">2</td></tr></tfoot>
						</table>

						<div class="chart-svg" id="chart" style="left: 0px; top: 55px;"><svg height="2000" version="1.1" width="979" xmlns="http://www.w3.org/2000/svg" style="overflow: hidden; position: relative; left: 0px; top: 0px;"><desc style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Created with Rapha&#235;l 2.1.0</desc><defs style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></defs>
						
						<path fill="none" stroke="#cc0000" d="<%=sb.toString() %>" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); stroke-linecap: round; stroke-linejoin: round;"></path>
						 
						<!-- <path fill="none" stroke="#cc0000" d="M375.88974406875,13.764594172003399L322.1102559312499,29.2354058279966M321.6914503001806,35.93919298579169L352.3085496998194,49.06080701420831M353.9742330529312,59.585046078685195L345.0257669470688,67.4149539213148M345.0257669470688,80.5850460786852L353.9742330529312,88.4149539213148M351.74768479410847,97.21186530442901L274.25231520589153,114.78813469557099M274.3967463528328,118.4333218855827L399.6032536471672,136.5666781144173M399.64728541885916,139.70997525788397L298.3527145811408,157.29002474211603M280.9742330529312,165.5850460786852L272.0257669470688,173.4149539213148M273.66157334902186,184.00818834019708L303.33842665097814,196.99181165980292M321.62269533584464,205.0959040283384L352.37730466415536,218.9040959716616M351.8897440687501,225.7645941720034L298.1102559312499,241.2354058279966M288.5,254L288.5,255M288.5,275L288.5,276M298.3967463528328,287.4333218855827L423.6032536471672,305.5666781144173M423.5643418357721,308.1325620705337L250.4356581642279,327.8674379294663M250.3967463528328,330.4333218855827L375.6032536471672,348.5666781144173M375.5763204801473,351.2331199403367L226.42367951985273,369.7668800596633M226.3967463528328,372.4333218855827L351.6032536471672,390.5666781144173M351.6472854188592,393.7099752578839L250.3527145811408,411.2900247421161M240.5,423L240.5,425M250.27357880408164,437.11592943181154L327.72642119591836,453.88407056818846M345.0257669470688,462.5850460786852L353.9742330529312,470.4149539213148M361.5,487L361.5,488M351.6032536471672,499.4333218855827L226.3967463528328,517.5666781144173M226.4356581642279,520.1325620705337L399.5643418357721,539.8674379294663M399.9,543.8L347.1,559.2M328.3085496998194,565.9391929857917L297.6914503001806,579.0608070142083M298.3967463528328,584.4333218855827L423.6032536471672,602.5666781144173M423.5763204801473,605.2331199403367L274.4236795198527,623.7668800596633"
						 stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); stroke-linecap: round; stroke-linejoin: round;"></path> -->
						 
						 <path fill="none" stroke="#f86300" d="<%=sb_daxiao.toString() %>" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); stroke-linecap: round; stroke-linejoin: round;"></path>
						 <path fill="none" stroke="#2a527f" d="<%=sb_jiou.toString() %>" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); stroke-linecap: round; stroke-linejoin: round;"></path>
						 <path fill="none" stroke="#698353" d="<%=sb_zhihe.toString() %>" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); stroke-linecap: round; stroke-linejoin: round;"></path>
						 <path fill="none" stroke="#008722" d="<%=sb_123.toString() %>" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); stroke-linecap: round; stroke-linejoin: round;"></path>
						 <path fill="none" stroke="#f86300" d="<%=sb_shengpingjiang.toString() %>" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); stroke-linecap: round; stroke-linejoin: round;"></path>
						 <path fill="none" stroke="#1e88ee" d="<%=sb_z.toString() %>" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); stroke-linecap: round; stroke-linejoin: round;"></path>
						 
						<!--  <path fill="none" stroke="#f86300" d="M466.02576694706875,17.585046078685195L474.97423305293125,25.414953921314805M474.97423305293125,38.585046078685195L466.02576694706875,46.414953921314805M458.5,63L458.5,64M458.5,84L458.5,85M465.87154140200744,101.75724628517344L475.12845859799256,110.24275371482656M474.97423305293125,123.5850460786852L466.02576694706875,131.4149539213148M466.02576694706875,144.5850460786852L474.97423305293125,152.4149539213148M482.5,169L482.5,170M482.5,190L482.5,191M475.12845859799256,207.75724628517344L465.87154140200744,216.24275371482656M466.02576694706875,229.5850460786852L474.97423305293125,237.4149539213148M482.5,254L482.5,255M482.5,275L482.5,276M474.97423305293125,292.5850460786852L466.02576694706875,300.4149539213148M465.87154140200744,313.75724628517344L475.12845859799256,322.24275371482656M474.97423305293125,335.5850460786852L466.02576694706875,343.4149539213148M466.02576694706875,356.5850460786852L474.97423305293125,364.4149539213148M474.97423305293125,377.5850460786852L466.02576694706875,385.4149539213148M466.02576694706875,398.5850460786852L474.97423305293125,406.4149539213148M482.5,423L482.5,425M474.97423305293125,441.5850460786852L466.02576694706875,449.4149539213148M458.5,466L458.5,467M458.5,487L458.5,488M466.02576694706875,504.5850460786852L474.97423305293125,512.4149539213148M475.12845859799256,525.7572462851734L465.87154140200744,534.2427537148266M458.5,551L458.5,552M466.02576694706875,568.5850460786852L474.97423305293125,576.4149539213148M474.97423305293125,589.5850460786852L466.02576694706875,597.4149539213148M466.02576694706875,610.5850460786852L474.97423305293125,618.4149539213148" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); stroke-linecap: round; stroke-linejoin: round;"></path>
						 <path fill="none" stroke="#f86300" d="M687.6615733490219,15.00818834019708L717.3384266509781,27.99181165980292M717.3384266509781,36.00818834019708L687.6615733490219,48.99181165980292M687.6615733490219,57.00818834019708L717.3384266509781,69.99181165980292M717.3384266509781,78.00818834019708L687.6615733490219,90.99181165980292M687.5906482289429,99.16654710493214L717.4093517710571,112.83345289506786M717.3384266509781,121.00818834019708L687.6615733490219,133.99181165980292M687.6615733490219,142.00818834019708L717.3384266509781,154.99181165980292M726.5,169L726.5,170M717.3384266509781,184.00818834019708L687.6615733490219,196.99181165980292M678.5,211L678.5,213M687.6615733490219,227.00818834019708L717.3384266509781,239.99181165980292M718.9742330529313,250.5850460786852L710.0257669470687,258.4149539213148M702.5,275L702.5,276M694.9742330529313,292.5850460786852L686.0257669470687,300.4149539213148M687.5906482289429,311.1665471049321L717.4093517710571,324.8334528950679M717.3384266509781,333.0081883401971L687.6615733490219,345.9918116598029M687.6615733490219,354.0081883401971L717.3384266509781,366.9918116598029M717.3384266509781,375.0081883401971L687.6615733490219,387.9918116598029M687.6615733490219,396.0081883401971L717.3384266509781,408.9918116598029M719.1284585979926,419.75724628517344L709.8715414020074,428.24275371482656M694.9742330529313,441.5850460786852L686.0257669470687,449.4149539213148M678.5,466L678.5,467M686.0257669470687,483.5850460786852L694.9742330529313,491.4149539213148M710.0257669470687,504.5850460786852L718.9742330529313,512.4149539213148M717.4093517710571,523.1665471049321L687.5906482289429,536.8334528950679M687.6615733490219,545.0081883401971L717.3384266509781,557.9918116598029M726.5,572L726.5,573M717.3384266509781,587.0081883401971L687.6615733490219,599.9918116598029M687.6615733490219,608.0081883401971L717.3384266509781,620.9918116598029" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); stroke-linecap: round; stroke-linejoin: round;"></path>
						 <path fill="none" stroke="#2a527f" d="M515.0257669470687,17.585046078685195L523.9742330529313,25.414953921314805M531.5,42L531.5,43M523.9742330529313,59.585046078685195L515.0257669470687,67.4149539213148M515.0257669470687,80.5850460786852L523.9742330529313,88.4149539213148M531.5,105L531.5,107M531.5,127L531.5,128M523.9742330529313,144.5850460786852L515.0257669470687,152.4149539213148M515.0257669470687,165.5850460786852L523.9742330529313,173.4149539213148M531.5,190L531.5,191M531.5,211L531.5,213M523.9742330529313,229.5850460786852L515.0257669470687,237.4149539213148M507.5,254L507.5,255M507.5,275L507.5,276M507.5,296L507.5,297M507.5,317L507.5,319M507.5,339L507.5,340M515.0257669470687,356.5850460786852L523.9742330529313,364.4149539213148M531.5,381L531.5,382M523.9742330529313,398.5850460786852L515.0257669470687,406.4149539213148M507.5,423L507.5,425M507.5,445L507.5,446M515.0257669470687,462.5850460786852L523.9742330529313,470.4149539213148M531.5,487L531.5,488M531.5,508L531.5,509M531.5,529L531.5,531M523.9742330529313,547.5850460786852L515.0257669470687,555.4149539213148M507.5,572L507.5,573M507.5,593L507.5,594M515.0257669470687,610.5850460786852L523.9742330529313,618.4149539213148" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); stroke-linecap: round; stroke-linejoin: round;"></path>
						 <path fill="none" stroke="#698353" d="M564.0257669470687,17.585046078685195L572.9742330529313,25.414953921314805M580.5,42L580.5,43M572.9742330529313,59.585046078685195L564.0257669470687,67.4149539213148M564.0257669470687,80.5850460786852L572.9742330529313,88.4149539213148M573.1284585979926,101.75724628517344L563.8715414020074,110.24275371482656M564.0257669470687,123.5850460786852L572.9742330529313,131.4149539213148M572.9742330529313,144.5850460786852L564.0257669470687,152.4149539213148M556.5,169L556.5,170M564.0257669470687,186.5850460786852L572.9742330529313,194.4149539213148M580.5,211L580.5,213M572.9742330529313,229.5850460786852L564.0257669470687,237.4149539213148M556.5,254L556.5,255M556.5,275L556.5,276M564.0257669470687,292.5850460786852L572.9742330529313,300.4149539213148M573.1284585979926,313.75724628517344L563.8715414020074,322.24275371482656M556.5,339L556.5,340M564.0257669470687,356.5850460786852L572.9742330529313,364.4149539213148M580.5,381L580.5,382M572.9742330529313,398.5850460786852L564.0257669470687,406.4149539213148M556.5,423L556.5,425M556.5,445L556.5,446M564.0257669470687,462.5850460786852L572.9742330529313,470.4149539213148M580.5,487L580.5,488M580.5,508L580.5,509M580.5,529L580.5,531M572.9742330529313,547.5850460786852L564.0257669470687,555.4149539213148M556.5,572L556.5,573M564.0257669470687,589.5850460786852L572.9742330529313,597.4149539213148M572.9742330529313,610.5850460786852L564.0257669470687,618.4149539213148" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); stroke-linecap: round; stroke-linejoin: round;"></path>
						 <path fill="none" stroke="#008722" d="M629.5,21L629.5,22M621.9742330529313,38.585046078685195L613.0257669470687,46.414953921314805M614.6615733490219,57.00818834019708L644.3384266509781,69.99181165980292M644.3384266509781,78.00818834019708L614.6615733490219,90.99181165980292M614.5906482289429,99.16654710493214L644.4093517710571,112.83345289506786M653.5,127L653.5,128M644.3384266509781,142.00818834019708L614.6615733490219,154.99181165980292M614.6615733490219,163.00818834019708L644.3384266509781,175.99181165980292M645.9742330529313,186.5850460786852L637.0257669470687,194.4149539213148M622.1284585979926,207.75724628517344L612.8715414020074,216.24275371482656M605.5,233L605.5,234M605.5,254L605.5,255M605.5,275L605.5,276M605.5,296L605.5,297M612.8715414020074,313.75724628517344L622.1284585979926,322.24275371482656M629.5,339L629.5,340M621.9742330529313,356.5850460786852L613.0257669470687,364.4149539213148M605.5,381L605.5,382M613.0257669470687,398.5850460786852L621.9742330529313,406.4149539213148M629.5,423L629.5,425M637.0257669470687,441.5850460786852L645.9742330529313,449.4149539213148M644.3384266509781,460.0081883401971L614.6615733490219,472.9918116598029M605.5,487L605.5,488M605.5,508L605.5,509M614.5906482289429,523.1665471049321L644.4093517710571,536.8334528950679M653.5,551L653.5,552M644.3384266509781,566.0081883401971L614.6615733490219,578.9918116598029M605.5,593L605.5,594M614.6615733490219,608.0081883401971L644.3384266509781,620.9918116598029" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); stroke-linecap: round; stroke-linejoin: round;"></path>
						 <path fill="none" stroke="#1e88ee" d="M823.5,21L823.5,22M815.9742330529313,38.585046078685195L807.0257669470687,46.414953921314805M791.9742330529313,59.585046078685195L783.0257669470687,67.4149539213148M775.5,84L775.5,85M785.0635157105133,97.92218535599022L837.9364842894867,114.07781464400978M856.6615733490219,121.00818834019708L886.3384266509781,133.99181165980292M887.9742330529311,144.5850460786852L879.0257669470687,152.4149539213148M861.7309998260374,161.13696878805433L785.2690001739626,177.86303121194567M783.0257669470687,186.5850460786852L791.9742330529313,194.4149539213148M799.5,211L799.5,213M807.0257669470687,229.5850460786852L815.9742330529313,237.4149539213148M813.9,246.79999999999995L761.1,262.20000000000005M751.5,275L751.5,276M761.3953298106328,287.44306893071723L885.6046701893672,305.55693106928277M904.5906482289429,311.1665471049321L934.4093517710571,324.8334528950679M934.3384266509781,333.0081883401971L904.6615733490219,345.9918116598029M903.0257669470689,356.5850460786852L911.9742330529311,364.4149539213148M911.9742330529311,377.5850460786852L903.0257669470689,385.4149539213148M887.9742330529311,398.5850460786852L879.0257669470687,406.4149539213148M861.6639344262295,414.80327868852464L761.3360655737705,433.19672131147536M761.2690001739626,437.13696878805433L837.7309998260374,453.86303121194567M837.9,458.79999999999995L785.1,474.20000000000005M767.9742330529313,483.5850460786852L759.0257669470687,491.4149539213148M761.3953298106328,499.44306893071723L885.6046701893672,517.5569310692828M904.5906482289429,523.1665471049321L934.4093517710571,536.8334528950679M933.6496953284429,542.7238033175225L833.3503046715571,560.2761966824775M815.9742330529313,568.5850460786852L807.0257669470687,576.4149539213148M809.2690001739626,585.1369687880543L885.7309998260373,601.8630312119457M903.0257669470689,610.5850460786852L911.9742330529311,618.4149539213148" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); stroke-linecap: round; stroke-linejoin: round;"></path></svg></div> -->
							<div id="paint" style="left: 0px; top: 48px; display: none;"> <div id="svg"><svg height="643" version="1.1" width="979" xmlns="http://www.w3.org/2000/svg" style="overflow: hidden; position: relative; left: 0px; top: 0px;"><desc style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Created with Rapha&#235;l 2.1.0</desc><defs style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></defs></svg></div>
							<canvas width="979" height="643" id="showCanvas"></canvas></div>
							</div>
							<div class="exp">
								<strong>参数说明</strong> &lt;功能类&gt;<br> 遗漏数据：自上期开出到本期间隔的期数。<br>
								遗漏分层：将当前遗漏用浅蓝色柱状阴影标注。<br> &lt;指标类&gt;<br>
								大小号：5～9属大号，0～4属小号。<br> 奇偶号：1、3 、5、7、9属奇数，0、2、4、6、8属偶数。<br>
								质合号：1、2、3、5、7属质数，0、4、6、8、9属合数。<br>
								012路：奖号除3得到的余数分布。1、4、7属1路，2、5、8属2路，0、3、6、9属0路。<br>
								升平降：相同统计指标中，本期值大于上期值叫升，本期值等于上期值叫平，本期值小于上期值叫降。<br>
								&lt;图表参数&gt;<br> 出现总次数：统计期数内实际出现的次数。<br>
								平均遗漏值：统计期数内遗漏的平均值。计算公式：平均遗漏=每次遗漏期数之和/出现次数。<br>
								最大遗漏值：统计期数内遗漏的最大值。<br> 最大连出值：统计期数内连续开出的最大值。<br> <br>
								注：本站高频彩种最多支持查看<cite class="red">2000</cite>期数据。<br> <a
									target="_blank" href="http://cp.360.cn/activity/feedback/"
									class="btn-msg">意见反馈</a>
							</div>
							<div class="chart-tab"></div>
							<!--end chart-tab-->
							</div>
							<!--end wrap-->
							<div class="quick">
								<h2>
									<span class="quick-cls"></span> 快速购买 老时时彩
								</h2>
								<div class="quick-pop">
									<iframe height="560" frameborder="0" width="100%"
										scrolling="auto" src="" name="kstz"></iframe>
								</div>
								<!--end quick-pop-->
							</div>
							<!--end quick-->
							<div class="footer">
								<p>
									<a
										href="http://bbs.360.cn/5473003/250358455.html?page=1&type=1#layer_1"
										target="_blank">关于360彩票</a> <a
										href="http://www.360.cn/about/zhaopin.html" target="_blank">招聘信息</a>
									<a
										href="http://bbs.360.cn/5473003/250360602.html?page=1&type=1&mpost=1#layer_1"
										target="_blank">联系我们</a> <a
										href="http://bbs.360.cn/5473003.html?fst=3" target="_blank">投诉建议</a>
									<a href="http://www.360.cn/custom/bdhezuo.html" target="_blank">合作伙伴</a>
									<a href="http://cp.360.cn/activity/feedback/" target="_blank">意见反馈</a>
								</p>
								<span class="other"> <a class="o1"
									href="http://www.bj.cyberpolice.cn/index.jsp" target="_blank"></a>
									<!-- <a class="o2" href="http://www.360.cn/award3.html" target="_blank"></a> -->
									<a class="o3" href="http://www.360.cn/award1.html"
									target="_blank"></a> <a class="o4"
									href="http://www.bjjubao.org/" target="_blank"></a> <a
									class="o5" href="https://www.privacyassociation.org/"
									target="_blank"></a>
								</span>
								<p>
									<em>Copyright&#169;2005-2016 360.cn版权所有</em> <a
										href="http://www.miibeian.gov.cn/state/outPortal/loginPortal.action"
										target="_blank">京ICP证080047号[原京ICP备06060858号]</a> <em>京公网安备110000000006号</em>
									<a href="http://www.360.cn/gongshangyingyezhizhao.html"
										target="_blank">工商营业执照</a>
								</p>
								<p>
									<!--em>客服电话：010-59059560</em-->
									<em>客服邮箱：caipiao@360.cn</em> <em>投诉建议邮箱：caipiao@360.cn</em>
								</p>
								<p class="red">360彩票郑重提示：彩票有风险，投注需谨慎！禁止向未满18周岁的青少年出售彩票！</p>
							</div>
							<!--end  footer--> <script
								src="./重庆时时彩走势图_老时时彩基本走势图_老时时彩走势图_彩票走势图_老时时彩开奖结果_360彩票_安全购彩_files/jquery-1.8.3.min.js"></script>
							<script
								src="./重庆时时彩走势图_老时时彩基本走势图_老时时彩走势图_彩票走势图_老时时彩开奖结果_360彩票_安全购彩_files/libs.js"></script>
							<script
								src="./重庆时时彩走势图_老时时彩基本走势图_老时时彩走势图_彩票走势图_老时时彩开奖结果_360彩票_安全购彩_files/ssc.js"></script>
							<script
								src="./重庆时时彩走势图_老时时彩基本走势图_老时时彩走势图_彩票走势图_老时时彩开奖结果_360彩票_安全购彩_files/full.js"></script>
							<link type="text/css" rel="stylesheet"
								href="./重庆时时彩走势图_老时时彩基本走势图_老时时彩走势图_彩票走势图_老时时彩开奖结果_360彩票_安全购彩_files/99ae6271fbb4c390.css">
							<script charset="utf-8"
								src="./重庆时时彩走势图_老时时彩基本走势图_老时时彩走势图_彩票走势图_老时时彩开奖结果_360彩票_安全购彩_files/f916492da6523e16.js"></script>
							<link rel="stylesheet"
								href="css/quc.css"> <script
								src="./重庆时时彩走势图_老时时彩基本走势图_老时时彩走势图_彩票走势图_老时时彩开奖结果_360彩票_安全购彩_files/passport.js","=""></script>
							<script
								src="./重庆时时彩走势图_老时时彩基本走势图_老时时彩走势图_彩票走势图_老时时彩开奖结果_360彩票_安全购彩_files/b862fb33.js"></script>


							<div id="ui-datepicker-div"
								class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all">
								<div
									class="ui-datepicker-header ui-widget-header ui-helper-clearfix ui-corner-all">
									<a class="ui-datepicker-prev ui-corner-all"
										onclick="DP_jQuery_1470580473423.datepicker._adjustDate(&#39;#dateFrom&#39;, -1, &#39;M&#39;);"
										title="前一月"><span
										class="ui-icon ui-icon-circle-triangle-w">前一月</span></a><a
										class="ui-datepicker-next ui-corner-all ui-state-disabled"
										title="后一月"><span
										class="ui-icon ui-icon-circle-triangle-e">后一月</span></a>
									<div class="ui-datepicker-title">
										<span class="ui-datepicker-month">8月</span>&nbsp;<span
											class="ui-datepicker-year">2016</span>
									</div>
								</div>
								<table class="ui-datepicker-calendar">
									<thead>
										<tr>
											<th class="ui-datepicker-week-end"><span title="Sunday">日</span></th>
											<th><span title="Monday">一</span></th>
											<th><span title="Tuesday">二</span></th>
											<th><span title="Wednesday">三</span></th>
											<th><span title="Thursday">四</span></th>
											<th><span title="Friday">五</span></th>
											<th class="ui-datepicker-week-end"><span
												title="Saturday">六</span></th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td
												class=" ui-datepicker-week-end ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
											<td class=" "
												onclick="DP_jQuery_1470580473423.datepicker._selectDay(&#39;#dateFrom&#39;,7,2016, this);return false;"><a
												class="ui-state-default"
												href="http://chart.cp.360.cn/zst/getchartdata?sb_spm=631c09588bc8508520dda9394cc97715&lotId=255401&chartType=dww3#">1</a></td>
											<td class=" "
												onclick="DP_jQuery_1470580473423.datepicker._selectDay(&#39;#dateFrom&#39;,7,2016, this);return false;"><a
												class="ui-state-default"
												href="http://chart.cp.360.cn/zst/getchartdata?sb_spm=631c09588bc8508520dda9394cc97715&lotId=255401&chartType=dww3#">2</a></td>
											<td class=" "
												onclick="DP_jQuery_1470580473423.datepicker._selectDay(&#39;#dateFrom&#39;,7,2016, this);return false;"><a
												class="ui-state-default"
												href="http://chart.cp.360.cn/zst/getchartdata?sb_spm=631c09588bc8508520dda9394cc97715&lotId=255401&chartType=dww3#">3</a></td>
											<td class=" "
												onclick="DP_jQuery_1470580473423.datepicker._selectDay(&#39;#dateFrom&#39;,7,2016, this);return false;"><a
												class="ui-state-default"
												href="http://chart.cp.360.cn/zst/getchartdata?sb_spm=631c09588bc8508520dda9394cc97715&lotId=255401&chartType=dww3#">4</a></td>
											<td class=" "
												onclick="DP_jQuery_1470580473423.datepicker._selectDay(&#39;#dateFrom&#39;,7,2016, this);return false;"><a
												class="ui-state-default"
												href="http://chart.cp.360.cn/zst/getchartdata?sb_spm=631c09588bc8508520dda9394cc97715&lotId=255401&chartType=dww3#">5</a></td>
											<td class=" ui-datepicker-week-end "
												onclick="DP_jQuery_1470580473423.datepicker._selectDay(&#39;#dateFrom&#39;,7,2016, this);return false;"><a
												class="ui-state-default"
												href="http://chart.cp.360.cn/zst/getchartdata?sb_spm=631c09588bc8508520dda9394cc97715&lotId=255401&chartType=dww3#">6</a></td>
										</tr>
										<tr>
											<td
												class=" ui-datepicker-week-end ui-datepicker-days-cell-over  ui-datepicker-current-day ui-datepicker-today"
												onclick="DP_jQuery_1470580473423.datepicker._selectDay(&#39;#dateFrom&#39;,7,2016, this);return false;"><a
												class="ui-state-default ui-state-highlight ui-state-active ui-state-hover"
												href="http://chart.cp.360.cn/zst/getchartdata?sb_spm=631c09588bc8508520dda9394cc97715&lotId=255401&chartType=dww3#">7</a></td>
											<td class=" ui-datepicker-unselectable ui-state-disabled "><span
												class="ui-state-default">8</span></td>
											<td class=" ui-datepicker-unselectable ui-state-disabled "><span
												class="ui-state-default">9</span></td>
											<td class=" ui-datepicker-unselectable ui-state-disabled "><span
												class="ui-state-default">10</span></td>
											<td class=" ui-datepicker-unselectable ui-state-disabled "><span
												class="ui-state-default">11</span></td>
											<td class=" ui-datepicker-unselectable ui-state-disabled "><span
												class="ui-state-default">12</span></td>
											<td
												class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled "><span
												class="ui-state-default">13</span></td>
										</tr>
										<tr>
											<td
												class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled "><span
												class="ui-state-default">14</span></td>
											<td class=" ui-datepicker-unselectable ui-state-disabled "><span
												class="ui-state-default">15</span></td>
											<td class=" ui-datepicker-unselectable ui-state-disabled "><span
												class="ui-state-default">16</span></td>
											<td class=" ui-datepicker-unselectable ui-state-disabled "><span
												class="ui-state-default">17</span></td>
											<td class=" ui-datepicker-unselectable ui-state-disabled "><span
												class="ui-state-default">18</span></td>
											<td class=" ui-datepicker-unselectable ui-state-disabled "><span
												class="ui-state-default">19</span></td>
											<td
												class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled "><span
												class="ui-state-default">20</span></td>
										</tr>
										<tr>
											<td
												class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled "><span
												class="ui-state-default">21</span></td>
											<td class=" ui-datepicker-unselectable ui-state-disabled "><span
												class="ui-state-default">22</span></td>
											<td class=" ui-datepicker-unselectable ui-state-disabled "><span
												class="ui-state-default">23</span></td>
											<td class=" ui-datepicker-unselectable ui-state-disabled "><span
												class="ui-state-default">24</span></td>
											<td class=" ui-datepicker-unselectable ui-state-disabled "><span
												class="ui-state-default">25</span></td>
											<td class=" ui-datepicker-unselectable ui-state-disabled "><span
												class="ui-state-default">26</span></td>
											<td
												class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled "><span
												class="ui-state-default">27</span></td>
										</tr>
										<tr>
											<td
												class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled "><span
												class="ui-state-default">28</span></td>
											<td class=" ui-datepicker-unselectable ui-state-disabled "><span
												class="ui-state-default">29</span></td>
											<td class=" ui-datepicker-unselectable ui-state-disabled "><span
												class="ui-state-default">30</span></td>
											<td class=" ui-datepicker-unselectable ui-state-disabled "><span
												class="ui-state-default">31</span></td>
											<td
												class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
											<td
												class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
											<td
												class=" ui-datepicker-week-end ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
										</tr>
									</tbody>
								</table>
							</div>
</body>
</html>