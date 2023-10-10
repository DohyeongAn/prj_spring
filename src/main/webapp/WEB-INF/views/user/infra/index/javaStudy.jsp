<%--
  Created by IntelliJ IDEA.
  User: andohyeong
  Date: 10/6/23
  Time: 1:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>java study</title>
</head>
<body>


  <script>
      if (true) {
          console.log('true입니다.');
      } else {
          console.log('false입니다.');
      }
      // 내용은 if문의 내용인 'true입니다'. 가 나온다.

      if (false) {
          cosole.log('false입니다.');
      } else if (true) {
          console.log('true입니다.');
      } else {
          console.log('false입니다.');
      }
      // 내용은 else if문의 내용인 'true입니다.'가 나온다.

      if (false) {
          console.log('false입니다.');
      } else if (false) {
          console.log('false입니다.');
      } else {
          console.log('false입니다.');
      }
      // 내용은 else문의 내용인 'false입니다.'가 나온다.


      let obj = {
          name: '홍길동',
          age: 20,
          country : '조선'
      };
      console.log(Object.keys(obj)); // ['name', 'age', 'country']
      console.log(Object.values(obj)); // ['name', 'age', 'country']
  </script>
</body>

</html>
