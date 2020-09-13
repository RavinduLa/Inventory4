<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
        integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link rel="stylesheet" href="css/sidenav.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
        integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
        crossorigin="anonymous"></script>
</head>
<body>

<div class="col-2">
        <!--col with side nav-->
        <div class="sidenav">


            <center>

                <!--<button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#countableActions" aria-expanded="false" aria-controls="collapseExample">
                  Countable Items
              </button> -->

                <div class="navtopic">
                    <a data-toggle="collapse" href="#countableActions" role="button" aria-expanded="false"
                        aria-controls="collapseExample">
                        Countable Items
                        <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-arrow-down-short"
                            fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd"
                                d="M8 4a.5.5 0 0 1 .5.5v5.793l2.146-2.147a.5.5 0 0 1 .708.708l-3 3a.5.5 0 0 1-.708 0l-3-3a.5.5 0 1 1 .708-.708L7.5 10.293V4.5A.5.5 0 0 1 8 4z" />
                        </svg>
                    </a>

                </div>



                <div class="collapse" id="countableActions">

                    <form action="/getCountableItem">

                        <div class="form-group mx-sm-3 mb-2">
                            <input class="form-control" type="text" placeholder="Enter countable item Id "
                                name="itemId" aria-label="Search">
                        </div>

                        <button class="btn btn-primary mb-2" type="submit">Search</button>

                    </form>


                    <a href="viewAllCountableItems">View Countable Items </a>
                    <!--  <a href="addCountableItem.jsp">Add Countable Items</a> -->
                    <a href="viewCountableLowStock">View Low stock for countable items</a>
					<a href="countableItemsAdvanced">Advanced functions on countable items</a>
                </div>



                <div class="navtopic">
                    <a data-toggle="collapse" href="#uncountableActions" role="button" aria-expanded="false"
                        aria-controls="collapseExample">
                        Uncountable Items
                        <svg width="2em" height="1em" viewBox="0 0 16 16" class="bi bi-arrow-down-short"
                            fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd"
                                d="M8 4a.5.5 0 0 1 .5.5v5.793l2.146-2.147a.5.5 0 0 1 .708.708l-3 3a.5.5 0 0 1-.708 0l-3-3a.5.5 0 1 1 .708-.708L7.5 10.293V4.5A.5.5 0 0 1 8 4z" />
                        </svg>
                    </a>
                </div>



                <div class="collapse" id="uncountableActions">

                    <form action="/getUncountableItem">

                        <div class="form-group mx-sm-3 mb-2">
                            <input class="form-control" type="text" placeholder="Enter uncountable item Id "
                                name="itemId" aria-label="Search">
                        </div>

                        <button class="btn btn-primary mb-2" type="submit">Search</button>

                    </form>


                    <a href="viewAllUncountableItems">View Uncountable Items </a>
                    <!--  <a href="addUncountableItems.jsp">Add Uncountable items</a>  -->
				<a href="viewUncountableLowStock">View Low stock for uncountable items</a> 
				<a href="uncountableItemsAdvanced">Advanced functions on uncountable items</a>
                </div>

            </center>
        </div>
        <!--End of side nav-->
    </div>
    <!--End of col with side nav-->

</body>
</html>