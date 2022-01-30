import { Product } from "./entities/product";
import { ShoppingCart } from "./entities/shopping-cart";
import { Order } from "./entities/order";
import { Messaging } from "./services/mensaging";
import { Persistency } from "./services/persistency";

const shoppingCart = new ShoppingCart();
const order = new Order(shoppingCart, new Messaging(), new Persistency());

shoppingCart.addItem(new Product("Camisa", 49.9));
shoppingCart.addItem(new Product("Caderno", 9.9));
shoppingCart.addItem(new Product("Lápis", 1.59));

console.log(shoppingCart.items);
console.log(shoppingCart.total());
console.log(order.orderStatus);
order.checkout();
console.log(order.orderStatus);
