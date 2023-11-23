<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko">
<head>
    <title>기본 캐리터 게시판</title>
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet"/>
    <link href="/resources/css/styles.css" rel="stylesheet"/>
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-latest.min.js"></script>
    <script src="/resources/js/jquery-3.3.1.min.js"></script>
</head>
<body class="sb-nav-fixed">
<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
    <!-- Navbar Brand-->
    <a class="navbar-brand ps-3" href="index.html">Start Bootstrap</a>
    <!-- Sidebar Toggle-->
    <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i
            class="fas fa-bars"></i></button>
    <!-- Navbar Search-->
    <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
        <div class="input-group">
            <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..."
                   aria-describedby="btnNavbarSearch"/>
            <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>
        </div>
    </form>
    <!-- Navbar-->
    <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown"
               aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="#!">Settings</a></li>
                <li><a class="dropdown-item" href="#!">Activity Log</a></li>
                <li>
                    <hr class="dropdown-divider"/>
                </li>
                <li><a class="dropdown-item" href="#!">Logout</a></li>
            </ul>
        </li>
    </ul>
</nav>
<div id="layoutSidenav">
    <div id="layoutSidenav_nav">
        <%@include file="/WEB-INF/views/common/Header.jsp" %>
    </div>
    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid px-4">
                <h1 class="mt-4">기본 게시판</h1>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                    <li class="breadcrumb-item active">Basic character</li>
                </ol>
                <div class="card mb-4">
                    <div class="card-body">
                        DataTables is a third party plugin that is used to generate the demo table below. For more
                        information about DataTables, please visit the
                        <a target="_blank" href="https://datatables.net/">official DataTables documentation</a>
                        .
                    </div>
                </div>
                <div class="card mb-4">
                    <div class="card-header">
                        <i class="fas fa-table me-1"></i>
                        DataTable Example
                    </div>
                    <div class="card-body">
                        <table id="datatablesSimple">
                            <thead>
                            <tr>
                                <th>Name</th>
                                <th>content</th>
                                <th>파일경로</th>
                                <th>public</th>
                                <th>personality</th>
                                <th>등록자</th>
                                <th>등록일시</th>
                                <th>수정자</th>
                                <th>수정일시</th>
                            </tr>
                            </thead>
                            <tfoot>
                            <tr>
                                <th>Name</th>
                                <th>content</th>
                                <th>파일경로</th>
                                <th>public</th>
                                <th>personality</th>
                                <th>등록자</th>
                                <th>등록일시</th>
                                <th>수정자</th>
                                <th>수정일시</th>
                            </tr>
                            </tfoot>
                            <tbody>
                            <tr>
                                <td>Tiger Nixon</td>
                                <td>System Architect</td>
                                <td>Edinburgh</td>
                                <td>61</td>
                                <td>2011/04/25</td>
                                <td>2011/04/25</td>
                                <td>$320,800</td>
                                <td>$320,800</td>
                                <td>$320,800</td>
                            </tr>
                            <tr>
                                <td>Garrett Winters</td>
                                <td>Accountant</td>
                                <td>Tokyo</td>
                                <td>63</td>
                                <td>2011/07/25</td>
                                <td>2011/07/25</td>
                                <td>$170,750</td>
                                <td>$170,750</td>
                                <td>$170,750</td>
                            </tr>
                            <tr>
                                <td>Ashton Cox</td>
                                <td>Junior Technical Author</td>
                                <td>San Francisco</td>
                                <td>66</td>
                                <td>2009/01/12</td>
                                <td>2009/01/12</td>
                                <td>$86,000</td>
                                <td>$86,000</td>
                                <td>$86,000</td>
                            </tr>
                            <tr>
                                <td>Cedric Kelly</td>
                                <td>Senior Javascript Developer</td>
                                <td>Edinburgh</td>
                                <td>22</td>
                                <td>2012/03/29</td>
                                <td>2012/03/29</td>
                                <td>$433,060</td>
                                <td>$433,060</td>
                                <td>$433,060</td>
                            </tr>
                            <tr>
                                <td>Quinn Flynn</td>
                                <td>Support Lead</td>
                                <td>Edinburgh</td>
                                <td>22</td>
                                <td>2013/03/03</td>
                                <td>2013/03/03</td>
                                <td>$342,000</td>
                                <td>$342,000</td>
                                <td>$342,000</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <button class="btn btn-primary btn-write" type="button" onclick="basicWrite()">등록</button>
        </main>
        <%@include file="/WEB-INF/views/common/Footer.jsp" %>
    </div>
</div>

<div class="modal" id="writeBasicChar">
    <%--    <div class="container">--%>
    <div class="row justify-content-center">
        <div class="col-lg-7">
            <div class="card shadow-lg border-0 rounded-lg mt-5">
                <div class="card-header"><h3 class="text-center font-weight-light my-4">캐릭터등록</h3>
                </div>
                <div class="card-body">
                    <form id="frm" method="post" action="upsetBasic.do">
                        <input type="hidden" id="basicId" name="basicId"/>
                        <input type="hidden" id="basicNo" name="basicNo"/>
                        <div class="row mb-3">
                            <div class="col-md-6" style="width: 30%;">
                                <div class="form-floating mb-3 mb-md-0" style="width: 105%;">
                                    <input class="form-control" id="basicNm" type="text" name="basicNm"
                                           placeholder="캐릭터 이름을 입력하세요."/>
                                    <label for="basicNm">이름</label>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-floating" style="width: 143%;">
                                    <input class="form-control" id="basicCtnt" type="text" name="basicCtnt"
                                           placeholder="캐릭터 설명을 입력하세요"/>
                                    <label for="basicCtnt">내용</label>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <label class="img-label" style="margin: 10px;">이미지영역</label>
                            <input class="input input_img" type="button" value="선택취소" onclick="imgCancel()"/>
                            <div class="form-floating mb-3"
                                 style="text-align: center; background-color: lightgrey;">
                                <img class="basic-img"/>
                            </div>
                        </div>

                        <div class="form-floating mb-3">
                            <input class="form-control" style="padding-left: 30px; padding-top: 17px;" id="inputFile"
                                   type="file" onclick="imgFile()"/>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <div class="form-floating mb-3 mb-md-0" style="padding-top: 7%;">
                                    <tr>
                                        <td>
                                            <input type="checkbox" name="box" class="form-check-input" value="00"
                                                   onclick="fnCheckBox(this)" checked>상관없음

                                        </td>
                                        <td>
                                            <input type="checkbox" name="box" class="form-check-input" value="01"
                                                   onclick="fnCheckBox(this)">공개

                                        </td>
                                        <td>
                                            <input type="checkbox" name="box" class="form-check-input" value="02"
                                                   onclick="fnCheckBox(this)">비공개
                                        </td>
                                    </tr>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-floating mb-3 mb-md-0">
                                    <select class="form-select" style="padding-top: 10px">
                                        <option value="00">없음</option>
                                        <option value="01">열정캐릭터</option>
                                        <option value="02">감성캐릭터</option>
                                        <option value="03">무정형캐릭터</option>
                                        <option value="04">무관심한캐릭터</option>
                                        <option value="05">혈액(혈기왕성)캐릭터</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="mt-4 mb-0">
                            <button class="btn btn-primary btn-write" type="button" onclick="onClose()">취소</button>
                            <button class="btn btn-primary" type="button">수정</button>
                            <button class="btn btn-primary" type="submit" onclick="basicSubmit()">저장</button>
                        </div>

                    </form>
                </div>
                <div class="card-footer text-center py-3">
                    <div class="small"><a href="login.html">Have an account? Go to login</a></div>
                </div>
            </div>
        </div>
    </div>
    <%--    </div>--%>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        crossorigin="anonymous"></script>
<script src="/resources/js/scripts.js"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
        crossorigin="anonymous"></script>
<script src="/resources/js/datatables-simple-demo.js"></script>

<script>

    let check = "00"
    let filePath = "00"

    function basicWrite() {
        $('#writeBasicChar').show()
    }

    function fnCheckBox(element) {
        document.getElementsByName("box").forEach((cb) => {
            cb.checked = false
        })
        element.checked = true
        check = $("input[name='box']:checked").val();
    }

    function onClose() {
        $('#writeBasicChar').hide()
    }

    function imgFile() {
        const file = document.querySelector("#inputFile")
        const preview = document.querySelector(".basic-img")

        // 이미지 url api 생성방법
        file.addEventListener("change", () => {
            const imgSrc = URL.createObjectURL(file.files[0])

            preview.src = imgSrc
            filePath = imgSrc
        })


        // reader를 이용한 방법
        // file.addEventListener('change', () => {
        //     const reader = new FileReader()
        //     reader.onload = ({target}) => {
        //         preview.src = target.result
        //         filePath = target.result
        //     }
        //     reader.readAsDataURL((file.files[0]))
        // })
    }

    function imgCancel() {
        const preview = document.querySelector(".basic-img")
        const file = document.querySelector("#inputFile")

        preview.src = ""
        file.required = true
        file.value = ""
    }

    function basicSubmit() {

        let selectOption = document.querySelector(".form-select > option:checked").value
        let name = $("#basicNm").val()
        let content = $("#basicCtnt").val()
        let id = $("#basicId").val()

        let current = new Date()
        const currentDt = current.toJSON().slice(0, 10).replace(/-/g, ".")

        const data = {
            "basicNo": 0,
            "basicId": "BASC00",
            "basicNm": name,
            "basicCtnt": content,
            "basicFilePath": filePath,
            "personality": check,
            "publicPrivate": selectOption,
            "regNm": "홍길동",
            "regDate": currentDt,
            "modNm": "슈퍼맨",
            "modDate": currentDt
        }

        console.log("data", data)
        $.ajax({
            type: "post",
            url: "/upsetBasic.do",
            data: data,
            // contentType : 'application/json',
            success: function (data) {
                console.log(data)
            },
            error: function (error) {
                console.log("error", error)
            }
        })
    }

</script>
</body>
</html>
