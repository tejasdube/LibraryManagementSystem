<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">

    <title>Issue Book</title>
    <style>

.border{
    border-radius: 24px;
    background-color: rgb(163, 199, 190);
   
}
body{
    background-color: #e8dcdc;
}

    </style>
</head>

<body>

    <div class="container mt-5">


        <div class="row justify-content-center">


            <div class="col-md-6 border ">

                <form action="#">
                    <div class="form-group">

                        <label for="boodid">BookId(BID)</label><input type="text" class="form-control" name="bid">

                    </div>

                    <div class="form-group">
                        <label for="uid">UserId(UID)</label><input type="text" class="form-control" name="uid">

                    </div>
                    <div class="form-group">
                        <label for="Period">Period(Days)
                            <input type="text" class="form-control" name="period">
                        </label>



                    </div>
                    <div class="form-group">
                        <label for="issusedate">IssueDate</label> <input type="text" name="Idate" class="form-control">

                    </div>

                    <div class="text-center">

                        <button class="btn btn-primary" type="submit">Issue Book</button>

                    </div>
                    <br>
                </form>



            </div>
        </div>
    </div>


</body>

</html>