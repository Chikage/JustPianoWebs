<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>添加曲谱</title>
</head>

<body>

<p>添加曲谱</p>

<table width="319" height="48" align="center">
  <tr> 　　
    <td><div align="center">
     <form id="form1" name="form1" method="post" action="../../action/admin/adsongdb.asp">
      <table width="300" border="0">
        <tr>
          <td width="103" height="21">歌曲分类：</td>
          <td width="187"><label for="sorts"></label>
            <select name="sorts" required="required" id="sorts">
              <option value="classic">经典乐章</option>
              <option value="pop">流行空间</option>
              <option value="ACG">动漫原声</option>
              <option value="games">游戏主题</option>
              <option value="nursery">儿时回忆</option>
            </select></td>
        </tr>
        <tr>
          <td>歌曲题目：</td>
          <td><label for="ti"></label>
            <input name="ti" type="text" required="required" id="ti" size="16" /></td>
        </tr>
        <tr>
          <td>歌谱作者：</td>
          <td><input name="ar" type="text" id="ar" size="16" /></td>
        </tr>
        <tr>
          <td>歌谱专辑：</td>
          <td><input name="al" type="text" id="al" size="16" /></td>
        </tr>
        <tr>
          <td>歌谱难度：</td>
          <td><input name="difficulty" type="text" required="required" id="difficulty" size="16" /></td>
        </tr>
        <tr>
          <td>音符总数：</td>
          <td><input name="note" type="text" required="required" id="note" size="16" /></td>
        </tr>
        <tr>
          <td>文件名称：</td>
          <td><label for="fileField"></label>
            <label for="path"></label>
            <input name="path" type="text" required="required" id="path" size="16" />
            .mid</td>
        </tr>
      </table>
     
        <p>
          <input type="submit" name="button" id="button" value="提交" />
        </p>
      </form>
      <p><%=request.QueryString("EM")%></p>
    </div></td>
  </tr>
  
</table>


</body>
</html>
