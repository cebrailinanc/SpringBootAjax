<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>

<head>
	<meta charset="UTF-8">
	<title>ajax example</title>
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	</head>
<body>

 <script src="js/homejs.js"></script>

	<div class="container mx-auto">
		<h4>spring boot uygulaması</h4>
		<div class="row align-items-center">
			<div class="col-sm-6">
				<input type="text" class="form-control" id="name" placeholder="adi">
			</div>
		</div>
		<div class="row">
			<div class="col-sm-6">
				<input type="text" class="form-control" id="surname" placeholder="soyadı">
			</div>
		</div>
		<div class="row">
			<div class="col-sm-6">
				<input type="text" class="form-control" id="number" placeholder="öğrenci numarası">
			</div>
		</div>
		
		
		<div class="row" style="padding: 5px;">
			<div class="col-sm-6">
				<button onclick="save()" class="btn btn-primary btn-lg"> Kaydet </button>
			</div>
		</div>


		<div class="row" style="padding: 20px;">
			<div class="col-sm-6">
				<input type="text" class="form-control" id="searchName" placeholder="adi">
			</div>
			<div class="col-sm-6">
				<button onclick="searchName()" class="btn btn-primary btn-lg"> Ara</button>
			</div>
		</div>


		<div class="mx-auto" >
			<div>
				<table id="table" class="table table-striped">
					  <thead>
					    <tr>
					      <th scope="col">#</th>
					      <th scope="col">Adı</th>
					      <th scope="col">Soyadı</th>
					      <th scope="col">Öğrenci Numarası</th>
					    </tr>
					  </thead>
					  <tbody>
					    
					  </tbody>
					</table>
			</div>
		</div>
	</div>

</body>
</html>