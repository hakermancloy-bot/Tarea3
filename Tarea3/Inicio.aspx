<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Tarea3.Inicio" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Calculadora Web - Tarea 3</title>
    <style>
        body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; background-color: #fff1f2; color: #881337; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0; }
        .calculator-card { background: white; padding: 30px; border-radius: 12px; box-shadow: 0 4px 15px rgba(225, 29, 72, 0.15); width: 420px; border: 2px solid #f43f5e; }
        h2 { text-align: center; color: #e11d48; margin-bottom: 20px; }
        .form-group { margin-bottom: 15px; }
        label { display: block; font-weight: bold; margin-bottom: 5px; color: #9f1239; }
        input[type="text"], select { width: 100%; padding: 8px; border: 1px solid #fda4af; border-radius: 6px; box-sizing: border-box; }
        .checkbox-group { margin: 15px 0; font-size: 14px; color: #9f1239; }
        .btn-calcular { background-color: #e11d48; color: white; border: none; padding: 10px; width: 100%; font-size: 16px; font-weight: bold; border-radius: 6px; cursor: pointer; }
        .btn-calcular:hover { background-color: #be123c; }
        .resultado { margin-top: 20px; padding: 12px; background-color: #ffe4e6; border-left: 5px solid #e11d48; font-weight: bold; text-align: center; border-radius: 4px; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="calculator-card">
            <h2>Calculadora Web</h2>
            
            <div class="form-group">
                <label for="txtNum1">Número 1 (o base):</label>
                <asp:TextBox ID="txtNum1" runat="server"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="txtNum2">Número 2 (operaciones binarias):</label>
                <asp:TextBox ID="txtNum2" runat="server"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="ddlOperaciones">Operación (Dropdown List):</label>
                <asp:DropDownList ID="ddlOperaciones" runat="server">
                    <asp:ListItem Text="Suma (+)" Value="suma" />
                    <asp:ListItem Text="Resta (-)" Value="resta" />
                    <asp:ListItem Text="Multiplicación (×)" Value="multiplicacion" />
                    <asp:ListItem Text="División (÷)" Value="division" />
                    <asp:ListItem Text="Potencia 2 (x²)" Value="potencia2" />
                    <asp:ListItem Text="Exponencial (eˣ)" Value="expo" />
                </asp:DropDownList>
            </div>

            <div class="checkbox-group">
                <asp:CheckBox ID="chkModoExtra" runat="server" Text=" Aplicar incremento especial (+10%)" />
            </div>

            <asp:Button ID="btnCalcular" runat="server" Text="Calcular" CssClass="btn-calcular" OnClick="btnCalcular_Click" />

            <div class="resultado">
                <asp:Label ID="lblResultado" runat="server" Text="Resultado: "></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
