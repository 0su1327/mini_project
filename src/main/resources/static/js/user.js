let index = {
		init: function(){
			$("#btn-save").on("click", ()=>{ // function(){} , ()=>{} this를 바인딩하기 위해서!!
				this.save();
			});
		    $("#btn-fire").on("click", ()=>{ // function(){} , ()=>{} this를 바인딩하기 위해서!!
            this.fire();
            });
		    $("#btn-login").on("click", ()=>{ // function(){} , ()=>{} this를 바인딩하기 위해서!!
            this.login();
         });
		},

        fire: function(){
        		let data = {
        				firestationname: $("#firestationname").val(),
        				firestationpassword: $("#firestationpassword").val()
        		};

        		$.ajax({
        			type: "POST",
        			url: "/fire/api/admin",
        			data: JSON.stringify(data), // http body데이터
        			contentType: "application/json; charset=utf-8",// body데이터가 어떤 타입인지(MIME)
        			dataType: "json" // 요청을 서버로해서 응답이 왔을 때 기본적으로 모든 것이 문자열 (생긴게 json이라면) => javascript오브젝트로 변경
        		}).done(function(resp){
        		    location.href = "/fire";
        			alert("소방서 회원가입이 완료되었습니다.");
        			//console.log(resp);
        			}).fail(function(error){
        				alert(JSON.stringify(error));
        			});

        },


		save: function(){
			//alert('user의 save함수 호출됨');
			let data = {
					apartname: $("#apartname").val(),
					building: $("#building").val(),
					unit: $("#unit").val(),
					phonenumber: $("#phonenumber").val(),
					nearest_station: $("#nearest_station").val()
			};

			//console.log(data);

			// ajax호출시 default가 비동기 호출
			// ajax 통신을 이용해서 3개의 데이터를 json으로 변경하여 insert 요청!!
			// ajax가 통신을 성공하고 서버가 json을 리턴해주면 자동으로 자바 오브젝트로 변환해주네요.
			$.ajax({
				type: "POST",
				url: "/fire/api/user",
				data: JSON.stringify(data), // http body데이터
				contentType: "application/json; charset=utf-8",// body데이터가 어떤 타입인지(MIME)
				dataType: "json" // 요청을 서버로해서 응답이 왔을 때 기본적으로 모든 것이 문자열 (생긴게 json이라면) => javascript오브젝트로 변경
			}).done(function(resp){
				alert("회원가입이 완료되었습니다.");
				//console.log(resp);
				location.href = "/fire";
			}).fail(function(error){
				alert(JSON.stringify(error));
			});

		},



		login: function() {
        	//alert('user의 save함수 호출됨');
        	let login = {
        			name: $("#name").val(),
         			password: $("#password").val()
        	};
        $.ajax({
        		type: "POST",
        		url: "/fire/api/admin/login",
        		data: JSON.stringify(login), // http body데이터
        		contentType: "application/json; charset=utf-8",// body데이터가 어떤 타입인지(MIME)
        		dataType: "json" // 요청을 서버로해서 응답이 왔을 때 기본적으로 모든 것이 문자열 (생긴게 json이라면) => javascript오브젝트로 변경
        	}).done(function(resp){
        		alert("로그인이 완료되었습니다.");
        		console.log(resp);
        		location.href = "/fire";
        	}).fail(function(error){
        		alert(JSON.stringify(error));
        	});
        }
}
index.init();