import {
  Discount,
  FiftyPercentDiscount,
  TenPercentDiscount,
  NoDiscount,
} from "./discount";

const creatSut = (className: new () => Discount) => {
  return new className();
};

describe("Discount", () => {
  afterEach(() => jest.clearAllMocks());

  it("should have no discount ", () => {
    const sut = creatSut(NoDiscount);
    expect(sut.calculate(50)).toBeCloseTo(50);
  });

  it("should apply 10% discount on price ", () => {
    const sut = creatSut(TenPercentDiscount);
    expect(sut.calculate(50)).toBeCloseTo(45);
  });

  it("should apply 50% discount on price", () => {
    const sut = creatSut(FiftyPercentDiscount);
    expect(sut.calculate(50)).toBeCloseTo(25);
  });
});
