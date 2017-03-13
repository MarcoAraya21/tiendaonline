function multiplicar(){
     m1 = document.getElementById("precio").value;
         m2 = document.getElementById("cantidad").value;
             r = m1*m2;
                 document.getElementById("total").value = r;
                         }

$(function() {
        $('#productos').change(function() {
            var producto_id = $(this).val()
            var precio = eval($(this).data('precios'))[producto_id]
            $("#precio").html(precio)
        })
    })