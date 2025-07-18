<?php
include("header.php");
if(isset($_GET['delid']))
{
	$sqldel = "DELETE FROM customer WHERE custid='$_GET[delid]'";
	$qsqldel = mysqli_query($con,$sqldel);
	if(mysqli_affected_rows($con) == 1)
	{
		echo "<script>alert('customer Record deleted successfully..');</script>";
		echo "<script>window.location='viewcustomer.php';</script>";
	}
}
?>


<!-- icons -->
<div class="">
	<div class="container">
		<div class="">
			<div class="icons">
				<section id="new">
					<h3 class="page-header page-header icon-subheading">View Stock Entry Report </h3>							  

					<div class="row">
						<div class="col-md-12 col-sm-12">
							<table id="datatable" class="table table-striped table-bordered ">
								<thead>
									<tr>
										<th>Bill No.</th>
										<th>Purchase Date</th>					
										<th>Customer</th>
										<th>City</th>
										<th style='text-align: right;'>Total Amount</th>
										<th>No. of Products</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
								<?php
								$sqlbilling= "SELECT * FROM `billing` LEFT JOIN customer ON customer.custid=billing.custid LEFT JOIN city ON city.city_id=billing.city_id LEFT JOIN staff ON staff.staffid=billing.staffid AND billing.entry_type='Purchase'";
								$qsqlbilling= mysqli_query($con,$sqlbilling);
								while($rsbilling= mysqli_fetch_array($qsqlbilling))
								{
									$sqlpurchqty = "SELECT * FROM purchase WHERE bilid='$rsbilling[0]'";
									$qsqlpurchqty  = mysqli_query($con,$sqlpurchqty);
									echo "<tr>
										<td>$rsbilling[bill_no]</td>
										<td>" . date("d-m-Y",strtotime($rsbilling['purchdate'])) . "</td>
										<td>$rsbilling[custname] - $rsbilling[mob_no]</td>
										<td>" . $rsbilling['city'] . "</td>
										<td style='text-align: right;'>₹$rsbilling[total_amt]</td>
										<td>" . mysqli_num_rows($qsqlpurchqty) . "</td>
										<td> 
										<a href='stockentryreceipt.php?bilid=$rsbilling[0]' class='btn btn-danger' style='color:white;'>View Receipt</a>	
										</tr>";
								}
								?>
								</tbody>
							</table>
							<button onclick="printTable()" class="btn btn-primary">Click to Print Records</button>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>	
</div>
<!-- //icons -->

<?php
include("footer.php");
?>
<script>
function confirmdelete()
{
	if(confirm("Are you sure?") == true)
	{
		return true;
	}
	else
	{
		return false;
	}
}

function printTable() {
    var printContent = document.getElementById("datatable").cloneNode(true);
    var headerCells = printContent.getElementsByTagName('th');
    for (var i = 0; i < headerCells.length; i++) {
        if (headerCells[i].textContent.trim() === 'Action') {
            headerCells[i].style.display = 'none'; // Hide the corresponding header cell
        }
    }
    var rows = printContent.getElementsByTagName('tr');
    for (var i = 0; i < rows.length; i++) {
        var cells = rows[i].getElementsByTagName('td');
        for (var j = 0; j < cells.length; j++) {
            if (cells[j].textContent.trim() === 'Action') {
                cells[j].style.display = 'none'; // Hide the corresponding cell in each row
            }
        }
    }
    var originalContents = document.body.innerHTML;
    document.body.innerHTML = printContent.outerHTML;
    window.print();
    document.body.innerHTML = originalContents;
}
</script>
