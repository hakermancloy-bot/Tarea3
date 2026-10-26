using System;

namespace Tarea3
{
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            try
            {
                // Validar número 1
                if (!double.TryParse(txtNum1.Text, out double num1))
                {
                    lblResultado.Text = "Error: Ingrese un Número 1 válido.";
                    return;
                }

                double num2 = 0;
                string operacion = ddlOperaciones.SelectedValue;

                // Las operaciones básicas requieren Número 2
                if (operacion == "suma" || operacion == "resta" || operacion == "multiplicacion" || operacion == "division")
                {
                    if (!double.TryParse(txtNum2.Text, out num2))
                    {
                        lblResultado.Text = "Error: Ingrese un Número 2 válido.";
                        return;
                    }
                }

                double resultado = 0;

                // Procesar operaciones requeridas
                switch (operacion)
                {
                    case "suma":
                        resultado = num1 + num2;
                        break;
                    case "resta":
                        resultado = num1 - num2;
                        break;
                    case "multiplicacion":
                        resultado = num1 * num2;
                        break;
                    case "division":
                        if (num2 == 0)
                        {
                            lblResultado.Text = "Error: No se puede dividir entre cero.";
                            return;
                        }
                        resultado = num1 / num2;
                        break;
                    case "potencia2":
                        resultado = Math.Pow(num1, 2);
                        break;
                    case "expo":
                        resultado = Math.Exp(num1); // Exponencial e^x
                        break;
                }

                // Uso del CheckBox opcional
                if (chkModoExtra.Checked)
                {
                    resultado = resultado * 1.10;
                    lblResultado.Text = $"Resultado (+10%): {resultado:F4}";
                }
                else
                {
                    lblResultado.Text = $"Resultado: {resultado:F4}";
                }
            }
            catch (Exception ex)
            {
                lblResultado.Text = "Ocurrió un error: " + ex.Message;
            }
        }
    }
}