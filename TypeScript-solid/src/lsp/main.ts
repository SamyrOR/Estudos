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

const shoppingCart = new ShoppingCart(new FiftyPercentDiscount());
const order = new Order(shoppingCart, new Messaging(), new Persistency());

shoppingCart.addItem(new Product("Camisa", 49.9));
shoppingCart.addItem(new Product("Caderno", 9.9));
shoppingCart.addItem(new Product("Lápis", 1.59));

console.log(shoppingCart.items);
console.log(shoppingCart.totalWithDiscount());
console.log(order.orderStatus);
order.checkout();
console.log(order.orderStatus);
