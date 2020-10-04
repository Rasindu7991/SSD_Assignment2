<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>Index Page</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<button class="btn" onclick=" relocate_home()"><i class="fa fa-home"></i></button>
<h2>Files</h2>

<div class="card-deck">

    <div class="card mb-3" style="width: 5rem;">
        <img class="card-img-top" src="https://www.daimto.com/wp-content/uploads/2013/11/unnamed.png" alt="Card image cap">
        <form method="post" action="hello">
            <div class="card-body">
                <p class="card-text">${file1name}</p>
                <input type="hidden" id="file1name" name="file1Name" value=${file1name}>
                <input type="hidden" id="file1id" name="file1ID" value=${file1Id}>
                <input type="hidden" id="file1type" name="file1Type" value=${file1Type}>
            </div>
            <button type="submit" class="btn btn-primary" name="button1">Download</button>
        </form>
    </div>

    <div class="card mb-3" style="width: 18rem;">
        <img class="card-img-top" src="https://www.daimto.com/wp-content/uploads/2013/11/unnamed.png" alt="Card image cap">
        <form method="post" action="hello">
            <div class="card-body">
                <p class="card-text">${file2name}</p>
                <input type="hidden" id="file2name" name="file2Name" value=${file2name}>
                <input type="hidden" id="file2id" name="file2ID" value=${file2Id}>
            </div>
            <button type="submit" class="btn btn-primary" name="button2">Download</button>
        </form>
    </div>

    <div class="card bg-light mb-3" style="width: 18rem;">
        <img class="card-img-top" src="https://www.daimto.com/wp-content/uploads/2013/11/unnamed.png" alt="Card image cap">
        <div class="card-body">
            <p class="card-text">${file3name}</p>
        </div>
        <button type="submit" class="btn btn-primary" name="button3">Download</button>
    </div>
    <div class="card bg-light mb-3" style="width: 18rem;">
        <img class="card-img-top" src="https://www.daimto.com/wp-content/uploads/2013/11/unnamed.png" alt="Card image cap">
        <div class="card-body">
            <p class="card-text">${file4name}</p>
        </div>
        <button type="submit" class="btn btn-primary" name="button4">Download</button>
    </div>
    <div class="card bg-light mb-3" style="width: 18rem;">
        <img class="card-img-top" src="https://www.daimto.com/wp-content/uploads/2013/11/unnamed.png" alt="Card image cap">
        <div class="card-body">
            <p class="card-text">${file5name}</p>
        </div>
        <button type="submit" class="btn btn-primary" name="button5">Download</button>
    </div>
    <div class="card bg-light mb-3" style="width: 18rem;">
        <img class="card-img-top" src="https://www.daimto.com/wp-content/uploads/2013/11/unnamed.png" alt="Card image cap">
        <div class="card-body">
            <p class="card-text">${file6name}</p>
        </div>
        <button type="submit" class="btn btn-primary" name="button6">Download</button>
    </div>
    <div class="card bg-light mb-3" style="width: 18rem;">
        <img class="card-img-top" src="https://www.daimto.com/wp-content/uploads/2013/11/unnamed.png" alt="Card image cap">
        <div class="card-body">
            <p class="card-text">${file7name}</p>
        </div>
        <button type="submit" class="btn btn-primary" name="button7">Download</button>
    </div>
    <div class="card bg-light mb-3" style="width: 18rem;">
        <img class="card-img-top" src="https://www.daimto.com/wp-content/uploads/2013/11/unnamed.png" alt="Card image cap">
        <div class="card-body">
            <p class="card-text">${file8name}</p>
        </div>
        <button type="submit" class="btn btn-primary" name="button8">Download</button>
    </div>
    <div class="card bg-light mb-3" style="width: 18rem;">
        <img class="card-img-top" src="https://www.daimto.com/wp-content/uploads/2013/11/unnamed.png" alt="Card image cap">
        <div class="card-body">
            <p class="card-text">${file9name}</p>
        </div>
        <button type="submit" class="btn btn-primary" name="button9">Download</button>
    </div>
    <div class="card bg-light mb-3" style="width: 18rem;">
        <img class="card-img-top" src="https://www.daimto.com/wp-content/uploads/2013/11/unnamed.png" alt="Card image cap">
        <div class="card-body">
            <p class="card-text">${file10name}</p>
        </div>
        <button type="submit" class="btn btn-primary" name="button10">Download</button>
    </div>
</div>
<script>
    function relocate_home()
    {
        location.href = "index.html";
    }
</script>
</body>
</html>