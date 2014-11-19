Dashboard.OrdersRoute = Ember.Route.extend({
  model: ->
    [
      {
        id: 1,
        firstName: 'Griffin',
        lastName: 'Paintsil',
        quantity: 1,
        revenue: '10.00',
        productId: 0,
      },
      {
        id: 2,
        firstName: 'Delali',
        lastName: 'Kanda',
        quantity: 2,
        revenue: '20.00',
        productId: 1,
      },
      {
        id: 3,
        firstName: 'Miriam',
        lastName: 'Paintsil',
        quantity: 3,
        revenue: '30.00',
        productId: 2,
      }
    ]
})