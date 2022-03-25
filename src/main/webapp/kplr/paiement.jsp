<c:import url="header.jsp"></c:import>

<style>
html, body, h1, form, fieldset, legend, ol, li {
  margin: 0;
  padding: 0;
}
body {
  background: #ffffff;
  color: #111111;
  font-family: Georgia, "Times New Roman", Times, serif;
  padding: 20px;
}

form#paiement {
  background: #e683e1;
  -moz-border-radius: 5px;
  -webkit-border-radius: 5px;
  border-radius: 5px;
  padding: 20px;
  width: 400px;
}

form#paiement fieldset {
  border: none;
  margin-bottom: 10px;
}
form#paiement fieldset:last-of-type {
  margin-bottom: 0;
}

form#paiement legend {
  color: #384313;
  font-size: 16px;
  font-weight: bold;
  padding-bottom: 10px;
  text-shadow: 0 1px 1px #c0d576;
}

form#paiement > fieldset > legend:before {
  content: "Etape " counter(fieldsets) " : ";
  counter-increment: fieldsets;
}

form#paiement fieldset fieldset legend {
  color: #111111;
  font-size: 13px;
  font-weight: normal;
  padding-bottom: 0;
}

form#paiement ol li {
  background: #b9cf6a;
  background: rgba(255,255,255,.3);
  border-color: #e3ebc3;
  border-color: rgba(255,255,255,.6);
  border-style: solid;
  border-width: 2px;
  -moz-border-radius: 5px;
  -webkit-border-radius: 5px;
  border-radius: 5px;
  line-height: 30px;
  list-style: none;
  padding: 5px 10px;
  margin-bottom: 2px;
}
form#paiement ol ol li {
  background: none;
  border: none;
  float: left;
}

form#paiement label {
  float: left;
  font-size: 13px;
  width: 110px;
}
form#paiement fieldset fieldset label {
  background:none no-repeat left 50%;
  line-height: 20px;
  padding: 0 0 0 30px;
  width: auto;
}
form#paiement label[for=visa] {
  background-image: url(visa.gif);
}
form#paiement label[for=amex] {
  background-image: url(amex.gif);
}
form#paiement label[for=mastercard] {
  background-image: url(mastercard.gif);
}
form#paiement fieldset fieldset label:hover {
  cursor: pointer;
}

form#paiement input:not([type=radio]),
form#paiement textarea {
  background: #ffffff;
  border: none;
  -moz-border-radius: 3px;
  -webkit-border-radius: 3px;
  -khtml-border-radius: 3px;
  border-radius: 3px;
  font: italic 13px Georgia, "Times New Roman", Times, serif;
  outline: none;
  padding: 5px;
  width: 200px;
}
form#paiement input:not([type=submit]):focus,
form#paiement textarea:focus {
  background: #eaeaea;
}
form#paiement input[type=radio] {
  float: left;
  margin-right: 5px;
}

form#paiement button {
  background: #384313;
  border: none;
  -moz-border-radius: 20px;
  -webkit-border-radius: 20px;
  -khtml-border-radius: 20px;
  border-radius: 20px;
  color: #ffffff;
  display: block;
  font: 18px Georgia, "Times New Roman", Times, serif;
  letter-spacing: 1px;
  margin: auto;
  padding: 7px 25px;
  text-shadow: 0 1px 1px #000000;
  text-transform: uppercase;
}
form#paiement button:hover {
  background: #1e2506;
  cursor: pointer;
}

</style>

<div class="container">
<form id=paiement style="margin:auto">
  <fieldset>
    <legend>Paiement</legend>

    <ol>
      <li>
        <label for=nom>Nom</label>
        <input id=nom name=nom type=text placeholder="Prenom et nom" required autofocus>
      </li>
      <li>
        <label for=email>Email</label>
        <input id=email name=email type=email placeholder="exemple@domaine.com" required>
      </li>
      <li>
        <label for=telephone>Telephone</label>
        <input id=telephone name=telephone type=tel placeholder="par ex&nbsp;: +3375500000000" required>
      </li>
    </ol>
  </fieldset>

  <fieldset>
    <legend>Adresse de livraison</legend>
      <ol>
        <li>
          <label for=adresse>Adresse</label>
          <textarea id=adresse name=adresse rows=5 required></textarea>
        </li>
        <li>
          <label for=codepostal>Code postal</label>
          <input id=codepostal name=codepostal type=text required>
        </li>
          <li>
          <label for=pays>Pays</label>
          <input id=pays name=pays type=text required>
        </li>
      </ol>
    </fieldset>
  <fieldset>
    <legend>informations CB</legend>
    <ol>
      <li>
        <fieldset>
          <legend>Type de carte bancaire</legend>
          <ol>
            <li>
              <input id=visa name=type_de_carte type=radio>
              <label for=visa>VISA</label>
            </li>
            <li>
              <input id=amex name=type_de_carte type=radio>
              <label for=amex>AmEx</label>
            </li>
            <li>
              <input id=mastercard name=type_de_carte type=radio>
              <label for=mastercard>Mastercard</label>
            </li>
          </ol>
        </fieldset>
      </li>
      <li>
        <label for=numero_de_carte>Numero de carte</label>
        <input id=numero_de_carte name=numero_de_carte type=number required>
      </li>
      <li>
        <label for=securite>Code securite</label>
        <input id=securite name=securite type=number required>
      </li>
      <li>
        <label for=nom_porteur>Nom du porteur</label>
        <input id=nom_porteur name=nom_porteur type=text placeholder="Meme nom que sur la carte" required>
      </li>
    </ol>
  </fieldset>

  <fieldset>
    <button type=submit>payer</button>
  </fieldset>
</form>
</div>

<c:import url="footer.jsp"></c:import>