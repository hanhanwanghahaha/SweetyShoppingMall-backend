package com.rz;
import java.io.IOException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.alibaba.fastjson.JSON;

/**
 * Servlet implementation class JavaApi
 */
@WebServlet(name="JavaApi",value="/JavaApi")
public class JavaApi extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JavaApi() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8"); 
		response.setCharacterEncoding("utf-8");
		String rnum=request.getParameter("rnum"); 
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json;charset=utf-8");		
		response.setHeader("Access-Control-Allow-Origin","*");
		response.setHeader("Access-Control-Allow-Methods","PUT, GET, POST, DELETE, OPTIONS");
		response.setHeader("Access-Control-Allow-Headers","X-Requested-With");
		response.setHeader("Access-Control-Allow-Headers","Content-Type");
		System.out.print(rnum);
		if(rnum!=null)
		{
			switch(rnum)
			{
				case "1":userreg(request,response);break;
				case "2":userlogin(request,response);break;
				case "3":getprolist(request,response);break;
				case "4":getprobyid(request,response);break;
				case "5":addtocar(request,response);break;
				case "6":getcarlist(request,response);break;
				case "7":deleteCarPro(request,response);break;
				case "8":updateCarCount(request,response);break;
				case "9":addToOrder(request,response);break;
				case "10":getorderlist(request,response);break;
				case "11":getOrderView(request,response);break;
				case "12":getFeedback(request,response);break;
				case "13":getForgetPassword(request,response);break;
				case "14":getsearchlist(request,response);break;
			}
		}
		else {
			response.getWriter().write("{\"result\":\"nodata\"}");
		}
		
		
	}
	//用户注册
	protected void userreg(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String truename=request.getParameter("truename");
		String tel=request.getParameter("tel");
		String address=request.getParameter("address");
		String StrSql1="insert into tbmember (username,password,truename,tel,address) values (?,?,?,?,?)";
		List<Object> params1 = new ArrayList<Object>();
		params1.add(username);
		params1.add(password);
		params1.add(truename);
		params1.add(tel);
		params1.add(address);
		DBHelper Dal=new DBHelper();
		Dal.excuteSql(StrSql1, params1);
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json;charset=utf-8");
		response.getWriter().write("{\"msg\":\"ok\"}");
	}

	//用户登录
	protected void userlogin(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		DBHelper Dal=new DBHelper();
		String strSql=" select * from tbmember where username=? and password=? ";
		List<Object> params = new ArrayList<Object>();
		params.add(username);
		params.add(password);
		List<Map<String, Object>> userlist = null;
		try {
			userlist=Dal.executeQuery(strSql, params);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		String jsonstr =JSON.toJSONString(userlist);
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json;charset=utf-8");
		response.getWriter().write(jsonstr);
	}


	//获取商品列表
	protected void getprolist(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		DBHelper Dal=new DBHelper();
		String strSqlpager=" select * from tbproduct order by id desc";
		List<Map<String, Object>> listpage = null;
		try {
			List<Object> params = new ArrayList<Object>();
			listpage=Dal.executeQuery(strSqlpager, params);
			String jsonstr =JSON.toJSONString(listpage);
			response.getWriter().write(jsonstr);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	//根据商品id获取商品明细
	protected void getprobyid(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		DBHelper Dal=new DBHelper();
		String id=request.getParameter("id");
		String strSqlpager=" select * from tbproduct where id=? ";
		Map<String, Object> objectbyid = null;
		List<Object> params = new ArrayList<Object>();
		params.add(id);
		objectbyid=Dal.getSingleObject(strSqlpager, params);
		String jsonstr =JSON.toJSONString(objectbyid);
		response.getWriter().write(jsonstr);
	}

	//获取首页商品列表
	protected void getindexproindexlist(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		DBHelper Dal=new DBHelper();
		String strSqlpager=" select * from tbproduct order by id desc limit 0,4";
		List<Map<String, Object>> listpage = null;
		try {
			List<Object> params = new ArrayList<Object>();
			listpage=Dal.executeQuery(strSqlpager, params);
			String jsonstr =JSON.toJSONString(listpage);
			response.getWriter().write(jsonstr);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	//加入购物车
	protected  void addtocar(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		String proid=request.getParameter("proid");
		String userid=request.getParameter("userid");
		DBHelper db=new DBHelper();
		Boolean flag=false;
		String StrSqlexist="select * from tbshoppingcar where userid=? and proid=? ";
		List<Map<String, Object>> carrecordlist = null;
		List<Object> paramsexist = new ArrayList<Object>();
		paramsexist.add(userid);
		paramsexist.add(proid);
		try {
			carrecordlist=db.executeQuery(StrSqlexist, paramsexist);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if(carrecordlist.size()>0)
		{
			flag=true;
		}
		if(flag)
		{
			//修改个数
			String strSql1="update tbshoppingcar set procount=procount+1 where userid=? and proid=? ";
			List<Object> paramsupdate = new ArrayList<Object>();
			paramsupdate.add(userid);
			paramsupdate.add(proid);
			db.excuteSql(strSql1, paramsupdate);
		}
		else
		{
			//根据id把商品信息查询出来。
			List<Object> params = new ArrayList<Object>();
			String StrSqlpro="select * from tbproduct where id="+proid;
			Map<String, Object> obj=db.getSingleObject(StrSqlpro, params);
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
			String createtime=df.format(new Date());
			//新增
			String strSql2="insert into tbshoppingcar (userid,proname,proid,procount,ctime,imgurl,price) values(?,?,?,?,?,?,?) ";
			params.add(userid);
			params.add(obj.get("proname"));
			params.add(proid);
			params.add(1);
			params.add(createtime);
			params.add(obj.get("imgurl"));
			params.add(obj.get("price"));
			db.excuteSql(strSql2, params);

		}
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json;charset=utf-8");
		response.getWriter().write("{\"msg\":\"ok\"}");
	}
	//获取购物车商品列表
	protected void getcarlist(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		String userid=request.getParameter("userid");
		List<Map<String, Object>> carlistall = null;
		List<Object> params2 = new ArrayList<Object>();
		DBHelper Dal=new DBHelper();
		String strSqlpager=" select  * from tbshoppingcar where userid=? ";
		params2.add(userid);
		try {
			carlistall=Dal.executeQuery(strSqlpager, params2);
			String jsonstr =JSON.toJSONString(carlistall);
			response.getWriter().write(jsonstr);
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	//删除购物车商品
	protected void deleteCarPro(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		String id=request.getParameter("id");
		String userid=request.getParameter("userid");
		String strSql="delete from tbshoppingcar where userid=? and proid=? ";
		DBHelper db=new DBHelper();
		List<Object> params = new ArrayList<Object>();
		params.add(userid);
		params.add(id);
		db.excuteSql(strSql, params);
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json;charset=utf-8");
		response.getWriter().write("{\"msg\":\"ok\"}");
	}
	//修改购物车数量
	protected void updateCarCount(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		String id=request.getParameter("id");
		String countvalue=request.getParameter("countvalue");
		String userid=request.getParameter("userid");
		String strSql="update tbshoppingcar set procount=? where userid=? and proid=? ";
		DBHelper db=new DBHelper();
		List<Object> params = new ArrayList<Object>();
		params.add(countvalue);
		params.add(userid);
		params.add(id);
		db.excuteSql(strSql, params);
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json;charset=utf-8");
		response.getWriter().write("{\"msg\":\"ok\"}");
	}

	//下单接口
	protected void addToOrder(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		//从移动端接受参数
		Map<String, Object> obj=(Map<String,Object>)request.getSession().getAttribute("currentuser");
		String tbname=request.getParameter("tbname");
		String tbtel=request.getParameter("tbtel");
		String tbaddress=request.getParameter("tbaddress");
		String userid=request.getParameter("userid");

		//查询当前这个人购物车里面添加的商品
		String strSqlcarpros="select * from tbshoppingcar where userid=? ";
		//定义参数对象
		DBHelper db=new DBHelper();
		//定义一个容器用于保存查询的结果
		List<Object> params = new ArrayList<Object>();
		params.add(userid);
		List<Map<String,Object>> carprolist=null;
		try {
			carprolist=db.executeQuery(strSqlcarpros,params);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		//If:判断当前这个人是否在购物车中是否加入了商品，如果没有直接返回什么都不做
		if(!(carprolist.size()>0))
		{
			return;
		}

		//准备根据当前系统的时间生成一个订单号
		//New一个时间对象出来，主要用于获取系统当前的时间
		Date t=new Date();
		//接下来定义两种显示时间的格式
		SimpleDateFormat df1 = new SimpleDateFormat("yyyyMMddHHmmssSSS");
		SimpleDateFormat df2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		//使用这两种格式来格式化系统当前的时间
		String orderid=df1.format(t);
		String createtime=df2.format(t);

		//定义了一个sum变量，这个变量用于计算订单的总价格
		int sum=0;
		//通过for循环遍历当前用户添加的商品，每次循环就向订单明细表中插入一条数据
		for (Map<String, Object> m : carprolist) {
			//累加每个商品的小计  小计=单价*数量。把每个商品的小计累加起来，就得到了所有商品的总计，也就是该订单的总价
			//Sum=单价*数量=当前这个商品的汇总
			sum=sum+Integer.parseInt(m.get("price").toString())*Integer.parseInt(m.get("procount").toString());

			//从购物车当中取出来的商品明细插入到订单明细表中
			String strSqlitems="insert into tborderitems (orderid,proid,proname,price,procount,imgurl) values (?,?,?,?,?,?)";
			List<Object> paramsitems = new ArrayList<Object>();
			paramsitems.add(orderid);
			paramsitems.add(m.get("proid"));
			paramsitems.add(m.get("proname"));
			paramsitems.add(m.get("price"));
			paramsitems.add(m.get("procount"));
			paramsitems.add(m.get("imgurl"));
			db.excuteSql(strSqlitems, paramsitems);
		}


		//向订单抬头表插入订单的收货人信息
		String StrSql1="insert into tborderhead (orderid,sname,stel,saddress,sumprice,memberid,ctime) values (?,?,?,?,?,?,?)";
		List<Object> params1 = new ArrayList<Object>();
		params1.add(orderid);
		params1.add(tbname);
		params1.add(tbtel);
		params1.add(tbaddress);
		params1.add(sum);
		params1.add(userid);
		params1.add(createtime);
		db.excuteSql(StrSql1, params1);


		//下单完成后清空购物车。把当前这个人在购物车加入的商品删除掉
		String strSqlClearCar="delete from tbshoppingcar where sessionid=?";
		db.excuteSql(strSqlClearCar, params);

		//告诉移动端下单操作完成
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json;charset=utf-8");
		response.getWriter().write("{\"msg\":\"ok\"}");
	}

	//获取订单列表
	protected void getorderlist(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		DBHelper Dal=new DBHelper();
		String currentid=request.getParameter("currentid");
		String strSqlpager=" select * from v_order where  memberid=? order by id desc";
		List<Map<String, Object>> listpage = null;
		try {
			List<Object> params = new ArrayList<Object>();
			params.add(currentid);
			listpage=Dal.executeQuery(strSqlpager, params);
			String jsonstr =JSON.toJSONString(listpage);
			response.getWriter().write(jsonstr);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

    //获取订单明细
	protected void getOrderView(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		String orderid=request.getParameter("orderid");
		DBHelper Dal=new DBHelper();
		String strSql1=" select * from tborderhead where orderid=? ";
		Map<String, Object> objbyid = null;
		List<Object> params = new ArrayList<Object>();
		params.add(orderid);
		objbyid=Dal.getSingleObject(strSql1, params);
		String strSql2=" select * from tborderitems where orderid=? ";
		List<Map<String,Object>> listitems=new ArrayList<Map<String, Object>>();
		try {
			listitems=Dal.executeQuery(strSql2, params);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("orderhead", objbyid);
		map.put("orderitems", listitems);
		String jsonstr =JSON.toJSONString(map);
		response.getWriter().write(jsonstr);
	}

	//获取反馈信息
	protected void getFeedback(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		String question=request.getParameter("question");
		String img="";
		String qqoremail=request.getParameter("qqoremail");
		String StrSql1="insert into tbfeedback (question,img,qqoremail) values (?,?,?)";
		List<Object> params1 = new ArrayList<Object>();
		params1.add(question);
		params1.add(img);
		params1.add(qqoremail);
		DBHelper Dal=new DBHelper();
		Dal.excuteSql(StrSql1, params1);
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json;charset=utf-8");
		response.getWriter().write("{\"msg\":\"ok\"}");
	}

//	忘记密码
	protected void getForgetPassword(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		String truename=request.getParameter("truename");
		String tel=request.getParameter("tel");
		String password=request.getParameter("password");
		String strSql="select * from tbmember where truename=? and tel=? ";
		List<Object> params = new ArrayList<Object>();
		params.add(truename);
		params.add(tel);
		DBHelper Dal=new DBHelper();

        //定义userlist为null
		List<Map<String, Object>> userlist = null;
        //执行sql语句，把数据库的数据传给userlist
		try {
			userlist=Dal.executeQuery(strSql, params);
		} catch (SQLException e) {
		//打印数据
			e.printStackTrace();
		}

		String res="";
		if (userlist.size()>0){
			//改密码
			String strSql2 = " update tbmember set password=? where truename=? and tel=?";
			List<Object> params2 = new ArrayList<Object>();
			params2.add(password);
			params2.add(truename);
			params2.add(tel);
			Dal.excuteSql(strSql2, params2);
			res = "{\"msg\":\"密码修改成功!\"}";

		}
		else{
			res = "{\"msg\":\"用户名和电话号码不匹配，不允许修改密码!\"}";
		}
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json;charset=utf-8");
		response.getWriter().write(res);
	}

	//搜索
	protected void getsearchlist(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		String contents=request.getParameter("contents");//前端接受的参数
		System.out.println(contents);
		List<Map<String, Object>> searchall = null;//获取searchall设置为空
		List<Object> params2 = new ArrayList<Object>();
		DBHelper Dal=new DBHelper();
		String strSqlpager=" select * from tbproduct where proname like ?";
		//System.out.println(strSqlpager);
		params2.add(contents);
		try {

			searchall=Dal.executeQuery(strSqlpager, params2);//将数据库里面搜索出来的数据传给searchall
			String jsonstr = JSON.toJSONString(searchall);
			response.getWriter().write(jsonstr);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	//获取新闻列表
	protected void getNewsList(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		int currentpage=1;
		int pagesize=10;
		try
		{
			String p=request.getParameter("p");
			currentpage = Integer.valueOf(p);
		}
		catch(Exception e){
			currentpage=1;
		}

		DBHelper Dal=new DBHelper();

		//查询全部
		String strSql=" select id from tbnews order by id desc ";
		List<Map<String, Object>> listall = null;
		List<Object> params = new ArrayList<Object>();
		try {
			listall=Dal.executeQuery(strSql, params);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		//分页查询
		int startindex=pagesize*(currentpage-1);
		String strSqlpager=" select * from tbnews order by id desc limit "+startindex+","+pagesize+"";
		List<Map<String, Object>> listpage = null;
		try {
			listpage=Dal.executeQuery(strSqlpager, params);
			String jsonstr =JSON.toJSONString(listpage);
			response.getWriter().write(jsonstr);
		} catch (SQLException e) {
			e.printStackTrace();
		}


	}


}
