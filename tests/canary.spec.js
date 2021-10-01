test('canary', () => {
  expect(1 + 2).toBe(3)
})

test.skip('canary false', () => {
  expect(2 + 2).toBe(4)
})
