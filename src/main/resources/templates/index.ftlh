<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  	<style>
	    body {
	      background-image: url('background.jpg'); /* Scenic background image */
	      background-size: cover;
	      background-position: center;
	      background-repeat: no-repeat;
	      color: #fff; /* Set text color to white for better visibility on background */
	      padding-top: 50px; /* Adding padding to the top to avoid heading overlapping with background */
	    }
	
	    .item {
	      margin-bottom: 20px;
	      background-color: rgba(0, 0, 0, 0.5); /* Add a semi-transparent background color to the items for better readability */
	      padding: 20px;
	      border-radius: 10px;
	    }
	
	    .main-heading {
	      text-align: center;
	      font-size: 36px;
	      margin-bottom: 50px; /* Adding margin to the bottom of the heading */
	    }
	
	    /* Styling for tables */
	    .table {
	      color: rgba(0, 0, 0, 0.5);
	    }
	
	    .table th,
	    .table td {
	      padding: 8px;
	      text-align: center;
	    }
	
	    .table th{
	      background-color: rgba(255, 255, 255, 0.2); /* Semi-transparent background color for table headers */
	    }
	    .table td{
	      background-color: rgba(255, 255, 255, 0.2); /* Semi-transparent background color for table headers */
	    }
	  </style>
  </head>
  
  
  
  <body>
  <div class="container-fluid">
  
   	<h1 class="main-heading">Recommendations</h1>
    <div class="row" id="divitem">
      
      <div class="col-2">
      		<div class="card item" style="height:630px">
      		dd
      		dfd
      		dfd
      		</div>
      </div>
      <div class="col-10">
    	
	    	<div class="card item" id="labels" style="font-size: 15px;color:white;">
				<div class="row" style="">
		        	<div class="col-1" style="width:40px">No</div>
				    <div class="col-1">Symbol</div>
				    <div class="col-1">Call</div>
				    <div class="col-1">Start Date</div>
				    <div class="col-1">Target Date</div>
				    <div class="col-1">SL Price</div>
				    <div class="col-1">Start Price</div>
				    <div class="col-1">Target Price</div>
				    <div class="col-1">Channel</div>
				    <div class="col-1">Status</div>
				    <div class="col-1">Return %</div>
				    <div class="col-1">Completed?</div>
				</div>
	        </div>
	        <div style="height: 530px;overflow: auto;">
				<#list recommendations as recom>
		        <div class="card item" style="position:relative; color:white;">
		        	<div class="card-header" id="heading${recom?counter}"  style="position:absolute;right:0;top:-30px">
				        <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapse${recom?counter}" aria-expanded="true" aria-controls="collapse${recom?counter}">
				          <img src="expand.png" style="width: 40px;"/>
				        </button>
			        </div>
					<div class="row">
			        	<div class="col-1" style="width:40px">${recom?counter}</div>
					    <div class="col-1">${recom.stock.symbol!}</div>
					    <div class="col-1">${recom.callType!}</div>
					    <div class="col-1">${recom.startDate?datetime?string("dd-MM-yyyy")}</div>
					    <div class="col-1">${recom.targetDate?datetime?string("dd-MM-yyyy")}</div>
					    <div class="col-1">${recom.stopLossPrice!}</div>
					    <div class="col-1">${recom.startPrice!}</div>
					    <div class="col-1">${recom.targetPrice!}</div>
					    <div class="col-1" style="width: 140px;">${recom.channel!}</div>
					    <div class="col-1">${recom.status!}</div>
					    <div class="col-1">${recom.returnPercentage!}</div>
					    <div class="col-1">${recom.completed?then('YES', 'NO')}</div>
					</div>
			       <div id="collapse${recom?counter}" class="collapse" aria-labelledby="heading${recom?counter}" data-parent="#divitem">
					      <div class="card-body">
					      		<div class="row">
						            <div class="col-md-4">
						              <table class="table">
						                <tbody>
						                
						                  <tr><td>Stock Name</td><td>${recom.stock.name!}</td></tr>
						                  <tr><td>Symbol</td><td>${recom.stock.symbol!}</td></tr>
						                  <tr><td>Description</td><td>${recom.stock.description!}</td></tr>
						                  <tr><td>Catagory</td><td>Large CAP</td></tr>
						                </tbody>
						              </table>
						            </div>
						            <div class="col-md-8">
						              <table class="table">
						              	<thead><tr><th>Date</th><th>Low</th><th>Open</th><th>Close</th><th>High</th><th>Volume</th></tr></thead>				
						                <tbody>
						                	<#list recom.stock.stockPrices as price>
						                	<tr><td>${price.date!}</td><td>${price.low!}</td><td>${price.open!}</td><td>${price.close!}</td><td>${price.high!}</td><td>${price.volume!}</td></tr>
						                	</#list>
						                </tbody>
						              </table>
						            </div>
						       </div>
					      </div>
					</div>
		         </div>
			     </#list>
			  </div>
		  </div>
	  </div>
		
		
		
		
		
		
		
		
		
		
		
		
		
	</div>
	
	
	
    
   
    
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body>
</html>