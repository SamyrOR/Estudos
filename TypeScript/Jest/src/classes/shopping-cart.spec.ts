import { Discount } from "./discount";
import { CartItem } from "./interfaces/cart-item";
import { ShoppingCart } from "./shopping-cart";

const createSut = () => {
  const discountMock = createDiscountMock();
  const sut = new ShoppingCart(discountMock);
  return { sut, discountMock };
};

const createDiscountMock = () => {
  class DiscountMock extends Discount {}
  return new DiscountMock();
};

const createCartItem = (name: string, price: number) => {
  class CartItemMock implements CartItem {
    constructor(public name: string, public price: number) {}
  }
  return new CartItemMock(name, price);
};

const createSutWithProducts = () => {
  const { sut, discountMock } = createSut();
  const cartItem1 = createCartItem("Camista", 40);
  const cartItem2 = createCartItem("Caneta", 9);
  sut.addItem(cartItem1);
  sut.addItem(cartItem2);
  return { sut, discountMock };
};

describe("ShoppingCart", () => {
  test("should be empty if no product is added", () => {
    const { sut } = createSut();
    expect(sut.isEmpty()).toBe(true);
  });

  test("should have 2 cart items", () => {
    const { sut } = createSutWithProducts();
    expect(sut.items.length).toBe(2);
  });

  test("Total and total with discount", () => {
    const { sut } = createSutWithProducts();
    expect(sut.items.length).toBe(2);
    expect(sut.total()).toBe(49);
    expect(sut.totalWithDiscount()).toBe(49);
  });

  it("should add products and clear cart", () => {
    const { sut } = createSutWithProducts();
    expect(sut.items.length).toBe(2);
    let clearSpy = jest.spyOn(sut, "clear");
    sut.clear();
    expect(clearSpy).toBeCalled();
    expect(sut.items.length).toBe(0);
    expect(sut.isEmpty()).toBe(true);
  });

  it("should remove products", () => {
    const { sut } = createSutWithProducts();
    expect(sut.items.length).toBe(2);
    let removeSpy = jest.spyOn(sut, "removeItem");
    sut.removeItem(1);
    expect(removeSpy).toBeCalled();
    expect(sut.items.length).toBe(1);
  });

  it("should call discount.calculate when call totalWithDiscount", () => {
    const { sut, discountMock } = createSutWithProducts();
    const discountMockSpy = jest.spyOn(discountMock, "calculate");
    sut.totalWithDiscount();
    expect(discountMockSpy).toHaveBeenCalled();
  });

  it("should match param of discount.calculate with sut.total ", () => {
    const { sut, discountMock } = createSutWithProducts();
    const discountMockSpy = jest.spyOn(discountMock, "calculate");
    sut.totalWithDiscount();
    expect(discountMockSpy).toHaveBeenCalledWith(sut.total());
  });
});
