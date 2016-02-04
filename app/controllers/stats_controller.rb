require "simple-spreadsheet"

class StatsController < ApplicationController

  def index
    s1 = SimpleSpreadsheet::Workbook.read("../../Documents/DARTS/Trainingsplan-07.04. (first take mit magen darm).xls")
    s2 = SimpleSpreadsheet::Workbook.read("../../Documents/DARTS/Trainingsplan-09.06..xls")
    s3 = SimpleSpreadsheet::Workbook.read("../../Documents/DARTS/Trainingsplan-24.04..xls")
    s4 = SimpleSpreadsheet::Workbook.read("../../Documents/DARTS/Trainingsplan-27.12..xls")
    s5 = SimpleSpreadsheet::Workbook.read("../../Documents/DARTS/Trainingsplan-28.01..xls")

    @chart = LazyHighCharts::HighChart.new('graph') do |f|
      f.title(text: 'Tainingsfortschritt mit Anton Pein')
      f.xAxis(categories: %w(07.04.2015 09.06.2015 24.04.2015 27.12.2015 28.01.2016))
      f.series(name: 'Highscore', yAxis: 0, data: [s1.cell(43,6), s2.cell(43,6), s3.cell(43,6), s4.cell(43,6), s5.cell(43,6)])
      # f.series(name: "Population in Millions", yAxis: 1, data: [310, 127, 1340, 81, 65])

      f.yAxis [
        {title: {text: "", margin: 70} },
        # {title: {text: "Population in Millions"}, opposite: true},
      ]

      f.legend(align: 'right', verticalAlign: 'top', y: 75, x: -50, layout: 'vertical')
      f.chart({defaultSeriesType: "column"})
    end
  end
end
