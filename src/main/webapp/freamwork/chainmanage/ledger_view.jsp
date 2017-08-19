<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>账本查看</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<link rel="shortcut icon"
	href="${pageContext.request.contextPath }/assets/ico/favicon.ico"
	type="image/x-icon" />
<link rel="apple-touch-icon"
	href="${pageContext.request.contextPath }/assets/ico/apple-touch-icon.png" />

<!-- start: CSS file-->

<!-- Vendor CSS-->

<link
	href="${pageContext.request.contextPath }/assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath }/assets/vendor/skycons/css/skycons.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath }/assets/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath }/assets/vendor/css/pace.preloader.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath }/assets/plugins/jquery-ui/css/jquery-ui-1.10.4.min.css"
	rel="stylesheet" />
<!-- Plugins CSS-->
<link
	href="${pageContext.request.contextPath }/assets/plugins/bootkit/css/bootkit.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath }/assets/plugins/select2/select2.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath }/assets/plugins/jquery-datatables-bs3/css/datatables.css"
	rel="stylesheet" />

<!-- Theme CSS -->
<link
	href="${pageContext.request.contextPath }/assets/css/jquery.mmenu.css"
	rel="stylesheet" />

<!-- Page CSS -->
<link href="${pageContext.request.contextPath }/assets/css/style.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath }/assets/css/add-ons.min.css"
	rel="stylesheet" />
<script type="text/javascript">
	function get() {
		var inputname = document.getElementById("inputname").value;
		var status = document.getElementById("status").value;
		if (inputname == "" && status == "") {
			/* alert("未输入搜索的内容，将显示全部用户"); */
		} else if (inputname == "") {
			/* var inputname = "null"; */
		}
		window.location.href = "search?name=" + inputname + "&status=" + status;
	}
	function freeze(id){
		if(window.confirm("确认要冻结吗？")){
			window.document.location.href = "freezeuser?userid="+id; 
		} 
	}
	function unfreeze(id){
		if(window.confirm("确认要解除冻结状态吗？")){
			window.document.location.href = "unfreezeuser?userid="+id; 
		} 
	}
	function del(id){
		if(window.confirm("确认要删除吗？")){
			window.document.location.href = "deleteUser?userid="+id; 
		} 
	}
	function giverole(id){
		
			window.document.location.href = "setRole?userid="+id; 
		
	}
	
	function reset(id){
		if(window.confirm("确认要重置密码吗？")){
			var xmlhttp;
			if (window.XMLHttpRequest) {
				xmlhttp = new XMLHttpRequest();
			} else {
				xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			xmlhttp.open("POST", "../sm/resetuser?userid=" + id, true);
			xmlhttp.setRequestHeader("Content-type",
					"application/x-www-form-urlencoded");
			xmlhttp.send(null);
			var temp = false;
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					var result = xmlhttp.responseText;
					if (result == 'unique') {
						form.submit();
					} else if (result == 'notunique') {
						alert("密码已重置成功,重置后的密码为123456");
						temp = false;
					} else {
						temp = false;
					}
				}
			}
			return temp;
		} 

		
	}

</script>
</head>
<body>
	<div class="row">
		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
			<div class="panel panel-default bk-bg-white">
				<div class="panel-heading bk-bg-white">
					<h6>
						<i class="fa fa-table red"></i><span class="break"></span>账本查看
					</h6>
				</div>	
				
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
		<div class="tabs">
								<ul class="nav nav-tabs">
									<li class="active">
										<a href="#1" data-toggle="tab"> Block1</a>
									</li>
									<li>
										<a href="#2" data-toggle="tab">Block2</a>
									</li>
									<li>
										<a href="#3" data-toggle="tab">Block3</a>
									</li>
								</ul>
			<div class="tab-content">
				<div id="1" class="tab-pane active">
									<h3>原始信息</h3>
									<p>{"transactions":[{"type":1,"chaincodeID":{"path":"github.com/hyperledger/fabric/examples/chaincode/go/rbccontroller","name":"883a8a34fef3465ff19dfd0d18038f59f635789455c58e0092ee3f69008ac3f48bb53070d6e6c5f9931303a4b6b427e65f272ccb6486088715c1dfe46b74a6ff"},"payload":{"chaincodeSpec":{"type":1,"chaincodeID":{"path":"github.com/hyperledger/fabric/examples/chaincode/go/rbccontroller","name":"883a8a34fef3465ff19dfd0d18038f59f635789455c58e0092ee3f69008ac3f48bb53070d6e6c5f9931303a4b6b427e65f272ccb6486088715c1dfe46b74a6ff"},"ctorMsg":{"args":["init","rbccontroller"]}}},"uuid":"883a8a34fef3465ff19dfd0d18038f59f635789455c58e0092ee3f69008ac3f48bb53070d6e6c5f9931303a4b6b427e65f272ccb6486088715c1dfe46b74a6ff","timestamp":{"seconds":1496818712,"nanos":836327080},"nonce":"YxBZrlLp1n/ovlzfr5HDSxPQKrjjLcC4","cert":"MIICNTCCAdqgAwIBAgIQPVzC9mlNSMeZdDTSqvuTHjAKBggqhkjOPQQDAzAxMQswCQYDVQQGEwJVUzEUMBIGA1UEChMLSHlwZXJsZWRnZXIxDDAKBgNVBAMTA3RjYTAeFw0xNzA2MDcwNjU3MzJaFw0xNzA5MDUwNjU3MzJaMDgxCzAJBgNVBAYTAlVTMRQwEgYDVQQKEwtIeXBlcmxlZGdlcjETMBEGA1UEAwwKamltXGJhbmtfYTBZMBMGByqGSM49AgEGCCqGSM49AwEHA0IABBdEgJjDAbf1iOZBDoio0IX02yRVeEAqaYzkSqw6L86l65doWUzWw+Pr5MnmSEGWjGGeT6TN57Rs0vO2GKMvw4KjgcwwgckwDgYDVR0PAQH/BAQDAgeAMAwGA1UdEwEB/wQCMAAwDQYDVR0OBAYEBAECAwQwDwYDVR0jBAgwBoAEAQIDBDBNBgYqAwQFBgcBAf8EQOkuIsjwKMt9Y8xGJ3/SRkCGg1QfhGHxw541g3DiLwL5DAEp8Li+qvmARzrLXKTqD0Ax624aZiTgA+lIVmZW/JMwOgYGKgMEBQYIBDCgyBcXuzyA9g7vdHv/5xRpq0TK0PUx/9ibqIQheIwAVNR2v7+yfaAWKRaIelZJQuswCgYIKoZIzj0EAwMDSQAwRgIhAPWx/vftR0elc01Lp2Mfk0gqy0sGUVUCS3IlFiWOGr9eAiEAlxn9M/ly+6KJMDFCkjBJMuCN+fHW0QwBjHVLbGBx+g4=","signature":"MEUCIGr3RJZp4lV0xhLF2rKRTzzNlnENFAOE/vD00XqO4u9JAiEAn324U0FWAKCCdRILfeXvFBKQftNVwXMHKHimYD9hwng="}],"stateHash":"p9qrjtXGRC3KFmmNxM/qTda/40dl8gh1QB7PIvHV812hcUUHQTKYTQ40MjzRpZXtRRLn+a0roOnHayRATicKtg==","previousBlockHash":"RrndKwuojRMjOz/rdD7rJD/NUupiuBuCtQwnZG7Vdi/XXcTd2MDyAMsFAZ1ntZL2/IIcSUeatIZAKS6ss7fEvg==","consensusMetadata":"CAE=","nonHashData":{"localLedgerCommitTimestamp":{"seconds":1496818722,"nanos":911184439},"chaincodeEvents":[{}]}}</p>
									<br>
									<h3>区块信息</h3>
									<p>序号：1     时间：2017-06-07 14:58:32<p>
									<p>State Hash：p9qrjtXGRC3KFmmNxM/qTda/40dl8gh1QB7PIvHV812hcUUHQTKYTQ40MjzRpZXtRRLn+a0roOnHayRATicKtg==</p>
									<p>Previous Block Hash：RrndKwuojRMjOz/rdD7rJD/NUupiuBuCtQwnZG7Vdi/XXcTd2MDyAMsFAZ1ntZL2/IIcSUeatIZAKS6ss7fEvg==</p>
									<p>
									
									<h3>交易信息</h3>			
					<div class="panel-body">					
					   <table class="table table-bordered table-striped" id="datatable-default" >
						<thead>
							<tr>								
								<th>执行时间</th>
								<th>chaincode</th>
								<th>args</th>
							</tr>
						</thead>
						  <tbody>						
									<tr>								
									<td>2017-06-07 14:58:32</td>
									<td>883a8a34fef3465ff19dfd0d18038f59f635789455c58e0092ee3f69008ac3f48bb53070d6e6c5f9931303a4b6b427e65f272ccb6486088715c1dfe46b74a6ff</td>
									<td>["init","rbccontroller"]</td>					
									</tr>
						</tbody>
					   </table>
				     </div>									
                  </div>
				  <div id="2" class="tab-pane">
							<h3>原始信息</h3>
									<p>{"transactions":[{"type":2,"chaincodeID":{"name":"883a8a34fef3465ff19dfd0d18038f59f635789455c58e0092ee3f69008ac3f48bb53070d6e6c5f9931303a4b6b427e65f272ccb6486088715c1dfe46b74a6ff"},"payload":{"chaincodeSpec":{"type":1,"chaincodeID":{"name":"883a8a34fef3465ff19dfd0d18038f59f635789455c58e0092ee3f69008ac3f48bb53070d6e6c5f9931303a4b6b427e65f272ccb6486088715c1dfe46b74a6ff"},"ctorMsg":{"args":["copyState","5860fa31bf5e39b4d304d20f49a0a80a2bc0019bcefdaf9acaff78d41a83ae4b0a41853efca100eaceb680f204e208e9f3f08afd245baedb9bde735f6f4bf34a","883a8a34fef3465ff19dfd0d18038f59f635789455c58e0092ee3f69008ac3f48bb53070d6e6c5f9931303a4b6b427e65f272ccb6486088715c1dfe46b74a6ff"]}}},"uuid":"1e494d1a-033b-4b12-9013-9835a2d8389d","timestamp":{"seconds":1496818770,"nanos":492882004},"nonce":"WR9ivzV0HzJ0RguODZoL40neW4Rhqmkv","cert":"MIICNTCCAdugAwIBAgIRAMgimRM7HUq+mPErnXgF6JAwCgYIKoZIzj0EAwMwMTELMAkGA1UEBhMCVVMxFDASBgNVBAoTC0h5cGVybGVkZ2VyMQwwCgYDVQQDEwN0Y2EwHhcNMTcwNjA3MDY1NzMyWhcNMTcwOTA1MDY1NzMyWjA4MQswCQYDVQQGEwJVUzEUMBIGA1UEChMLSHlwZXJsZWRnZXIxEzARBgNVBAMMCmppbVxiYW5rX2EwWTATBgcqhkjOPQIBBggqhkjOPQMBBwNCAASX8mqBokhlX1y+LGzhpg0c1mWJNYA/Z9H+DlEge2z3FrVJWshLb5U7IdxF8UKcbhUopqt3i22GwfG6INDaYSzWo4HMMIHJMA4GA1UdDwEB/wQEAwIHgDAMBgNVHRMBAf8EAjAAMA0GA1UdDgQGBAQBAgMEMA8GA1UdIwQIMAaABAECAwQwTQYGKgMEBQYHAQH/BEAv/uQ688L/3cPh7uZ9zWBjP9kHzXeLvMdtSeKNA4qwfFR0+YUgBmIcWHSNUZxx4bWImOmDPsxvAfnzQpSJk9M8MDoGBioDBAUGCAQw/8gRUVqMJsUX4Uh4CKWQNLNRzAzfzY3brL1KH2fhKjIDndGw09VKVu1dcBZvR4CQMAoGCCqGSM49BAMDA0gAMEUCIQC0G8PuxcfGes0j1HmRDVZBU1c+OJfBG+pFb2Hd/K2U0wIgAsJOxnKaCzKBH2IFsPHWNDvM/aDnmZLlYyrb3VJ7kBc=","signature":"MEYCIQDGWPzMPg6mIFUqijnwnnJkIVXVmtLub/ccDElZwb6e1gIhAMyu9zhPUQ0WHTJwxrZdWU/kb159OhNpYQiiM18BVRmv"}],"stateHash":"iQnWU6lVk0+Y3VSIxmKT20eTVdxPyReq6IduFkEFCQw+IBVYHPBdWswIfu/r6xya0iIca+fbQdanI8dPZqNcFQ==","previousBlockHash":"zlzhnq8MKuMd0o9BqFmniCW5v6bC/9gNzaVniLFkbmblZBnQQhYlQPmi8EaJA96UuBmHfxZ9kmcYofzb2huonA==","consensusMetadata":"CAI=","nonHashData":{"localLedgerCommitTimestamp":{"seconds":1496818771,"nanos":514686424},"chaincodeEvents":[{}]}}</p>
									<br>
									<h3>区块信息</h3>
									<p>序号：2     时间：2017-07-07 10:58:32<p>
									<p>State Hash：iQnWU6lVk0+Y3VSIxmKT20eTVdxPyReq6IduFkEFCQw+IBVYHPBdWswIfu/r6xya0iIca+fbQdanI8dPZqNcFQ==</p>
									<p>Previous Block Hash：zlzhnq8MKuMd0o9BqFmniCW5v6bC/9gNzaVniLFkbmblZBnQQhYlQPmi8EaJA96UuBmHfxZ9kmcYofzb2huonA==</p>
									<p>
									
									<h3>交易信息</h3>			
					<div class="panel-body">					
					   <table class="table table-bordered table-striped" id="datatable-default" >
						<thead>
							<tr>								
								<th>执行时间</th>
								<th>chaincode</th>
								<th>args</th>
							</tr>
						</thead>
						  <tbody>						
									<tr>
									<td>2017-06-07 14:58:32</td>
									<td>883a8a34fef3465ff19dfd0d18038f59f635789455c58e0092ee3f69008ac3f48bb53070d6e6c5f9931303a4b6b427e65f272ccb6486088715c1dfe46b74a6ff</td>
									<td>["copyState","5860fa31bf5e39b4d304d20f49a0a80a2bc0019bcefdaf9acaff78d41a83ae4b0a41853efca100eaceb680f204e208e9f3f08afd245baedb9bde735f6f4bf34a","883a8a34fef3465ff19dfd0d18038f59f635789455c58e0092ee3f6</td>					
									</tr>
						</tbody>
					   </table>
				     </div>							
				   </div>
				   
				   <div id="3" class="tab-pane">
							<h3>原始信息</h3>
									<p>{"transactions":[{"type":1,"chaincodeID":{"path":"github.com/hyperledger/fabric/examples/chaincode/go/rbcapproval","name":"3bb382b01626f247b45090f6001b40aac0c1491762bcf606348607fb9fcc27490c61a1759c7aa358d51017db6fbca2c1c5cda2a973e9f8b2be18a5f906cf619e"},"payload":{"chaincodeSpec":{"type":1,"chaincodeID":{"path":"github.com/hyperledger/fabric/examples/chaincode/go/rbcapproval","name":"3bb382b01626f247b45090f6001b40aac0c1491762bcf606348607fb9fcc27490c61a1759c7aa358d51017db6fbca2c1c5cda2a973e9f8b2be18a5f906cf619e"},"ctorMsg":{"args":["init","rbcapproval"]}}},"uuid":"3bb382b01626f247b45090f6001b40aac0c1491762bcf606348607fb9fcc27490c61a1759c7aa358d51017db6fbca2c1c5cda2a973e9f8b2be18a5f906cf619e","timestamp":{"seconds":1496821814,"nanos":226665773},"nonce":"wx0/3fSi34Y4o1lFLXxuumj5Rx24wFen","cert":"MIICNjCCAdugAwIBAgIRAKAQ+z/+rEgvuTwTwUGwGNwwCgYIKoZIzj0EAwMwMTELMAkGA1UEBhMCVVMxFDASBgNVBAoTC0h5cGVybGVkZ2VyMQwwCgYDVQQDEwN0Y2EwHhcNMTcwNjA3MDY1NzMyWhcNMTcwOTA1MDY1NzMyWjA4MQswCQYDVQQGEwJVUzEUMBIGA1UEChMLSHlwZXJsZWRnZXIxEzARBgNVBAMMCmppbVxiYW5rX2EwWTATBgcqhkjOPQIBBggqhkjOPQMBBwNCAASGilmZQ+IrtmT3K7Kw6kfQPbbluU46pV62rLRK++CtZe53OQRqN93Qj0jRw9DaYCGbUa/hZwj/ix+35B866BX5o4HMMIHJMA4GA1UdDwEB/wQEAwIHgDAMBgNVHRMBAf8EAjAAMA0GA1UdDgQGBAQBAgMEMA8GA1UdIwQIMAaABAECAwQwTQYGKgMEBQYHAQH/BEBSW2EWnLBe378cv2Y6+F03hcn/Sl06iy6LskMSt2a6vTC9QPRiSfqsmipGUnzkTlNpr3ARoJcSH4i3nYv7gV7hMDoGBioDBAUGCAQw4HRmoEaP6tQixfoAZpiAtdNTTr+32no+ubxloL8eqfixXJaoQEg/MOVIzUWPb6DcMAoGCCqGSM49BAMDA0kAMEYCIQDLDeHNRpZdCkzMiCMuy6ptpSJThwjxk3Av6cG/L1mE9QIhAIefTpcdOAeU2UPz4kRDTMYXPn/m6hsZMrUNd/MxGHUF","signature":"MEQCIEsn2lkRWOKv5oe2uHYGR8NUnN1KsgVPNJMvs8w1gtFMAiBjdfupeP9fFFUe3gRJc+IjINt6XY1Hslm9wyzUczXkUw=="},{"type":2,"chaincodeID":{"name":"883a8a34fef3465ff19dfd0d18038f59f635789455c58e0092ee3f69008ac3f48bb53070d6e6c5f9931303a4b6b427e65f272ccb6486088715c1dfe46b74a6ff"},"payload":{"chaincodeSpec":{"type":1,"chaincodeID":{"name":"883a8a34fef3465ff19dfd0d18038f59f635789455c58e0092ee3f69008ac3f48bb53070d6e6c5f9931303a4b6b427e65f272ccb6486088715c1dfe46b74a6ff"},"ctorMsg":{"args":["register","rbcapproval","v1.0","GOLANG","rbcapproval","3bb382b01626f247b45090f6001b40aac0c1491762bcf606348607fb9fcc27490c61a1759c7aa358d51017db6fbca2c1c5cda2a973e9f8b2be18a5f906cf619e","504b03041400000008007d57304a3e7113d6b10100008b040000070000006d61696e2e676fbd545d6bdc30107c3e83ffc35650b0cb9ded0b491e0efc504a2981165af218f2a053d63e115b32abf5956bc97fafe48fe4b89092165a3006edeccece8c91f31c5aa94d1c7552ddcb1aa7531ce9b6b3c490c4d142542d8b505b885af3aedf66cab6f9eed02135785723e595dc9256b9b284b9da790665ef30773bdd8a9329dbe5b55d35b6aeb5a93d98065e658d1b57755e82d33f1000b4e1cb738012d6850758b758596a258363f2b31e10674571b92ad6abe20cd6179be27c535ccc947b4910b620f9c6695df6a577fc09f9f3504f84ec3ab27bd9886182bd1f783f953ecc26c031f58ae1671c3d84aeaa370a128677cf3a53b8329a13c7fd1682f3ec11b9f6a52bc3489554b88440c1da9ac9c81224d50e6e6ec7630ac9cdedf6c0be11892ca561f582907b326074b30caf5789d9db7bfc477274f5345696200c7e9f2588a16116ccd911348819f97de28b07c0c6219c72c91788e40b2c71f457f97ceb910eff299e1a7956e04e6d1d63af0be868e237647f1a53b8f7c928df3b814d39c672cd9238f11f31799e613a5a0ded6fcac037aaf17f8becab0f87ab447c0ca1800b24e1ce3efe1b36f0d68921b3499c7f7e01504b0304140000000800c458304a87cc246f590e00008b3900000b000000617070726f76616c2e676fed5be973134716ff6caaf81f3aaacad6c84c241fd9ec461ba7ca313251cab1896dd84db95c622c8dec59e419efccc88124549984cb098e49c2156059bcc5b5546c430e621b08ff8c46923fe55fd87e7d4dcf6824cb0636b555f00134ddfd8e7ec76fdeeb1e9249a4cdccd8d6ac56dcbd6b46cb1dd6267534ad19e6ee5dbb7719d33396ed2265f7aeb6986ee6acbc614e26a7f423b1c0c0df1dcba423b66dd90ef9599876c9bf8e6be72c7396ffc6cbe9bc6b4ceb3110d1169b34dca9d24422674d27a78ecee87651cf4fea76b2a04dd8462e99b36c3d999bd20c90a6279d29633ad62255c9358a786d1cc460251cba9164d25b59aaccaf9737bedc5c5aaf5e39313c6038ae776ea17ae73e9eee1b1a1c19cd0e0f64f0dfbdfbf70f0f1dec1d403d28c67f53a5e9aabde9fede0303a3d9be777b33837d437bd3d9e177fafa0e8c8c0ebd9f1e4674bb406b4fe47225c7b5a6753b869249e9512d3fbee27d7d79f3db5fab378e6f3eba5c5bb999c90bfe12b7ec0707d2c31f0e0da691f8e3f3ff4749b78f0e997a0c869349fea856fe75abb6fa6f6fe14279ed1e1584b75bb9b85ef9f102de6f6331bd03030dc5f4168bb218fcc8c454e6e72ad7e6a3c4d41bfdc123effa97423e376d76143b327b303d3c92191a3cb05f92dc0966eb4c55e7cf54ae7def2d9cae6edc214c29bbca1717aab7ee36627a303d3a34fae1fe74161befe0d0681a9e513deff2da1c66e29dbbed9dfab10993d1bf0e8dbe9b19de0b9c24265dc0a40b3399f7ce9c2aaf7f59de38eb9d3b5b39b1d884d5bbbd03fd844dd0caddc0aa3be52d7c51b9705f30e17bad7ef1b03277bc9eeb4866df60b677df703a1db137c1258a6838fd5eba6f346a2f0b9cae15f9aee6969c6c66304a3c75fdda7243b2a14154af0025db9cbb527b7aba31657f7f84ed98c0054e4c20209964c1b9fc2b094b17471b1a31264d6050cab9e81390c21273d0e26c0f01bca562fe44ec10e2ac062d4c423501278648e8045e4ef3a5727915c28bd854e14ef9edf155c9d458cfb6518c8c0845b08309c60cd8d16d542e3ddcbcf4d3ee5dc7e80ee52c633bec65e82eef32930f65379791c90b09584426af94d71e6d9e5f01bd06b5693d920626385558833648e9482a9888a6a289fcdbe3b3de999b958bcb95f93bb5a5b3deb7f73088515051824800ca1dd45d0b38d689e113202a0a2f7c31c43b5498102383025e0c92faf8ab282c494c90f8a08c0007bfdba87dfec43b77a6ba711b93f7974cd7b0cc7a7bb009d05390532a01a698bcd79e7422cd0913be39e56d60726ff1338c25a0bcad6bae6ed793b309c2819bc95bfcbaf6f32fe58d0d3ff403e11976a811080342cca353ca9110959c23751803c949b73b36de0e0f820a2698b0705ab7a58fb8ba998f904527b8accafc7fbc0717bc07d72b737744fe8019abe71fa089a3ae4ea955ff27aa3e3a5139730e0cba7ca9fafdedf2da0fbb77154a660e2939d4cef32c8ef6e92ef051e2586d460949078c88ff523d4c3327313253345c2597807115c5d4188498c61671ea4fb0726d05cb465915cdc284ad99933a12fc8079db04fea9a22c4c4fe947127b7508c51142afcc0257cab607aa3d6c05452312a9000588e3b00824d9ba5bb24d040b985d088ef0288842cb4c3e12b172629a1a5df2964f1904dd666c06ad3a36393125b181e8e8d36db7011b3e2de1b877f2fbcd6f6e612ca89ebf5bdef88a1565f7ced6568f479980548cb21d86cdd2349746fe3091361e97c454e61eb13c9c31ada8f5393c4ed67b4fbef5e61736977ea6eb893c9c035c01bebe6838816d9cb9545bba2b82b9f6d52fdee245ca0a6fac72e6171eaeae1fae02b6e2685277fb4ab6ad9b2e97a3386e690241cd9d10eb46f050c6c46051d0729848114aa988d4ff7162911c36300b47e091c039d1a7158bba0d96370a460ec38d0211671450513715581f473d3da88390f320348d2263eb2406f58f941853d08f46c38145311ebc0e30e24990260a8f5a2c0d880c52cbd08a55aac3714ed3ea9b22a7e8374cfc6e83dd58a66b5ba03e0c84f72526c986202d25ce94006f41907c0075b330a712e60d5d4b62d4120b0894c4c03730d28747c80b57452df42071666110ff4a0f188a5ab7684de266299106c3169458bf66e0f609b91622353d7ad54179bda0958a2e129648a07d964b5d91c20b5a934f364ec528f178d8afb847fc1d54802809f9c7476425c27bf12001f607ac07e54766308d5b500e7d520f2ea918d6f0d82115393cec241e7508dfb8df535150f63116623c019ac696442a0557af6d6b47c31116d26e8791d3c4573b8d84d65912d8e31a66cc8255f0f12227f0028f536ad98aa44168c38bc09226061a69a20db03671c09cd66c674a2b2a41ebff0113c55b173c8b050b0a6602fcac821d42c05d7b781257b714b839b26f01df2325fc72b7b783de63e3d1f8fd12235f62e4ce31b2557ceb1d185091849ea4534bc53a63aa0fa8b44180c16387c2e0e7bc44bfa6e8e794301c6c857d0c8c727618fb4899bb05003a8080042573c4e3393b0154ad6942c0d00e6261080ac7327915725985d0507937af0aefa9ac6f564907053da84adbbcf1e66089f7c947b7844995f4422298096a820d0280c9ea58123d10336f36af6333580c7e41e0fe01b70813d8225601a494a6f13bc349a0f491193c07edc19b7e690b67e660639031f627bcc1b6ac887f984becc70ed233e68095d3c0260a0ce2be715a73a1d303dbd075b0a0d820c4430a33d9395f50a2419bb02d7ec9243d75e1570fec6c6cf9b277ed2e74c06c78181a1c904abc830d474292885351d4493d51c2cceb478028c0259181e1a102f1d058c73853972e7e7bcbbe83f3425ad1d6b5fc51a41fc14c9d989f796205cb22711e20cd253279c4fcd7312e8f4388f399cec00c843b9fe90accf064e0b3dd815911ca7cfaf5c0344b1b3ef9c7c0642f843b9b792330c30f9070a227fcae3da0af417642c28de28a138c9d881a655ba1c31b4687b48b9d74298ea7db9f55ae5fab2cdfa4051304d4f95538bfbb72821652b445c63d7e6de5d7ea9315a1307dc194d7363a8191514039708eb43bd413dc2dfaf4d3d09a4c3eb82693a75ab5858460bb343aff86e5c7905e7474469a4c46ea6fe4bd6fced2969e0f94d716f0badae99fe02c536af6bdc5d5dae74ff0c65821b9b2543d770a5310f68de25c96e52dde831b9db5b9f2da3dccbbfce41416850d8b8d4c1790e8274e91556f75d39941913b0e9ce741844c6b8775851df6a9a823cee6784ec1301f933c521f8e644143f9e2ae84af0c062d19938ecac8a38a1c26dcdf1f5b46e6031890a0ef209e437f1e67772895c56fbc93b7bcf587e5a7ffc460c7977babebb5074be5a74b95e3ab61f44bf4e6f399bc222148bc6ec98836ab8fb8ec44459addabb91a2bc4c92bfc7df602e7f3c009928e954ffb4b2ee512cb66337bff968ded91a4aa48e6ba9d8cddbd4ba4273de6a7e7bb3830e9f50c3982ff8e3615f23d003dbea682ea62aa7126514d70b4f02254d08a735996e85158c96e6b45bf1113e948150c4cca27f36ddb6a80fc2ca92b95c3107dac7eb9884c7954456ccf8944222ee738512163ce5a87f52d3aaac8d25896118f47e014f3dcc987e5471745b91a34cdefbc59e2d29414ce626a9b1b17012d077ab85ca591486ad12d8a50ed8556a0ddcfa902ed1615a8914729b97c716832a6e4c22558a576fd5f57a932e2053bcd7d7a082ad11e64e477c43caa5e0c355c413d64f44e2683900aaf6771dd0eb5ced3f3ded5eb9be7bfabadae4623e92b8d5fcfcde3c79d321cc18d1cc3e3fed4307d01226c9e730548dfa4374ed756ee07cabd73b7fd5a870caa050de3548a5a459ef8edf155d72ee929790caed88a1a3dda0532a9498914412b20f8d4636d2ef27a2ec72ee6f0b6669b558ab89a9c6d566d122654b71e046a93e7095c881f963009c4bc4216451d5408371534a398422547b7c75e75c6b9d768730ea3313520bce951c5b330e56ec43ef49e5ca01f3fe057467963835e786993b6aec3a51a36670775f8b539efe61d72951eb9785a3bc217832f0e077c112ad9822dc3b579ea609649e41a99d624a1ec011bb7e0aa46f62209c34f4052dc54bc9fc499432add22692bd58020f1f2010d827b193b3cdea42612852eef479859f7ec91434758e287256c8cdaea2d6a0f6c626a8ce75384d39745838a3bb8a9fa777e62245883633bc0cfd6b71ed839ddb4b8931581444296451deb31e5f0ea41222cf7881ef435f22ba827adc2655ff9bd7a0f6ae5fb3416a1f2f727e2fb36602c347d4b528a17643443e8ae70ce9437beaa2ecf8b6b6d7a094d033cf489d50e1b56599fb7913017572794b94caffb8b4d34923eddda8e52fdfd2cacfd8e74bb4e087cdf27bc301ffaaa2fd217ed5db237dabbb7e50f9c6c5dc9ee17e495f62ec92feddddbf54cbd6ecfea9f9d7a477c32c93c237f24b9657eb4776dd7239dc9ae179f27ed5d3bf04748b367f7072fabaefe54b9785feec2eb4e25f8a1c2cb338597670a2fcf14fe07670a48febe9e21d1d27af5ea0aff2800fe0b07e6971a9bd12601e8c6c9107b48d18fc820211657cb8f6ec169f1e31b5b7e49c0479de7733631abd95c215ce9ba6fbc1e3eaff0bffce2cb682d2fc7059ba1e0c3fe63093f4d70f9bd8e8a3a3b54f4c6eb71207ed6ab244e1c389be6a661e7d313faa461aa088e7bf122d071d8fa48817f1de3636c05a135d9b712d007978b1febf138eb590c6040d8fd05ff7e0b58e21f7bf6b03e325f7fa7854120937fe728b9da8ae08c5e03a18a01556a2789b666870e3b3aee8842ec08c826ae68f95883f10dde476109318e9cc119ff73daf72cc354eab1597c594bd5e00b2270c009e82112d33fc0887ce739db7c75b171c23798e937d62b0b2b993ccd7839d7a52ccfe4c75b4edf1770b2e867ea339f2cbedd1163566ee9f6b4b5b8d4280e6ceb2c6e1b81d92c2e771a96c4fd11db6c106e3b8bb6207b3fec482435812decf949778aa2170e0ff2afca1f39b64b2028c13b87f2b7c221d3c1d932fbbb964b5d4f47935c0deccece102b44d7126e442ab692c26701e6503be2e4b0865ec3f1058139bf2c17ef9c9e9db1a76a875e579cbcc35fd7c1f6cbcce05b8df8e2bf504b01021f001400000008007d57304a3e7113d6b10100008b0400000700240000000000000020200000000000006d61696e2e676f0a00200000000000010018001248569fa46fd2018a34569fa46fd2016536cf53e96ad201504b01021f00140000000800c458304a87cc246f590e00008b3900000b00240000000000000020200000d6010000617070726f76616c2e676f0a00200000000000010018005837e57ba56fd201956f7fc5a46fd201ad281ac4096bd201504b05060000000002000200b6000000581000000000","","init","rbcapproval","2017-06-07 15:50:14",""]}}},"uuid":"841a5b60-87ee-4546-8f42-b5b50be9b722","timestamp":{"seconds":1496821815,"nanos":111560248},"nonce":"Xsd2C6FQM33s2eBQ5rvywXwygkeBXGAA","cert":"MIICNDCCAdqgAwIBAgIQMwDiUsyCQtur9oEKZJhCzjAKBggqhkjOPQQDAzAxMQswCQYDVQQGEwJVUzEUMBIGA1UEChMLSHlwZXJsZWRnZXIxDDAKBgNVBAMTA3RjYTAeFw0xNzA2MDcwNjU3MzJaFw0xNzA5MDUwNjU3MzJaMDgxCzAJBgNVBAYTAlVTMRQwEgYDVQQKEwtIeXBlcmxlZGdlcjETMBEGA1UEAwwKamltXGJhbmtfYTBZMBMGByqGSM49AgEGCCqGSM49AwEHA0IABCpmb6yVs13oqQRVYK39iXSJPtdYFGuvDUhjUkNsEiD8qfyOrxDj1AJ/JdPx0uf7FTHnUkbNri/SNBKvJUZzl4OjgcwwgckwDgYDVR0PAQH/BAQDAgeAMAwGA1UdEwEB/wQCMAAwDQYDVR0OBAYEBAECAwQwDwYDVR0jBAgwBoAEAQIDBDBNBgYqAwQFBgcBAf8EQCzhUnKB8iISPm8FyTWqNl0eaLl5KtCy29lZLFtWbwQr4nrV0lYaTdl86UhzeQTWTn+Sx2pEasqaF6DYsQpbviYwOgYGKgMEBQYIBDDIiOx2hJgJuT1QGua7HthPY7pEj76/SPXsXXJ6lBaGfdPfr0TKiR25cDkueF4vPDEwCgYIKoZIzj0EAwMDSAAwRQIhAJ91DVDrSZD4rfKhFmc1Ejk0wKCeEfpiV454PHSE4o1HAiBiLTVcxmDIxH9CTmX33UTc5EjCtLoSk7CageRer1dR3g==","signature":"MEYCIQDulYQaaOyntNCq2vn96JivnRI6sAfu0VBwoJoiEBCvAwIhAILiUhHx5d1BKSe2M2E8CX0G8mGsmfYXHNL0ItuNhbf6"}],"stateHash":"CEr5DwuEsJzFJwQ3ds9bNP39MaZJcu7sVFk8oKUAxjDcdNmcQio8bMNatu1VQql9gX5H9lOUvlfCb71vuFuk3Q==","previousBlockHash":"xswRTbTo9m9OYQSYLWU2FdTBxnbgZM/Z61R5gUrnoaA1wP3jJNLEG0dGSilqUAvZgWu/ruuTE/HfaORFesE2mw==","consensusMetadata":"CA4=","nonHashData":{"localLedgerCommitTimestamp":{"seconds":1496821932,"nanos":830734728},"chaincodeEvents":[{},{}]}}</p>
									<br>
									<h3>区块信息</h3>
									<p>序号：3     时间：2017-08-07 10:48:32<p>
									<p>State Hash：CEr5DwuEsJzFJwQ3ds9bNP39MaZJcu7sVFk8oKUAxjDcdNmcQio8bMNatu1VQql9gX5H9lOUvlfCb71vuFuk3Q==</p>
									<p>Previous Block Hash：xswRTbTo9m9OYQSYLWU2FdTBxnbgZM/Z61R5gUrnoaA1wP3jJNLEG0dGSilqUAvZgWu/ruuTE/HfaORFesE2mw==</p>
									<p>
									
									<h3>交易信息</h3>			
					<div class="panel-body">					
					   <table class="table table-bordered table-striped" id="datatable-default">
						<thead>
							<tr>
						
								<th>执行时间</th>
								<th>chaincode</th>
								<th>args</th>
							</tr>
						</thead>
						  <tbody>						
									<tr>								
									<td>2017-06-07 14:58:32</td>
									<td>883a8a34fef3465ff19dfd0d18038f59f635789455c58e0092ee3f69008ac3f48bb53070d6e6c5f9931303a4b6b427e65f272ccb6486088715c1dfe46b74a6ff</td>
									<td>["copyState","5860fa31bf5e39b4d304d20f49a0a80a2bc0019bcefdaf9acaff78d41a83ae4b0a41853efca100eaceb680f204e208e9f3f08afd245baedb9bde735f6f4bf34a","883a8a34fef3465ff19dfd0d18038f59f635789455c58e0092ee3f6</td>					
									</tr>
						</tbody>
					   </table>
				     </div>							
				   </div>
			</div>
		</div>
	</div>
								
				
			</div>
		</div>
	</div>

	<script src="${path}/assets/vendor/js/jquery.min.js"></script>
	<script src="${path}/assets/vendor/js/jquery-2.1.1.min.js"></script>
	<script src="${path}/assets/vendor/js/jquery-migrate-1.2.1.min.js"></script>
	<script src="${path}/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="${path}/assets/vendor/skycons/js/skycons.js"></script>

	<!-- Plugins JS-->
	<script src="${path}/assets/plugins/bootkit/js/bootkit.js"></script>

	<!-- Theme JS -->
	<script src="${path}/assets/js/jquery.mmenu.min.js"></script>
	<script src="${path}/assets/js/core.min.js"></script>

	<!-- Pages JS -->
	<script src="${path}/assets/js/pages/page-login.js"></script>

	<!-- end: JavaScript-->
</html>