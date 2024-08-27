<!DOCTYPE html>
<html class="h-100">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, shrink-to-fit=no, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="csrf-token" content="{{ csrf_token() }}">
   	<title>Dashboard - IFACC</title>
     <link rel="icon" href="{{ url('public/uploads')}}/{{@$settings->icon}}" type="image/x-icon" />
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&family=Roboto:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <link href="{{ URL::asset('public/assets/backend/css/style.css')}}" rel="stylesheet">
    <script >window.Laravel = <?php echo json_encode(['csrfToken' => csrf_token(),]); ?> </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</head>
<body class="h-100">
    <div class="authincation h-100">
        <div class="container h-100">
            <div class="row justify-content-center h-100 align-items-center">
                <div class="col-md-6">
                    <div class="authincation-content">
                        <div class="row no-gutters">
                            <div class="col-xl-12">
                                <div class="auth-form">
									<div class="text-center mb-3">
										<img src="{{ url('public/icon-white.png')}}" height="50px" >  
									</div>
                                    <h4 class="text-center mb-4 text-white">Car Report</h4>
                                    <form class="user frm-single">
                                        <div class="form-group">
                                            <input type="text" name="vin" value="" autocomplete="off" class="form-control" placeholder="Type Vin Id" required>
                                        </div>
										<div class="form-group">
											<button type="submit" class="btn btn-primary btn-block" name="button">Search</button>
										</div>
									</form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
   <script src="{{ URL::asset('public/assets/backend/vendor/global/global.min.js')}}"></script>
    <script src="{{ URL::asset('public/assets/backend/vendor/bootstrap-select/dist/js/bootstrap-select.min.js')}}"></script>
    <script src="{{ URL::asset('public/assets/backend/js/custom.min.js')}}"></script>
    <script src="{{ URL::asset('public/assets/backend/js/deznav-init.js')}}"></script>
	<script>
		$('.frm-single').on('submit',function (e) {
			e.preventDefault();
			var url = "{{url('find/')}}";
			$.ajax({
				url:"{{route('find_details')}}",
				data:{vin:$('input[name="vin"]').val()},
				cache:false,
				success:function(response){
					var ress = JSON.parse(response);
					if (ress.success) {
						window.location.replace(url+'/'+ress.data);
					}else{
						alert("The vin you entered is not match with record. Please recheck.");
					}
				}
			})
		});
	</script>
</body>
</html>