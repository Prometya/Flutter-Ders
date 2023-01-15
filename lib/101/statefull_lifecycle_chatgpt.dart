import 'package:flutter/material.dart';

class ChatGPT_statefull_lifecycle extends StatefulWidget {
  @override
  _ChatGPT_statefull_lifecycleState createState() => _ChatGPT_statefull_lifecycleState();
}

class _ChatGPT_statefull_lifecycleState extends State<ChatGPT_statefull_lifecycle> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    print("initState called");
  }

  @override
  Widget build(BuildContext context) {
    print("build called");
    return Column(
      children: <Widget>[
        Text("Counter: $_counter"),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _counter++;
            });
          },
          child: Text("Increment +"),
        ),ElevatedButton(
          onPressed: () {
            setState(() {
              _counter--;
            });
          },
          child: Text("Decrament +"),
        ),
      ],
    );
  }

  @override
  void didUpdateWidget(ChatGPT_statefull_lifecycle oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget called");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("deactivate called");
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose called");
  }
}

// Stateful widget lifecycle, widget'ın oluşturulduğu ve güncellendiği zaman dilimlerini içerir. Bu lifecycle, widget'ın durumunu ve arayüzünü güncellemek için kullanılır.
//
// Ancak, unutmayın ki sadece Stateful widgetların lifecycle metodları var. Eğer sadece verilerinizi güncellemek istiyorsanız Stateless Widget kullanabilirsiniz.
//
// Ayrıca, kodları direk çalıştırmak için bir Flutter projesi oluşturmanız ve bu kodları projenize dahil etmeniz gerekir. Bu kodları, main.dart dosyası içerisinde kullanabilirsiniz. Örnek olarak, aşağıdaki kodları main.dart dosyasının içerisinde kullanabilirsiniz:
//
// Bu kodlar, bir sayacı içeren bir Stateful widget oluşturur. initState() ve build() metodları, widget oluşturulduğunda ve güncellendiğinde çağrılır. didUpdateWidget() metodu, widget'ın önceki sürümünden farklı bir sürümü oluşturulduğunda çağrılır. deactivate() ve dispose() metodları, widget arayüzü kapatılır ve widget tamamen silinirken çağrılır. Bu örnekte, her adımda "initState called", ""build called", "didUpdateWidget called", "deactivate called" ve "dispose called" yazdırılır. Bu yazdırmalar, lifecycle metodlarının hangi zamanda çağrıldığını ve hangi sırada çalıştığını gösterir. Örneğin, "initState called" yazdırması widget oluşturulduğunda initState() metodunun çağrıldığını gösterir. "build called" yazdırması ise widget güncellendiğinde build() metodunun çağrıldığını gösterir.
//
// Ayrıca, bu örnekte, tıklama olayını dinleyen bir düğme eklenmiştir ve her tıklama olayında setState() metodu çağrılır, bu sayacı arttırır ve build() metodunu çağırır, bu da widget arayüzünü yeniler ve sayacın güncellenmiş değerini gösterir.
