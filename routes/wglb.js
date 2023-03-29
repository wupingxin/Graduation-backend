const router = require('koa-router')()
//引入MySQL数据库
const query = require('./MYSQL');
router.prefix('/wglb');

// 添加晚归人员
router.post('/add', async (ctx, next) => {
	console.log(ctx.request.body);
	let name = ctx.request.body.name;
	let lynumber = ctx.request.body.lynumber;
	let sushe = ctx.request.body.sushe;
	let xueyuan = ctx.request.body.xueyuan;
	let banji = ctx.request.body.banji;
	let time = ctx.request.body.time;
	let reason = ctx.request.body.reason;
	let state = 1;
	// 将信息添加到数据库
	let a = await query(
		`insert into wglb(name,lynumber,sushe,xueyuan,banji,time,reason,state) values('${name}','${lynumber}','${sushe}','${xueyuan}','${banji}','${time}','${reason}','${state}')`
	);
	console.log(a);
	if (a.affectedRows == 1) {
		// 代表插入成功
		let data = {
			code: 200,
			msg: '添加成功'
		};
		ctx.body = data;
	} else {
		let data = {
			code: 0,
			msg: '添加失败'
		};
		ctx.body = data;
	}
})

// 返回晚归列表数据
router.post('/search', async (ctx, next) => {
	console.log(ctx.request.body);
	// 当前页数
	let pagenum = ctx.request.body.pagenum;
	// 当前页每页显示多少条数据
	let pagesize = ctx.request.body.pagesize;
	// 总条数
	let total = '';
	// 起始页索引
	let toppageIndex = (pagenum - 1) * pagesize;
	// 查询总条数 转换为字符串类型
	let b = JSON.stringify(await query('SELECT COUNT(*) FROM wglb where state = 1'));
	console.log(b);
	// 截取字符串，并转化为数字类型，得到总条数
	total = parseInt(b.substring(13, 15));
	//查询数据库
	let a = await query('SELECT * FROM wglb where state = 1 limit ' + toppageIndex + ',' + pagesize + '');
	// 格式化 a 的数据类型
	var dataString = JSON.stringify(a);
	var result = JSON.parse(dataString);
	console.log(result);
	if (result.length > 0) {
		let data = {
			code: 200,
			total: total,
			data: result
		};
		ctx.body = data;
	} else {
		let data = {
			code: 0
		};
		ctx.body = data;
	}
})

// 根据 id 删除晚归人员信息
router.post('/del', async (ctx, next) => {
	console.log(ctx.request.body);
	let id = ctx.request.body.id;
	let a = await query(`update wglb set state = 0 where id = ${id}`);
	// console.log(a);
	if (a.changedRows == 1) {
		let data = {
			code: 200,
			msg:'删除成功'
		};
		ctx.body = data;
	} else {
		let data = {
			code: 0,
			msg:'删除失败'
		};
		ctx.body = data;
	}
})

module.exports = router