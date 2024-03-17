<!DOCTYPE>
<html>

<head>
	<style>
	    table,
	    th,
	    td {
	        border: 1px solid black;
	    }
	</style>
</head>

    

    <body>
        <h1>Recommendations</h1>
        <table style="width:100%">
            <tr>
                <th>Id</th>
                <th>Stock Id</th>
                <th>Buy/Sell</th>
                <th>Start Date</th>
                <th>Start Price</th>
                 <th>Target Date</th>
                <th>Target Price</th>
                <th>Stop Loss Price</th>
               <th>Channel</th>
                <th>Profit/Loss</th>
                <th>Return%</th>
                <th>Completed</th>
            </tr>
            <#list recommendations as recom>

                <tr>
                    <td>${recom.id!}</td>
                    <td>${recom.stockId!}</td>
                    <td>${recom.callType!}</td>
                    <td>${recom.startDate?datetime?string("dd-MM-yyyy")}</td>
                    <td>${recom.startPrice!}</td>
                    <td>${recom.targetDate?datetime?string("dd-MM-yyyy")}</td>
                    <td>${recom.targetPrice!}</td>
                    <td>${recom.stopLossPrice!}</td>
                    <td>${recom.channel!}</td>
                    <td>${recom.status!}</td>
                    <td>${recom.returnPercentage!}</td>
                    <td>${recom.completed?then('YES', 'NO')}</td>
                </tr>
            </#list>
        </table><br>
        
        
        <h1>Stocks</h1>
        <table style="width:100%">
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Symbol</th>
                <th>Description</th>
                <th>Stock Prices</th>                 
            </tr>
            <#list stocks as stocks>

                <tr>
                    <td>${stocks.id!}</td>
                    <td>${stocks.name!}</td>
                    <td>${stocks.symbol!}</td>
                    <td>${stocks.description!}</td>
                    <td>
                     <table>
                     	<tr>
					    <th>Id</th>
					    <th>Date</th>
					    <th>Open</th>
					    <th>High</th>
					    <th>Low</th>
					    <th>Close</th>
					    <th>Volume</th>
					</tr>
					<#list stockPrice as stockPrice>					
					<tr>
					    <td>${stockPrice.id!}</td>
					    <td>${stockPrice.date!}</td>
					    <td>${stockPrice.open!}</td>					
					    <td>${stockPrice.high!}</td>
					    <td>${stockPrice.low!}</td>
					    <td>${stockPrice.close!}</td>
					    <td>${stockPrice.volume!}</td>				
					
					</tr>
					</#list>
                     </table>
                    </td>
                   
                </tr>
            </#list>
        </table><br>
        
    </body>

</html>