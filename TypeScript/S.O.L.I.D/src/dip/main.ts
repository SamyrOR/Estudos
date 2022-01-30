import {
  FiftyPercentDiscount,
  NoDiscount,
  TenPercentDiscount,
} from "./classes/discount";
import { Product } from "./classes/product";
import { ShoppingCart } from "./classes/shopping-cart";
import { Order } from "./classes/order";
import { Messaging } from "./services/mensaging";
import { Persistency } from "./services/persistency";
import { EnterpriseCustomer } from "./classes/customer";
import { MessagingProtocol } from "./classes/interfaces/messaging-protocol";

class MessagingMock implements MessagingProtocol {
  sendMessage(): void {
    console.log("Essa mensagem veio da classe MOCK");
  }
}

const shoppingCart = new ShoppingCart(new FiftyPercentDiscount());
const order = new Order(
  shoppingCart,
  new MessagingMock(),
  new Persistency(),
  new EnterpriseCustomer("Lojas mil", "000015465464")
);
// new IndividualCustomer("Samyr", "Ribeiro", "60006865364")

shoppingCart.addItem(new Product("Camisa", 49.9));
shoppingCart.addItem(new Product("Caderno", 9.9));
shoppingCart.addItem(new Product("Lápis", 1.59));

console.log(shoppingCart.items);
console.log(shoppingCart.totalWithDiscount());
console.log(order.orderStatus);
order.checkout();
console.log(order.orderStatus);
