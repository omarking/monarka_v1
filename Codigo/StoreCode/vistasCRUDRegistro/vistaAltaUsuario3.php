<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <script type="text/javascript" language="javascript" src="ajax.js"></script>
</head>
<body>
<table width="80%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr align="left">
    <td width="25%">Provincia:</td>
    <td width="30%">Canton:</td>
    <td width="45%">Parroquia:</td>
  </tr>
  <tr align="left">
    <td><?php include('provincias.php'); ?></td>
    <td><div id="listamunicipios">
      <select name="obj_municipio" id="obj_municipio" >
        <option>Seleccionar...</option>
      </select>
    </div></td>
    <td><table border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><div id="listaconsejos">
          <select name="obj_consejos" id="obj_consejos">
            <option>Seleccionar...</option>
          </select>
        </div></td>
        <td></td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>