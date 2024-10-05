import 'package:flutter/material.dart';
 
class conta extends StatelessWidget {
  const conta({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      // Conta: Mostra o saldo da conta e botões para funcionalidades como Pix, Pagamento, etc.
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Conta", 
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_forward_ios_outlined,
                  color: Color(0xffc5c5c5))),
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Container(
        child: Text(
          "R\$ 100.000",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
        ),
      ),
      SizedBox(
        height: 30,
      ),



      //Botões abaixo são relacionados à conta (pix, pagar, QRCode, transferir)
      Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: Column(children: [
                IconButton.filledTonal(
                    style: ButtonStyle(
                        fixedSize: MaterialStatePropertyAll<Size>(
                      Size.fromRadius(30),
                    )),
                    onPressed: () {},
                    icon: Icon(
                      Icons.pix,
                      color: Color(0xff191919),
                    )),
                Text("Pix", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),)
              ]),
            ),
            Container(
              child: Column(children: [
                IconButton.filledTonal(
                    style: ButtonStyle(
                        fixedSize: MaterialStatePropertyAll<Size>(
                      Size.fromRadius(30),
                    )),
                    onPressed: () {},
                    icon: Icon(
                      Icons.money,
                      color: Color(0xff191919),
                    )),
                Text("Pagar", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))
              ]),
            ),
            Container(
              child: Column(children: [
                IconButton.filledTonal(
                    style: ButtonStyle(
                        fixedSize: MaterialStatePropertyAll<Size>(
                      Size.fromRadius(30),
                    )),
                    onPressed: () {},
                    icon: Icon(
                      Icons.qr_code,
                      color: Color(0xff191919),
                    )),
                Text("QRCode", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))
              ]),
            ),
            Container(
              child: Column(children: [
                IconButton.filledTonal(
                    style: ButtonStyle(
                        fixedSize: MaterialStatePropertyAll<Size>(
                      Size.fromRadius(30),
                    )),
                    onPressed: () {},
                    icon: Icon(
                      Icons.attach_money,
                      color: Color(0xff191919),
                    )),
                Text("Transferir", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))
              ]),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 30,
      ),



      //Cartões e opções de planejamento financeiro
      Card(
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
        color: Color(0xFFF5F5F5),
        elevation: 0,
        child: ListTile(
          contentPadding: EdgeInsets.all(15),
          leading: Icon(Icons.payment_outlined),
          title: Text('Meus cartões', style: TextStyle(fontWeight: FontWeight.bold)),
        ),
      ),
      SizedBox(
        height: 30,
      ),
      Card(
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
        color: Color(0xFFF5F5F5),
        child: ListTile( 
          contentPadding: EdgeInsets.all(10),
          title: Text('Guarde seu dinheiro em caixinhas', style: TextStyle(color: Color(0xFF8A05BE), fontWeight: FontWeight.bold)),
          subtitle: Text("Acessando a área de planejamento"),
        ),
      ),
      SizedBox(
        height: 15,
      ),
      Padding(padding: EdgeInsets.fromLTRB(0, 30, 0, 30), 
      child:      
       Divider(
        height: 1,
      ),
      ), 



      //Cartão de Crédito: Mostra informações da fatura e opções de pagamento abaixo 
      Container(
          child: (Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Cartão de Crédito",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_forward_ios_outlined,
                  color: Color(0xffc5c5c5))),
        ],
      ))),
      SizedBox(
        height: 10,
      ),
      Text(
        "Fatura fechada", //Status da fatura
        style: TextStyle(fontSize: 18, color: Colors.black54),
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        "R\$2.123,39", //Valor da fatura 
        style: TextStyle(fontSize: 24),
      ),
      SizedBox(
        height: 15,
      ),
      Text(
        "Vencimento dia 15", //Data de vencimento
        style: TextStyle(fontSize: 18, color: Colors.black54),
      ),
      SizedBox(
        height: 15,
      ),
      ElevatedButton(
        onPressed: () {},
        child: Text("Renegociar", style: TextStyle(color: Colors.black, fontSize: 18)), //Botão para renegociar a fatura
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Color(0xffdad2dc)),
        ),
      ),
      SizedBox(
        height: 15,
      ),
      Padding(padding: EdgeInsets.fromLTRB(0, 30, 0, 30), child:       Divider(
        height: 1,
      ),
      ), 


      //Empréstimo: Exibe o status de um possível empréstimo
      Container(
          child: (Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Empréstimo",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_forward_ios_outlined,
                  color: Color(0xffc5c5c5))),
        ],
      ))),
      Text("Tudo certo! Você está em dia.", style: TextStyle(fontSize: 18),), //Status de empréstimos
      SizedBox(
        height: 15,
      ),
      Padding(padding: EdgeInsets.fromLTRB(0, 30, 0, 30), child:       Divider(
        height: 1,
      ),
      ), 


      //Descubra mais: apresenta informações adicionais e serviços como seguro de vida
      Container(
          child: (Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Descubra Mais",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_forward_ios_outlined,
                  color: Color(0xffc5c5c5))),
        ],
      ))),
      SizedBox(
        height: 8,
      ),

      //Card do seguro de vida
      Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              height: 150.0,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('images/SeguroVida.PNG'), //Imagem ilustrativa
                  fit: BoxFit.cover,
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding:EdgeInsets.symmetric(vertical: 5, horizontal: 0)), 
                  Text(
                    'Seguro de Vida',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Cuide bem de quem você ama de um jeito simples',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(padding:EdgeInsets.fromLTRB(0, 5, 0, 10)), 
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple, // Cor do botão
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                  onPressed: () {
                    // Ação do botão
                  },
                  child:
                      Text('Conhecer', style: TextStyle(color: Colors.white,)),
                ),
              ],
            ),
          ],
        ),
      )
    ]);
  }
}
 