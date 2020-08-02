const faker = require('faker')

export const create = (num = 1) => {
  let result = []

  for (var i = 0; i < num; i++) {
    let item = {
      id: faker.random.uuid(),
      name: faker.company.companyName(),
      url: faker.internet.domainName(),
      ip: faker.internet.ip(),
      status: 'active'
    }

    result.push(item)
  }

  if (result.length == 1) { return result[0] }

  return result
}