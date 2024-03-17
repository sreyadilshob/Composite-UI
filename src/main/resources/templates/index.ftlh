<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
  	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
  	
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
  <div class="container">
  
   <h1 class="main-heading">Recommendations</h1>
    
		<#list recommendations as recom>
		<div class="row" id="divitem">
	      <div class="col-md-12">
	      
	        <div class="item" id="heading${recom?counter}">
		        <button class="btn btn-link" data-toggle="collapse" data-target='#collapse${recom?counter}' aria-expanded="true" aria-controls="collapse">
		          ${recom.stock.name!} - ${recom.stock.symbol!}
		        </button>

	        	<div class="col-md-12">
			        <table width="100%">
				        <tr>
				        	<td><h4>${recom?counter}</h4></td>
						    <td><h4>${recom.stock.symbol!}</h4></td>
						    <td><h4>${recom.callType!}</h4></td>
						    <td><h4>${recom.startDate?datetime?string("dd-MM-yyyy")}</h4></td>
						    <td><h4>${recom.startPrice!}</h4></td>
						    <td><h4>${recom.targetDate?datetime?string("dd-MM-yyyy")}</h4></td>
						    <td><h4>${recom.targetPrice!}</h4></td>
						    <td><h4>${recom.stopLossPrice!}</h4></td>
						    <td><h4>${recom.channel!}</h4></td>
						    <td><h4>${recom.status!}</h4></td>
						    <td><h4>${recom.returnPercentage!}</h4></td>
						    <td><h4>${recom.completed?then('YES', 'NO')}</h4></td>
				        <tr>
			        </table>
	        	</div>
	          
	          <div id='collapse${recom?counter}' class="collapse" aria-labelledby='heading${recom?counter}' data-parent="#divitem">
			      <div class="card-body">
			      		<div class="row">
				            <div class="col-md-4">
				              <table class="table">
				                <tbody>
				                  <tr>
				                    <td>Revenue</td>
				                    <td>3424234</td>
				                  </tr>
				                  <tr>
				                    <td>Profit</td>
				                    <td>334343343</td>
				                  </tr>
				                  <tr>
				                    <td>Profit</td>
				                    <td>334343343</td>
				                  </tr>
				                  <tr>
				                    <td>Profit</td>
				                    <td>334343343</td>
				                  </tr>
				                </tbody>
				              </table>
				            </div>
				            <div class="col-md-8">
				              <table class="table">
				              	<thead>
				                  <tr>
				                    <th>Date</th>
				                    <th>Open</th>
				                    <th>High</th>
				                    <th>Low</th>
				                    <th>Close</th>
				                    <th>Volume</th>
				                  </tr>
				                </thead>				
				                <tbody>
				                  <tr>
				                    <td>10-03-2024</td>
				                    <td>1221</td>
				                    <td>1221</td>
				                    <td>1221</td>
				                    <td>1221</td>
				                    <td>343252</td>
				                  </tr>
				                  <tr>
				                    <td>10-03-2024</td>
				                    <td>1221</td>
				                    <td>1221</td>
				                    <td>1221</td>
				                    <td>1221</td>
				                    <td>343252</td>
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
		</#list>
		
		
		
		
		
		
		
		
		
		
		
		
		
	</div>
	
	
	
    
   
    
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body>
</html>