<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    <title>Formulario</title>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <!-- Bootstrap CSS -->
    <link rel="icon" href="IMG/diente.png">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  </head>
  <body class="text-center bg-light">

    <div class="container">
        <div class="py-4 text-center">
            <img class="img-fluid" src="IMG/logo.jpg" alt="logo odontologia" width="300px">
            <br>  
            <h2>Formulario de Turnos</h2>
            
            <p class="lead">Para más informacion llamar al +9 11 1547444033.</p>
        </div>
        <div class="col-md-12 text-center">
          <h4 class="mb-3">Tu Turno</h4>
          <form  action="guardarTurno.jsp" method="POST">
            <div class="row">
              <div class="col-md-6 mb-3">
                <label for="firstName">Nombre</label>
                <input type="text" class="form-control" id="firstName" name="firstName" placeholder="Tu nombre" value="" required>
                <div class="invalid-feedback">
                  Debe ingresar su nombre.
                </div>
              </div>
              <div class="col-md-6 mb-3">
                <label for="lastName">Apellido</label>
                <input type="text" class="form-control" id="lastName" name="lastName" placeholder="Tu apellido" value="" required>
                <div class="invalid-feedback">
                  Faltó ingresar el apellido.
                </div>
              </div>
            </div>
      
            <div class="mb-3">
              <label for="username">Nombre de Usuario</label>
              <div class="input-group">
                <div class="input-group-prepend">
                  <span class="input-group-text">@</span>
                </div>
                <input type="text" class="form-control" id="username" name="username" placeholder="Usuario" required>
                <div class="invalid-feedback" style="width: 100%;">
                  Faltó ingresar el usuario.
                </div>
              </div>
            </div>
      
            <div class="mb-3">
              <label for="email">Email de contacto <span class="text-muted">(Optional)</span></label>
              <input type="email" class="form-control" id="email"  name="email" placeholder="tumail@gmail.com">
              <div class="invalid-feedback">
                El e-mail es invÃ¡lido.
              </div>
            </div>
      
            <div class="mb-3">
              <label for="address">Domicilio</label>
              <input type="text" class="form-control" id="address" name="address" placeholder="Calle, nro,  localidad..." required>
              <div class="invalid-feedback">
                Faltó ingresar el domicilio de entrega.
              </div>
            </div>
      
      
      
            <div class="row">
              <div class="col-md-5 mb-3">
                <label for="country">Localidad</label>
                <select class="custom-select d-block w-100" id="country" name="country" required>
                  <option value="">Seleccioná.</option>
                  <option value="1">Moreno</option>
                  <option value="2">Lanus</option>
                </select>
                <div class="invalid-feedback">
                  Seleccioná una localidad válida.
                </div>
              </div>
              <div class="col-md-4 mb-3">
                <label for="state">Provincia</label>
                <select class="custom-select d-block w-100" id="state" name="state" required>
                  <option value="">Seleccioná.</option>
                  <option value="1">Buenos Aires</option>
                  <option value="2">TucumÃ¡n</option>
                </select>
                <div class="invalid-feedback">
                  Seleccioná una provincia válida.
                </div>
              </div>
              <div class="col-md-3 mb-3">
                <label for="zip">Cod.Postal</label>
                <input type="text" class="form-control" id="zip" name="zip" placeholder="" required>
                <div class="invalid-feedback">
                  Faltó ingresar el Código Postal.
                </div>
              </div>
            </div>
      
      
            <hr class="mb-6">
      
            <h4 class="mb-3">Forma de Pago del servicio</h4>
      
            <div class="d-block my-3">
              <div class="custom-control custom-radio">
                <input id="credit" name="paymentMethod" type="radio" class="custom-control-input" checked required>
                <label class="custom-control-label" for="credit">Tarjeta de Crédito</label>
              </div>
              <div class="custom-control custom-radio">
                <input id="debit" name="paymentMethod" type="radio" class="custom-control-input" required>
                <label class="custom-control-label" for="debit">Mercado Pago</label>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6 mb-3">
                <label for="cc-name">Nombre del Titular de la Tarjeta</label>
                <input type="text" class="form-control" id="cc-name" name="cc-name" placeholder="" required>
                <small class="text-muted">Nombre como se muestra en la tarjeta</small>
                <div class="invalid-feedback">
                  El nombre debe ser ingresado.
                </div>
              </div>
              <div class="col-md-6 mb-3">
                <label for="cc-number">Número de la tarjeta</label>
                <input type="text" class="form-control" id="cc-number" name="cc-number" placeholder="" required>
                <div class="invalid-feedback">
                  El nÂ° es obligatorio.
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-3 mb-3"></div>
              <div class="col-md-3 mb-3">
                <label for="cc-expiration">Fecha de Vto.</label>
                <input type="text" class="form-control" id="cc-expiration" name="cc-expiration" placeholder="" required>
                <div class="invalid-feedback">
                  Falta ingresar la fecha de Vto.
                </div>
              </div>
              <div class="col-md-3 mb-3">
                <label for="cc-cvv">Código</label>
                <input type="text" class="form-control" id="cc-cvv" name="cc-cvv" placeholder="" required>
                <div class="invalid-feedback">
                  Nro de seguridad obligatorio.
                </div>
              </div>
            </div>
            <hr class="mb-4">
            <div class="row">
              <div class="col-4"></div>
              <div class="col-4">
                <button class="btn btn-primary btn-lg btn-block" type="submit">Ingresar la Solicitud</button>
              </div>
            </div>
          </form>
        </div>
        </div>
    </div>
      
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>