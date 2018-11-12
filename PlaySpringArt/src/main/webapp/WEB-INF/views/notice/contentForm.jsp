<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>글 상세보기</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/blog-post.css" rel="stylesheet">

  </head>

  <body>

    

    <!-- Page Content -->
    <div class="container">

      <div class="row">

        <!-- Post Content Column -->
        <div class="col-lg-8">

          <!-- Title -->
          <h1 class="mt-4">${noti.subject}</h1>
          <hr>

          <!-- Author -->
          <p class="lead">
            <left> by 
            <a href="#">${noti.writer }</a></left>
          </p>

          <hr>

          <!-- Date/Time -->
          <p>${noti.reg_date}</p>

          <hr>

          <!-- Preview Image -->
          <!-- <img class="img-fluid rounded" src="http://placehold.it/900x300" alt="">

          <hr> -->

          <!-- Post Content -->
          ${noti.content}

          <hr>

          <!-- Comments Form -->
          <div class="card my-4">
            <h5 class="card-header">댓글:</h5>
            <div class="card-body">
              <form action="">
                <div class="form-group">
                  <textarea class="form-control" rows="3"></textarea>
                </div>
                <span style="float:right"><button type="submit" class="btn btn-primary">작성</button></span>
              </form>
            </div>
          </div>
			
		<c:set var="cd" value="comm.command" />
		<c:if test="${cd==null}">
		댓글이 없습니다
		
		</c:if>
		
			
		<c:if test="${cd!=null}">
          <!-- Single Comment -->
          <div class="media mb-4">
            <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
            <div class="media-body">
              <h5 class="mt-0">싱글댓글</h5>
              싱글 댓글 내용
            </div>
          </div>

          <!-- Comment with nested comments -->
          <div class="media mb-4">
            <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
            <div class="media-body">
              <h5 class="mt-0">답글 있는 댓글</h5>
              답글 있는 댓글 내용 

              <div class="media mt-4">
                <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
                <div class="media-body">
                  <h5 class="mt-0">답글</h5>
                  답글내용
                </div>
              </div>
		</c:if>
            </div>
          </div>

        </div>

        

      </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->

   
    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>

</html>
