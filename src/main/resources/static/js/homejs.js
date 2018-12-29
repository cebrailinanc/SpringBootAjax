function save(){
			//remove all data
			$('#table tbody > tr').remove();
				// PREPARE FORM DATA
		    	var formData = {
		    			name : $("#name").val(),
		    			surname : $("#surname").val(),
		    			number : $("#number").val()
		    	}
		    	
		    	console.log("formData before post: " + formData);
		    	
		    	// DO POST
		    	$.ajax({
					type : "POST",
					contentType : "application/json",
					url : window.location + "save",
					data : JSON.stringify(formData),
					dataType : 'json',
					success : function(result) {
						var content = "";
							for(i=0; i<result.length; i++){
							    '<tr><td>' + 'result ' +  i + '</td></tr>';
							    content += '<tr> <th scope="row">'+(i+1)+'</th> <td>'+result[i].name+'</td> <td>'+result[i].surname+'</td> <td>'+result[i].number+'</td> </tr>';
							}
						$('#table').append(content);
					    
						console.log(result);
					},
					error : function(e) {
						alert("Error!")
						console.log("ERROR: ", e);
					}
				});
		    	
		    	// Reset FormData after Posting
		    	resetData();

		    }
		    
		    function resetData(){
		    	$("#name").val("");
		    	$("#surname").val("");
		    	$("#number").val("");
		    }

		    function searchName(){

				//remove all data
				$('#table tbody > tr').remove();

		    	$.ajax({
		    	    type:'GET',
		    	    url: "/search?name="+$("#searchName").val(),
		    	    dataType: 'json',
		    	    success:function(result){
		    	    	var content = "";
						for(i=0; i<result.length; i++){
						    '<tr><td>' + 'result ' +  i + '</td></tr>';
						    content += '<tr> <th scope="row">'+(i+1)+'</th> <td>'+result[i].name+'</td> <td>'+result[i].surname+'</td> <td>'+result[i].number+'</td> </tr>';
						}
						$('#table').append(content);

		    	        },
		    	    error:function(xhr, status, errorThrown){

		    	        console.log(xhr);
		    	        console.log(status);
		    	        console.log(errorThrown);
		    	    }

		    	});
	
				}
			
