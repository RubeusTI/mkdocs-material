!!! note ""

    ``` html tab="HTML"
    <form>
        <select id="curso" onchange="javascript:a()">
            <option>SELECIONAR</option>
            <option value="1-156-001">ADMINISTRAÇÃO</option>
            <option value="1-156-017">AGRONOMIA</option>
            <option value="1-156-004">DIREITO</option>
        </select>
    </form>
    ```

    ``` javascript tab="JavaScript"
    function a() {
        var curso = document.getElementById('curso');
        var p = {
            eventData: {
                curso: {
                    id: curso.value,
                    nome: curso.options[curso.selectedIndex].text
                }
            },
            eventType: 1,
            identificador: 'LeedsADS2020.2'
        };
        console.log(p);

        RBTracking.sendEvent(p, function () {
            RBTracking.getHash(
                'http://172.19.0.2/processoseletivorubeusintegrado'
            );
            return 'success!';
        })
    }
    ```

    ---
    
    <form>
        <select id="curso" onchange="javascript:a()">
            <option>SELECIONAR</option>
            <option value="1-156-001">ADMINISTRAÇÃO</option>
            <option value="1-156-017">AGRONOMIA</option>
            <option value="1-156-004">DIREITO</option>
        </select>
    </form>

## teste
<p align='justify'>  
Lorem ipsum tempus cursus curabitur nostra habitant dictumst, duis nibh vehicula leo neque viverra. torquent dolor sollicitudin vestibulum felis massa leo netus nam aliquam sem semper elit, fermentum litora primis justo aenean condimentum iaculis laoreet morbi metus. malesuada donec dolor nisl elit blandit etiam magna erat, tristique placerat eget quisque leo fermentum dictumst hac, et rutrum integer augue enim hendrerit quisque. bibendum dui senectus mattis at purus venenatis pharetra orci est quisque scelerisque, nibh aenean feugiat dui porta rhoncus per pulvinar ultrices hendrerit, interdum porta nullam fermentum arcu gravida conubia faucibus vestibulum donec.</p>

| Cor |  |
| --- | --- |
| blablablablabla | `#!json {“cidade”: “Rio de Janeiro”, “estado”: “RJ”}` |

!!! note "Nota"

    Para ser enviado mais de uma deficiência na importação via CSV, os valores devem ser divididos por "|", exemplo: 2|3


<div id="myModal" class="modal">
  <span class="close">&times;</span>
  <img class="modal-content" id="image">
  <div id="caption"></div>
</div>

<img class="image" id="img1" alt="Tela do CRM Rubeus - retorno do webhook" src="/assets/images/webhook.jpg" onclick="modalImg('img1')">

<div class="BOX"><strong class='REST POST'>POST</strong><strong class="MIME">application/json</strong> \[DOMINIO\]/api/Curso/cadastroOferta</div>