<?php
include("header.php");
if(isset($_GET['delid']))
{
    $sqldel = "DELETE FROM customer WHERE custid='$_GET[delid]'";
    $qsqldel = mysqli_query($con,$sqldel);
    if(mysqli_affected_rows($con) == 1)
    {
        echo "<script>alert('Customer record deleted successfully..');</script>";
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
                    <h3 class="page-header page-header icon-subheading">View customer </h3>

                    <div class="row">
                        <div class="col-md-12 col-sm-12">
                            <table id="datatable" class="table table-striped table-bordered ">
                                <thead>
                                    <tr>
                                        <th>Customer Name</th>
                                        <th>Email</th>
                                        <th>Mobile Number</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <?php
                                $sqlcustomer= "SELECT * FROM customer WHERE cust_type='Customer'";
                                $qsqlcustomer= mysqli_query($con,$sqlcustomer);
                                while($rscustomer= mysqli_fetch_array($qsqlcustomer))
                                {
                                    echo "<tr>
                                        <td>$rscustomer[custname]</td>
                                        <td>$rscustomer[email]</td>
                                        <td>$rscustomer[mob_no]</td>
                                        <td>$rscustomer[status]</td>
                                        <td>
                                        <a href='viewcustomer.php?delid=$rscustomer[0]' class='btn btn-danger' style='color:green;' onclick='return confirmdelete()'>Delete</a>    
                                        </tr>";
                                }
                                ?>
                                </tbody>
                            </table>
                            <!-- Print button -->
                            <button id="printButton" class="btn btn-primary">Click to Print Records</button>
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


document.getElementById("printButton").addEventListener("click", function() {
    var table = document.getElementById("datatable");
    // Remove the last column (Action) from the table before printing
    var actionColumnIndex = table.rows[0].cells.length - 1;
    for (var i = 0; i < table.rows.length; i++) {
        table.rows[i].deleteCell(actionColumnIndex);
    }
    var printWindow = window.open('', '', 'height=400,width=800');
    printWindow.document.write('<html><head><title>Print</title></head><body>');
    printWindow.document.write('<style>table {border-collapse: collapse;} table, th, td {border: 1px solid black; padding: 8px;}</style>');
    printWindow.document.write('<h2>Customer Records</h2>');
    printWindow.document.write(table.outerHTML);
    printWindow.document.write('</body></html>');
    printWindow.document.close();
    printWindow.print();
});
</script>
