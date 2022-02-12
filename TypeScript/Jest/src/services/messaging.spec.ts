import { Messaging } from "./messaging";

const creatSut = () => {
  return new Messaging();
};

describe("Messaging", () => {
  afterEach(() => jest.clearAllMocks());

  it("should return undefined ", () => {
    const sut = creatSut();
    expect(sut.sendMessage("teste")).toBeUndefined();
  });

  it("should call console.log once", () => {
    const sut = creatSut();
    const consoleSpy = jest.spyOn(console, "log");
    sut.sendMessage("teste");
    expect(consoleSpy).toBeCalled();
  });

  it("should call console.log with 'Mensagem enviada:' and msg", () => {
    const sut = creatSut();
    const consoleSpy = jest.spyOn(console, "log");
    sut.sendMessage("teste");
    expect(consoleSpy).toHaveBeenCalledWith("Mensagem enviada:", "teste");
  });
});
