<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <c:set var="ctx" value="${pageContext.request.contextPath}" />
        <!DOCTYPE html>
        <html>

        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>피부 타입 결과</title>
            <%@ include file="/common/common.jspf"%>
                <!-- CUSTOM CSS -->
                <link href="${ctx}/resources/css/stylejun.css" rel="stylesheet">
                <style>
                    .no-js #loader {
                        display: none;
                    }
                    
                    .js #loader {
                        display: block;
                        position: absolute;
                        left: 100px;
                        top: 0;
                    }
                    
                    .se-pre-con {
                        position: fixed;
                        left: 0px;
                        top: 0px;
                        width: 100%;
                        height: 100%;
                        z-index: 9999;
                        background: url(${ctx}/resources/plugins/simple-pre-loader/images/loader-64x/Preloader_2.gif) center no-repeat #fff;
                    }
                </style>
                <!-- Date Picker -->
                <link rel="stylesheet" type="text/css" href="${ctx}/resources/css/datepicker3.css" />
                <script type="text/javascript" src="${ctx}/resources/js/bootstrap-datepicker.js"></script>
                <script type="text/javascript" src="${ctx}/resources/js/bootstrap-datepicker.kr.js"></script>
                <!-- select -->
                <link href="${ctx}/resources/css/bootstrap-select.min.css" rel="stylesheet" type="text/css" />
                <script src="${ctx}/resources/js/bootstrap-select.min.js"></script>
        </head>

        <body>
            <%@ include file="../common/header.jspf"%>
                <div class="inner-bg">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-8 col-sm-offset-2 text">
                                <div class="secotionTitle">
                                    <h2>
							<span>Beauty Mate</span>Login And Join
						</h2>
                                    <br>
                                    <div>
                                        <p>Join our Beauty Mate! We will be support your SkinType.</p>
                                        <p>Let's Find Suitable Cosmetics For You. join then give us "Bauman" skin type survey.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-5">
                                <div class="form-box2">
                                    <div class="form-top2">
                                        <div class="form-top-left2">
                                            <h3>Login to our site</h3>
                                            <p>Enter ID and Password to log on:</p>
                                        </div>
                                        <div class="form-top-right2"> <i class="fa fa-lock"></i> </div>
                                    </div>
                                    <div class="form-bottom2">
                                        <form role="form" action="" method="post" class="login-form">
                                            <div class="form-group">
                                                <label class="sr-only" for="form-username">ID</label>
                                                <input type="text" name="form-id" placeholder="ID..." class="form-id form-control" id="form-username"> </div>
                                            <div class="form-group">
                                                <label class="sr-only" for="form-password">Password</label>
                                                <input type="password" name="form-password" placeholder="Password..." class="form-password form-control" id="form-password"> </div>
                                            <button type="submit" class="btn">Sign in!</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-1 middle-border"></div>
                            <div class="col-sm-1"></div>
                            <div class="col-sm-5">
                                <div class="form-box2">
                                    <div class="form-top2">
                                        <div class="form-top-left2">
                                            <h3>Sign up now</h3>
                                            <p>Fill in the form below to get instant access:</p>
                                        </div>
                                        <div class="form-top-right2"> <i class="fa fa-pencil"></i> </div>
                                    </div>
                                    <div class="form-bottom2">
                                        <form role="form" action="" method="post" class="registration-form">
                                            <div class="form-group">
                                                <label class="sr-only" for="form-first-name">ID</label>
                                                <input type="text" name="form-id" placeholder="ID..." class="form-first-name form-control" id="form-first-name"> </div>
                                            <div class="form-group">
                                                <label class="sr-only" for="form-last-name">Password</label>
                                                <input type="password" name="form-password" placeholder="Password" class="form-last-name form-control" id="form-last-name"> </div>
                                            <div class="form-group">
                                                <label class="sr-only" for="form-last-name">Name</label>
                                                <input type="text" name="form-name" placeholder="Name..." class="form-last-name form-control" id="form-last-name"> </div>
                                            <div class="form-group">
                                                <label class="sr-only" for="form-email">Email</label>
                                                <input type="text" name="form-email" placeholder="Email..." class="form-last-name form-control" id="form-email"> </div>
                                            <div class="form-group">
                                                <div id="selectbox">
                                                    <label class="sr-only" for="form-gender">Gender</label>
                                                    <select id="from-gender" name="form-gender" class="form-last-name form-control">
                                                        <option style="font-size: 15px;" selected>Gender</option>
                                                        <option value="M" style="font-size: 15px;">Man</option>
                                                        <option value="F" style="font-size: 15px;">Female</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="input-group input-append date" id="dateRangePicker">
                                                    <label class="sr-only" for="form-email">Birth</label>
                                                    <input placeholder="Birth..." type='text' class="form-control" /> <span class="input-group-addon"> <span
											class="glyphicon glyphicon-calendar"></span> </span>
                                                </div>
                                            </div>
                                            <script type="text/javascript">
                                                $('#dateRangePicker').datepicker({
                                                    format: "yyyy-mm-dd"
                                                    , language: "kr"
                                                });
                                                
                                            </script>
                                            <button type="submit" class="btn">Sign me up!</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br>
                <br>
                <br>
                <br>
                
                
                <section class="clearfix formArea">
      <div class="container">
        <div class="row">
          <div class="col-md-4 col-md-offset-2 col-sm-6 col-xs-12">
            <div class="panel panel-default formPart">
              <div class="panel-heading patternbg">log in your <span>account</span></div>
              <div class="panel-body">
                <form>
                  <div class="form-group">
                    <i class="fa fa-envelope" aria-hidden="true"></i>
                    <input type="email" class="form-control" id="email" placeholder="Email">
                  </div>
                  <div class="form-group">
                    <i class="fa fa-lock" aria-hidden="true"></i>
                    <input type="password" class="form-control" id="pwd" placeholder="Password">
                  </div>
                  <div class="checkbox">
                    <label><input type="checkbox"> Remember me</label>
                  </div>
                  <button type="submit" class="btn btn-primary btn-block">Log In</button>
                </form>
              </div>
            </div>
          </div>
          <div class="col-md-4 col-sm-6 col-xs-12">
            <div class="panel panel-default formPart">
              <div class="panel-heading patternbg">Create an <span>account</span></div>
              <div class="panel-body">
                <form>
                  <div class="form-group">
                    <i class="fa fa-user" aria-hidden="true"></i>
                    <input type="text" class="form-control" id="fullname" placeholder="Full Name">
                  </div>
                  <div class="form-group">
                    <i class="fa fa-envelope" aria-hidden="true"></i>
                    <input type="email" class="form-control" id="email1" placeholder="Email">
                  </div>
                  <div class="form-group">
                    <i class="fa fa-lock" aria-hidden="true"></i>
                    <input type="password" class="form-control" id="pwd1" placeholder="Password">
                  </div>
                  <div class="checkbox">
                    <label><input type="checkbox"> Remember me</label>
                  </div>
                  <button type="submit" class="btn btn-primary btn-block">Sign UP</button>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
                
                <%@ include file="../common/footer.jspf"%>
        </body>

        </html>