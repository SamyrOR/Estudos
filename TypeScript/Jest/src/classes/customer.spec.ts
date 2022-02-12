import { IndividualCustomer, EnterpriseCustomer } from "./customer";

const createIndividualCustomer = (
  firstName: string,
  lastName: string,
  cpf: string
): IndividualCustomer => {
  return new IndividualCustomer(firstName, lastName, cpf);
};

const createEnterpriseCustomer = (
  name: string,
  cnpj: string
): EnterpriseCustomer => {
  return new EnterpriseCustomer(name, cnpj);
};

afterEach(() => jest.clearAllMocks());

describe("IndividualCustomer", () => {
  it("should have all properties", () => {
    const sut = createIndividualCustomer("Samyr", "Ribeiro", "111.111");
    expect(sut).toHaveProperty("firstName", "Samyr");
    expect(sut).toHaveProperty("lastName", "Ribeiro");
    expect(sut).toHaveProperty("cpf", "111.111");
  });
  it("should have methods to get name and idn", () => {
    const sut = createIndividualCustomer("Samyr", "Ribeiro", "111.111");
    expect(sut.getName()).toBe("Samyr Ribeiro");
    expect(sut.getIDN()).toBe("111.111");
  });
});

describe("EnterpriseCustomer", () => {
  it("should have all properties", () => {
    const sut = createEnterpriseCustomer("Samyr DEV", "222.111");
    expect(sut).toHaveProperty("name", "Samyr DEV");
    expect(sut).toHaveProperty("cnpj", "222.111");
  });
  it("should have methods to get name and idn", () => {
    const sut = createEnterpriseCustomer("Samyr DEV", "222.111");
    expect(sut.getName()).toBe("Samyr DEV");
    expect(sut.getIDN()).toBe("222.111");
  });
});
