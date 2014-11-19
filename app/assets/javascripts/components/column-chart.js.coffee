Dashboard.ColumnChartComponent = Ember.Component.extend
  tagName: 'div'
  classNames: ['highcharts']

  contentChanged: (->
    @rerender()
  ).observes('series')

  didInsertElement: ->
    $("##{@chartId}").highcharts({
      chart: { type: 'column' },
      title: { text: 'Revenue by Product' },
      subtitle: { text: 'Dynamic Charts rendered by emberjs. Rails is Omakase!' },
      legend: { enabled: false },
      xAxis: {
        title: {
          text: 'Product Number'
        }
      },
      series: @series
    })

  willDestroyElement: ->
    $("##{@chartId}").highcharts().destroy()
    