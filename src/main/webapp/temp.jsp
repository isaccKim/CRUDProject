<html><head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>free Member</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    <link rel="stylesheet" type="text/css" href="/p3_21900565_1/assets/css/postCss.css">
    <style>
        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
        #list td, #list th {
            border: 1px solid #ddd;

            text-align:center;
        }
        #list tr:nth-child(even){background-color: #f2f2f2;}
        #list tr:hover {background-color: #ddd;}
        #list th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            color: darkslateblue;
        }
    </style>
    <script>
        function delete_ok(id){
            var a = confirm("정말로 삭제하겠습니까?");
            if(a) location.href='delete_ok.jsp?id=' + id;
        }
    </script>
</head>
<body><header class="p-3 bg-dark text-white">
    <div class="container">
        <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
            <a href="list.jsp" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none fw-bold">
                Isacc Kim
            </a>

            <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                <li><a href="#" class="nav-link px-2 text-secondary"></a></li>
                <li><a href="#" class="nav-link px-2 text-white"></a></li>
                <li><a href="#" class="nav-link px-2 text-white"></a></li>
                <li><a href="#" class="nav-link px-2 text-white"></a></li>
                <li><a href="#" class="nav-link px-2 text-white"></a></li>
            </ul>

            <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3">
                <input type="search" class="form-control form-control-dark" placeholder="Search..." aria-label="Search">
            </form>

            <div class="text-end">
                <button type="button" class="btn btn-outline-light me-2">Login</button>
                <button type="button" class="btn btn-warning">Sign-up</button>
            </div>
        </div>
    </div>
</header>

<div class="text-center my-3"><h3>Member List</h3></div>
<div class="d-flex justify-content-end mb-3">
    <a href="addform.jsp" class="btn btn-primary" role="button" aria-pressed="true" style="margin-right: 30px">Add </a>
</div>


<table class="table">
    <tbody>
    <tr class="align-middle">
        <th>NO</th>
        <th>Id</th>
        <th>Photo</th>
        <th>Username</th>
        <th>Email</th>
        <th>Regdate</th>
        <th>Detail</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>

    <tr>
        <td>2</td>
        <td>seokwon123</td>
        <td><img src="/p3_21900107_1/upload/app1.png" class="photo" width="30" height="30"></td>

        <td>슈슈슉</td>
        <td>ss@naver.com</td>
        <td>2022-11-18</td>
        <td>집보내줭</td>


        <td><a href="editform.jsp?id=12"><i class="bi bi-pencil-square imo"></i></a></td>
        <td><a href="javascript:delete_ok('12')"><i class="bi bi-trash imo"></i></a></td>
    </tr>

    <tr>
        <td>1</td>
        <td>kimsw0683</td>
        <td><img src="/p3_21900107_1/upload/app.png" class="photo" width="30" height="30"></td>

        <td>isaccKim</td>
        <td>kimsw0683@handong.ac.kr</td>
        <td>2022-11-18</td>
        <td>나 집</td>


        <td><a href="editform.jsp?id=11"><i class="bi bi-pencil-square imo"></i></a></td>
        <td><a href="javascript:delete_ok('11')"><i class="bi bi-trash imo"></i></a></td>
    </tr>

    </tbody></table>

</body></html>