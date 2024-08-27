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
            	@if($orders)
                <div class="col-md-9">
                	<p>Order Detail</p>
                    <table class="table">
					  <tbody>
					  	<tr>
					      <th scope="row">VIN</th>
					      <td>{{$data['vin']}}</td>
					    </tr>
					    <tr>
					      <th scope="row">Brand</th>
					      <td>{{$orders->brand_name}}</td>
					    </tr>
					    <tr>
					      <th scope="row">Model</th>
					      <td>{{$orders->model_name}}</td>
					    </tr>
					    <tr>
					      <th scope="row">Year</th>
					      <td>{{$orders->year}}</td>
					    </tr>
					    <tr>
					      <th scope="row">Customer Name</th>
					      <td>{{$orders->customer_name}}</td>
					    </tr>
					    <tr>
					      <th scope="row">Customer Address</th>
					      <td>{{$orders->address}}</td>
					    </tr>
					  </tbody>
					</table>
                </div>
                @endif
                @if($service)
                <div class="col-md-9">
                	<p>Service Detail</p>
                    <table class="table">
					  <tbody>
					  	<tr>
					      <th scope="row">VIN</th>
					      <td>{{$service->vin}}</td>
					    </tr>
					    <tr>
					      <th scope="row">Mechanic Name</th>
					      <td>{{$service->mechanic_name}}</td>
					    </tr>
					    <tr>
					      <th scope="row">Type Of Service</th>
					      <td>{{$service->type_of_service}}</td>
					    </tr>
					    <tr>
					      <th scope="row">Date of Service</th>
					      <td>{{date('d F, Y',strtotime($service->date_of_service))}}</td>
					    </tr>
					    <tr>
					      <th scope="row">Customer Name</th>
					      <td>{{$service->customer_name}}</td>
					    </tr>
					  </tbody>
					</table>
                </div>
                @endif
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